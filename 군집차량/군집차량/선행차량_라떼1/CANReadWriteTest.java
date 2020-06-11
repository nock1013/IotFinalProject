package can.exam;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.TooManyListenersException;

import gnu.io.SerialPort;
import gnu.io.SerialPortEventListener;

public class CANReadWriteTest {
	SerialConnectExam serialConnect;//CAN시리얼포트 연결
	OutputStream out;//CAN과 output통신할 스트림
	SerialListener serialListener;
	SensorListener sensorListener;
	Socket socket;
	InputStream in;
	InputStreamReader ir;
	BufferedReader br;
	PrintWriter pw;
	CarClient carClient;
	
	public CANReadWriteTest(String portname, CarClient carclient) { 
		this.carClient = carclient;
		
		//시리얼통신을 위해 연결
		serialConnect = new SerialConnectExam();
		serialConnect.connect(portname, this.getClass().getName());
	
		//input, output작업을 하기 위해 리스너를 port에 연결
		SerialPort commport = 
				(SerialPort)serialConnect.getCommPort();
	
		serialListener = 
				new SerialListener(serialConnect.getIn(),carClient);
		
		try {
			
			commport.addEventListener(serialListener);
			commport.notifyOnDataAvailable(true);
		} catch (TooManyListenersException e) {
			e.printStackTrace();
		}
		
		out = serialConnect.getOut();
		
		//처음 CAN통신을 위한 준비 작업을 할때는 수신가능한 메시지를 보낼 수 있도록
		new Thread(new CANWriteThread()).start();
	}
	
	public void send_can(String msg) {
		new Thread(new CANWriteThread(msg)).start();
	}
	
	class CANWriteThread implements Runnable{
		String data;//송신할 데이터를 저장할 변수
		
		
		CANWriteThread(){  //--------------------처음에 수신가능 설정
			this.data = ":G11A9\r";
		}
		CANWriteThread(String msg){//------------메시지 보낼때마다 사용
			this.data = convert_data(msg);
			
		}
		//msg = msg의 id + 데이터
		public String convert_data(String msg) {
			String id = "00000001";//송신할 메시지의 구분id
			String data = msg;//송신할 데이터
			System.out.println("CarClient로부터 넘긴 데이터 : "+data);
			data = Integer.toHexString(Integer.parseInt(data));
			String zero = "0";
			for(int i=1;i<16-data.length();i++) {
				zero +="0";
			}
			data = zero+data;
			msg = id+data;
			msg = msg.toUpperCase();//메시지를 대문자로 변환
			msg = "W28"+msg; //송신데이터의 구분기호를 추가
			
			//체크섬 생성
			char[] data_arr = msg.toCharArray();
			int sum=0;
			for (int i = 0; i < data_arr.length; i++) {
				sum = sum+data_arr[i];
			}
			sum = (sum & 0xff);
			System.out.println(Integer.toHexString(sum));
			
			//보낼 메시지를 최종 완성
			String result = ":"+msg+Integer.toHexString(sum)+"\r";
			return result;
		}
		@Override
		public void run() {
			byte[] outputdata = data.getBytes();
			try {
				out.write(outputdata);
				System.out.println("CANReadWriteTest --> CAN발사");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}


	/*public SerialConnectExam getSerialConnect() {
		return serialConnect;
	}*/

	/*public OutputStream getOut() {
		return out;
	}
	*/

}
