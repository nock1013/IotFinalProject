package tcpserver;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.Vector;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.util.JSONPObject;

//TCP서버쪽에 클라이언트의 요청을 계속 읽는 쓰레드
public class User extends Thread{
	Socket client;
	BufferedReader br;//클라이언트의 메시지를 읽는 스트림
	PrintWriter pw; //클라이언트에게 메시지를 전달하는 스트림
	ServerView serverView;
	//SerialAduinoLEDControl serialObj;//시리얼통신을 위한 객체
	OutputStream os;//시리얼통신에서 아두이노로 데이터를 내보내기 위한 스트림
	InputStream is;
	InputStreamReader ir;
	HashMap<String, User> carlist;
	HashMap<String, User> userlist;
	HashMap<String, User> displaylist;
	HashMap<String, User> controllist;
	StringTokenizer st;
	String userid;	//car:carnum/user:userid
	String type;	//car/android/display_tab/control_tab
	String info;// 안드로이드 & 차 리스트 유저 구분
	String ip;
	
	Vector<UserCarSet> setlist;
	

	public User() {
		
	}
	public User(Socket client,HashMap<String, User> userlist,HashMap<String, User> carlist,HashMap<String, User> controllist,HashMap<String, User> displaylist,ServerView serverView,String info,String ip, Vector<UserCarSet> setlist) {	
		this.client = client;
		this.userlist = userlist;
		this.serverView = serverView;
		this.carlist = carlist;
		this.controllist = controllist;
		this.displaylist = displaylist;		
		this.info = info;
		this.ip = ip;
		this.setlist = setlist;
		ioWork();
	} 
	public void ioWork() { //처음 접속했을 때 한 번 실행되는 메소드
		try {
			System.out.println("iowork()");
			is = client.getInputStream();
			ir = new InputStreamReader(is);
			br = new BufferedReader(ir);
			
			os = client.getOutputStream();
			pw = new PrintWriter(os,true);
			
			info = br.readLine();	//	phone->server : android/{user_id}/carlist/{car_num}:{car_order}/{car_num}:{car_order}/....
									// tablet-diplay->server : display_tab/{user_id}
									//		 -controller->server: control_tab/{user_id}
									// car->server: car/{carnum} 
			System.out.println("here"+info);
			st = new StringTokenizer(info,"/");
			
			type = st.nextToken();	//android
			userid = st.nextToken();	//{userid}
			
			serverView.taclientlist.append("[MSG]type:"+type+"\tuserid:"+userid+"\n");
			
			// 휴대폰
			if(type.equals("android")) {	//	android/{user_id}/carlist/{car_num}:{car_order}/{car_num}:{car_order}/....
				System.out.println("android");
				//check(userlist, userid);
				userlist.put(userid, this);
				// this : android
				UserCarSet set = new UserCarSet(this);
				// UserCarSet 설정
				if(st.hasMoreTokens()) {
					if(st.nextToken().equals("carlist")) {
						ArrayList<User> usercarlist = new ArrayList<>();
						int size = st.countTokens();
						while(size>0) {	// 차 대수 만큼 arraylist 크기 초기화
							usercarlist.add(new User());
							size--;
						}
						System.out.println("usercarlist"+usercarlist.toString());
						while(st.hasMoreTokens()) {	//	{car_num}:{car_order}
							String[] arr =st.nextToken().split(":");
							System.out.println("arr[1]:"+Integer.parseInt(arr[1])+"arr[0]:"+arr[0]);
							System.out.println("index:"+Integer.parseInt(arr[1])+"value:"+carlist.get(arr[0]));
							usercarlist.set(Integer.parseInt(arr[1]), carlist.get(arr[0])); // 순서대로 array에 사용 차 추가							
						}
						for(User car:usercarlist) {	//userid가 carnum인 display, controller 등록
							System.out.println("displaylist size 108: "+displaylist.size());
							if(displaylist.containsKey(car.userid)) {								
								set.setDisplay(displaylist.get(car.userid));
								System.out.println("display set");
								break;
							}else {
								System.out.println("no display");
							}
							//System.out.println();
							/*if(controllist.containsKey(car.userid)) {								
								set.setController(controllist.get(car.userid));							
								System.out.println("control set");
							}else {
								System.out.println("no control");
							}*/
						
						}
						if(usercarlist.size()>0) {	// user-carlist setting
							set.setCarlist(usercarlist);
							System.out.println("carlistAdded"+set.getCarlist().toString());
						}
					}
				}
				/*if(setlist==null) {
					System.out.println("initialize setlist");
					setlist = new Vector<UserCarSet>();
				}*/
				setlist.add(set);
				//System.out.println("setlist:"+setlist.toString());
				
			}else if(type.equals("display_tab")) {	//	display_tab/{user_id}
				System.out.println("display_tab");
				displaylist.put(userid, this);
				System.out.println("display/userid:"+userid+"/thread:"+this);
				sendMsg("msg/success");
			}else if(type.equals("control_tab")) {	//	control_tab/{carnum}
				System.out.println("control_tab");
				controllist.put(userid, this);
				for(UserCarSet set:setlist){
					if((set.getDisplay().userid).equals(userid)){													
						set.setController(this);							
						System.out.println("control set");	
						String loginMsg="login/";
						for(int i =0;i<set.carlist.size();i++) {
							loginMsg+=set.getCarlist().get(i).userid+":"+i+"/";
						}
						set.getDisplay().sendMsg(loginMsg);
						this.sendMsg(loginMsg);
					}else{
						System.out.println("no display");
					}
				}				
				
				sendMsg("msg/success");	//output : carlist/{car_num}:{car_num}:...:
			}
			else if(type.equals("car")){	//	car/{carnum} 
				//check(carlist, userid);
				if(carlist.containsKey(userid)) {
					System.out.println("안녕차");
					carlist.replace(userid, this);
				}
				carlist.put(userid, this);
				System.out.println(carlist.toString());
				sendMsg("msg/success");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
/*	private void check(HashMap<String, User> list, String id) {
		boolean checkVal = false;
		//if(list.)
		for(int i=0; i<list.size();i++) {
			if(list.get(i).userid==id) {	// 해당 사용자 명을 가진 데이터 검색 성공
				checkVal = true;
			}
		}
		if(!checkVal) {// 해당 사용자가 없음
			list.put(userid, this);	// 해당 사용자 추가	
		}
	}*/
	private void filteringMsg(String msg) {
		System.out.println("client->server:"+msg);
		
		switch(this.type) {
		case "android":
			androidAction(msg);
			break;
		case "car":
			carAction(msg);
			break;
		case "control_tab":
			tabAction(msg);
			break;
		default:
			System.out.println("no match/User:180");
		}
	}
	// android->server->car 특정 차량에게
	private void androidAction(String msg) {
		// {car_num}/{action}/{value}
		System.out.println("androidAction");
		String[] action = msg.split("/");		
		//action[0]: carnum
		//action[1]: {action}
		//action[2]: {value}
		System.out.println("msg:"+msg);
		if(action[1].equals("temp")) {	// temp
			System.out.println("temperature");
			sendToCar(action[0],"action/"+action[1]+":"+action[2]);					
		}else {		// door, engine, light, 
			System.out.println("door, engine, light");
			sendToCar(action[0],action[1]+"/"+action[2]);		
		}
	}
	
	// car->server->display_tab
	private void carAction(String msg) {
		// {action}:{value}
		sendToTab(msg);
		//WASSend(msg.replace(":", "/"));
	}
	
	// control_tab->server->car
	private void tabAction(String actionType) {
		System.out.println("tabAction");
		//	temperature/{car_num}:{value}/{car_num}:{value}/...
		//	distance/{value}
		//	velocity/{value}
		String[] action = actionType.split("/");
		for (int i = 0; i < action.length; i++) {
			System.out.println(action[i]);
		}
		switch(action[0]) {
		// tab login
		//case "login":
			/*String loginMsg="login/";
			for(UserCarSet set:setlist) {
				if((set.getController().userid).equals(this.userid)) {
					for(int i =0;i<set.carlist.size();i++) {
						loginMsg+=set.getCarlist().get(i).userid+":"+i+"/";
					}
					set.getDisplay().sendMsg(loginMsg);
					this.sendMsg(loginMsg);
				}
			}*/
		//temperature
		case "temperature":
			// 해당 차에만 온도 넘겨주기
			for(int i=1;i<action.length;i++) {
				String[] msg = action[i].split(":");
				sendToCar(msg[0],"action/temp:"+msg[1]);
			}			
			break;
		// distance & velocity
		default:
			sendToAllCar(action[0],action[1]);		
		}		
	}
	// tab이랑 같이 묶여있는 carlist의 모든 car에게 데이터 전송
	private void sendToAllCar(String action, String message) {
		for(UserCarSet set:setlist) {
			if(set.getController().userid.equals(this.userid)) {
				for(User car:set.getCarlist()) {
					System.out.println("User/sendToAllCar:247=> action/"+action+":"+message);
					car.sendMsg("action/"+action+":"+message);
				}
			}
		}
	}
	// 특정 차량한테만 전송
	private void sendToCar(String carnum, String message) {
		// action/temp:20
		System.out.println("User/sendToCar:253=> "+message+"\t to carnum:"+carnum);
		carlist.get(carnum).sendMsg(message);
	}
	
	private void sendToTab(String msg) {
		// 해당 carnum을 가지고 있는 UserCarset의 tab에 데이터 전송
		boolean result = false;
		for(UserCarSet set:setlist) {
			if(set.getCarlist().contains(this)) {
				set.getDisplay().sendMsg(this.userid+"/"+msg);
				result = true;
			}			
		}
		if(!result) {	//조건에 맞는 tab이 없으면
			System.out.println("User/sendToTab:273=> no display tab");
		}
	}
	public void WASSend(String msg) {
		URL url = null;
		String[] list = msg.split("/");
		
        try {
			url = new URL("http://70.12.116.60:8088/gunzip_final/mongo/insert.do");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setRequestProperty("Accept", "application/json");
			
			ObjectMapper mapper = new ObjectMapper();
			String json = "";

			Map<String, Object> map = new HashMap<String, Object>();
			for (int i = 0; i < list.length; i=i+2) {
				if(list[i].equals("car")) {
					map.put("carnum", list[i+1]);
				}else if(list[i].equals("temperature")) {
					map.put("temperature", list[i+1]);
				}else if(list[i].equals("distance")) {
					map.put("distance", list[i+1]);
				}else if(list[i].equals("velocity")) {
					map.put("velocity", list[i+1]);
				}
			}

			json = mapper.writeValueAsString(map);
			System.out.println(json);
			OutputStream os = connection.getOutputStream();
			OutputStreamWriter osw = new OutputStreamWriter(os, "UTF-8");
			osw.write(json);
			osw.flush();
			connection.setConnectTimeout(3000);
			connection.setReadTimeout(3000);
			connection.getResponseCode();
			} catch (IOException e) {
				e.printStackTrace();
		}
		System.out.println("WAS INSERT END");
	}
	
	public void sendMsg(String message) {
		System.out.println("pw msg>>"+message);
		pw.println(message);
	}
	@Override
	public void run() {
		while(true) {
			try {
				String msg;
				if(br.readLine()!=null) {
					msg = br.readLine();
					System.out.println("line 338");
					if(msg!=null&&msg!="") {
						System.out.println("클라이언트가 보낸 메시지(run):"+msg);
						
						filteringMsg(msg);
					}
				}
				
			} catch (IOException e) {
				serverView.taclientlist.append(userid+"클라이언트의 접속이 끊어짐\n");
				try {
					is.close();
					ir.close();
					br.close();
					os.close();
					pw.close();
					client.close();
					switch(this.type) {
					case "android":
						for(UserCarSet set:setlist) {
							if(set.getAndroid()==this) {
								setlist.remove(set);
							}
						}
						userlist.remove(this.userid);
						break;
					case "display_tab":
						displaylist.remove(this.userid);
						break;						
					case "control_tab":
						controllist.remove(this.userid);
						break;						
					case "car":
						carlist.remove(this.userid);
						break;						
					}
										
				} catch (IOException e1) {
				}
				break;
			}
		}	
	}
}
