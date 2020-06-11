package exam;

import java.io.IOException;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.util.TooManyListenersException;

import gnu.io.SerialPort;
import gnu.io.SerialPortEventListener;

public class CANReadWriteTest {
	SerialConnect serialConnect;//CAN시리얼포트 연결
	OutputStream out;//CAN과 output통신할 스트림
	OutputStream outFromsensor;
	SerialSensorControl sensor;
	SerialListener listener;
	public CANReadWriteTest(String portname,SerialSensorControl controlsensor) { 
		//시리얼통신을 위해 연결
		serialConnect = new SerialConnect();
		System.out.println(this.getClass().getName());
		System.out.println(portname);
		serialConnect.connect(portname, this.getClass().getName());
		this.sensor = controlsensor;
		//input, output작업을 하기 위해 리스너를 port에 연결
		SerialPort commport = 
				(SerialPort)serialConnect.getCommPort();
		
		
		listener = new SerialListener(serialConnect.getBis(),sensor);
		//new SerialListener(serialConnect.getBis());
		//
		try {
			
			commport.addEventListener(listener);
			commport.notifyOnDataAvailable(true);
		} catch (TooManyListenersException e) {
			e.printStackTrace();
		}
		//output스트림 얻기
		out = serialConnect.getOut();
		
		//System.out.println(out.toString());
			
		//처음 CAN통신을 위한 준비 작업을 할때는 수신가능한 메시지를 보낼 수 있도록
		new Thread(new CANWriteThread()).start();
	}//end 생성자
	
	public void send(String msg) {
		new Thread(new CANWriteThread(msg)).start();
	}
	
	
	class CANWriteThread implements Runnable{
		String data;//송신할 데이터를 저장할 변수
		
		
		CANWriteThread(){  //--------------------처음에 수신가능 설정
			this.data = ":G11A9\r";
		}
		CANWriteThread(String msg){//------------메시지 보낼때마다 사용
			System.out.println("###Can으로 Write:sensorlistener->can###");
			
			this.data = convert_data(msg);
			//System.out.println(this.data);
		}
		//msg = msg의 id + 데이터
		public String convert_data(String msg) {
			String id = "00000000";//송신할 메시지의 구분id
			String data = msg;//송신할 데이터
			//System.out.println("수신한 데이터 : "+data);
			data = data.trim();
			data = Integer.toHexString(Integer.parseInt(data));
	        //System.out.println("헥사변환 : "+data);
			
			String zero = "0";
	           for(int i=1;i<16-data.length();i++) {
	        	   zero +="0";
	           }
	           data = zero+data;
	            
			msg = id+data;
			msg = msg.toUpperCase();//메시지를 대문자로 변환
			msg = "W28"+msg; //송신데이터의 구분기호를 추가
			//msg W28 00000000 0000000000000000
			//데이터프레임에 대한 체크섬을 생성 - 앞뒤문자 빼고 나머지를 더한 후 
			//oxff로 &연산
			char[] data_arr = msg.toCharArray();
			int sum=0;
			for (int i = 0; i < data_arr.length; i++) {
				sum = sum+data_arr[i];
			}
			sum = (sum & 0xff);
			//System.out.println(Integer.toHexString(sum));
			
			
			
			//보낼 메시지를 최종 완성
			String msg_result = ":"+
						msg+ 
						Integer.toHexString(sum)
						+"\r";
		//	System.out.println("최종메세지 ->"+msg_result);
			
			return msg_result;
		}
		
		@Override
		public void run() {
			byte[] outputdata = data.getBytes();
			System.out.println("라떼야 CAN-CAN발사해라");
			try {
				System.out.println("###can에 데이터 write:can->can###");
				out.write(outputdata);
				System.out.println("라떼야 CAN-CAN발사해라");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	//데이터 받는 스레드
/*	public void read(String msg) {
		new Thread(new CANReadThread(msg)).start();
	}
	
	class CANReadThread implements Runnable{
		String data;//수신할 데이터를 저장할 변수
		
		
		CANReadThread(){  //--------------------처음에 수신가능 설정
			this.data = ":G11A8\r";
		}
		CANReadThread(String msg){//------------메시지 받을때마다 사용
			this.data = convert_data(msg);
			//System.out.println(this.data);
		}
		//msg = msg의 id + 데이터
		public String convert_data(String msg) {
			String id = "00000001";//수신할 메시지의 구분id
			String data = result;//수신할 데이터
			msg = id+data;
			msg = msg.toUpperCase();//메시지를 대문자로 변환
			msg = "U28"+msg; //수신데이터의 구분기호를 추가
			//msg W28 00000000 0000000000000000
			//데이터프레임에 대한 체크섬을 생성 - 앞뒤문자 빼고 나머지를 더한 후 
			//oxff로 &연산
			char[] data_arr = msg.toCharArray();
			int sum=0;
			for (int i = 0; i < data_arr.length; i++) {
				sum = sum+data_arr[i];
			}
			sum = (sum & 0xff);
			System.out.println(Integer.toHexString(sum));//구동제어 관련 : 1.05/84 --> b9
			
			
			
			//보낼 메시지를 최종 완성
			String result = ":"+
						msg+ 
						Integer.toHexString(sum)
						+"\r";
			System.out.println(result);
			
			return result;
		}
		@Override
		public void run() {
			byte[] outputdata = data.getBytes();
			try {
				out.write(outputdata);
				System.out.println("라떼야 CAN-CAN발사해라");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}*/
	
	
	/*public static void main(String[] args) {
		System.out.println("??????????????");
	//String id = "00000000";//송신할 메시지의 구분id
	//String data = "0000000000000000";//송신할 데이터
		//String msg = id+data;
		System.out.println("canReadwrite메인 실행");
		CANReadWriteTest canObj = new CANReadWriteTest("COM10");
		//canObj.send(msg);
	//System.out.println(msg);
	}*/

	public SerialConnect getSerialConnect() {
		return serialConnect;
	}

	public OutputStream getOut() {
		return out;
	}
	

}
