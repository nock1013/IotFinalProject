package can.exam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;

public class CarClient {
	InputStream is;
	InputStreamReader isr;
	BufferedReader br;
	Socket socket;
	OutputStream os;
	PrintWriter pw;
	CANReadWriteTest canReadWriteTest;
	SerialSensorControl sensor;
	StringTokenizer st;
	StringTokenizer st2;
	public CarClient() {
		try {
			socket = new Socket("70.12.116.59",12345);
			canReadWriteTest = new CANReadWriteTest("COM10",this);
			sensor = new SerialSensorControl("COM7",this);
			
			if(socket!=null) {
				ioWork();
			}
			
			//TCP로부터 데이터 넘겨받기
			Thread t1 = new Thread(new Runnable() {
				@Override
				public void run() {
					String msg;
					try {
						while(true) {
							msg = br.readLine();
							System.out.println("처음 데이터 : "+msg);
							if(msg.startsWith("action")) {
								String[] div = msg.split("/");
								System.out.println("action 뒤의 데이터 : "+div[1]);
								if(div[1].startsWith("dis")) {
									String[] dis = div[1].split(":");
									System.out.println("TCP/거리는 ? -->"+dis[1]);
									String dis_out = dis[1];
									sensor.send_arduino(dis_out);
								}
								else if(div[1].startsWith("vel")) {
									String[] vel = div[1].split(":");
									System.out.println("TCP/속도는 ? -->"+vel[1]);
									String vel_out = vel[1];
									sensor.send_arduino(vel_out);
								}
								else {
									String[] temp = div[1].split(":");
									System.out.println("TCP/온도는 ? -->"+temp[1]);
									String temp_out = temp[1];
									canReadWriteTest.send_can(temp_out);
								}
							}
							else if(msg.startsWith("door")) {
								String[] door_state = msg.split("/");
								System.out.println("TCP/문 상태 ? -->"+door_state[1]);
								if(door_state[1].equals("on")) {
									canReadWriteTest.send_can(5005+"");
								}
								else {
									canReadWriteTest.send_can(5004+"");
								}
							}
							else if(msg.startsWith("engine")) {
								String[] engine_state = msg.split("/");
								System.out.println("TCP/엔진 상태 ? -->"+engine_state[1]);
								if(engine_state[1].equals("on")) {
									canReadWriteTest.send_can(2007+"");
								}
								else {
									canReadWriteTest.send_can(2006+"");
								}
							}
						}
					} catch (IOException e) {
						try {
							is.close();
							isr.close();
							br.close();
							os.close();
							pw.close();
							socket.close();
						} catch (IOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
					}
				}
			});
			t1.start();
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//TCP로 보내는 쓰레드 실행
		new Thread(new SendTcpThread()).start();
	}

	public void send_tcp(String msg_out) {
		new Thread(new SendTcpThread(msg_out)).start();
	}
	class SendTcpThread implements Runnable{
		String msg_out;
		SendTcpThread(){

		}
		SendTcpThread(String msg_out){
			this.msg_out = msg_out;
		}
		@Override
		public void run() {
				String data = msg_out;
				System.out.println("CarClient -> TCP 준비완료 : "+data);
				pw.println(data);
				//pw.println(data);
				pw.flush();
		}
	}
	
	void ioWork() {
		try {
			is = socket.getInputStream();
			isr = new InputStreamReader(is);
			br = new BufferedReader(isr);
			
			os = socket.getOutputStream();
			pw = new PrintWriter(os,true);
			pw.println("car/100나7500");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
/*	
	public String filteringMsg(String msg) {
		String msg_to_can = null;
		st = new StringTokenizer(msg,"/");
		String protocol = st.nextToken();
		if(msg.startsWith("action")) {
			
		}
		
		if(protocol.equals("action")) {
			String action_msg = st.nextToken();
			if(action_msg.equals("temp")) {
				st2 = new StringTokenizer(action_msg,":");
				msg_to_can = st2.nextToken();
				System.out.println("TCP 온도 데이터 : "+msg_to_can);
			}
			else if(action_msg.equals("distance")) {
				st2 = new StringTokenizer(action_msg,":");
				msg_to_can = st2.nextToken();
				System.out.println("TCP 거리 데이터 : "+msg_to_can);
			}
			else if(action_msg.equals("velocity")) {
				st2 = new StringTokenizer(action_msg,":");
				msg_to_can = st2.nextToken();
				System.out.println("TCP 속도 데이터 : "+msg_to_can);
			}
		}else {
			if(protocol.equals("door")) {
				String door = st.nextToken();
				if(door.equals("on")) {
					msg_to_can = 1005+"";
					System.out.println("TCP 문열림 : "+msg_to_can);
				}
				else {
					msg_to_can = 1004+"";
					System.out.println("TCP 문닫힘 : "+msg_to_can);
				}
			}
			else if(protocol.equals("engine")) {
				String engine = st.nextToken();
				if(engine.equals("on")) {
					msg_to_can = 2007+"";
					System.out.println("TCP 시동on : "+msg_to_can);
				}
				else {
					msg_to_can = 2006+"";
					System.out.println("TCP 시동off : "+msg_to_can);
				}
			}
		}
		return msg_to_can;
	}
	*/
	public static void main(String[] args) {
		CarClient carClient = new CarClient();
	
	}
	/*public OutputStream getOs() {
		return os;
	}*/
	
}
