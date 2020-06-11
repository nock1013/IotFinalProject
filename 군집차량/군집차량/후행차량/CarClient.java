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
	SerialSensorControl sensor;
	StringTokenizer st;
	StringTokenizer st2;
	public CarClient() {
		try {
			socket = new Socket("70.12.116.59",12345);
			sensor = new SerialSensorControl("COM5",this);
			
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
								String[] div = msg.split("/");
								System.out.println("action 뒤의 데이터 : "+div[1]);
								if(div[1].startsWith("dis")) {
									String[] dis = div[1].split(":");
									System.out.println("TCP/거리는 ? -->"+dis[1]);
									String dis_split = dis[1];
									int dis_int = Integer.parseInt(dis_split)+1000;
									String dis_out = dis_int+"";
									sensor.send_arduino(dis_out);
								}
								else if(div[1].startsWith("vel")) {
									String[] vel = div[1].split(":");
									System.out.println("TCP/속도는 ? -->"+vel[1]);
									String vel_split = vel[1];
									int vel_int = Integer.parseInt(vel_split)+2000;
									String vel_out = vel_int+"";
									sensor.send_arduino(vel_out);
								}
								else {
									String[] temp = div[1].split(":");
									System.out.println("TCP/온도는 ? -->"+temp[1]);
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
			pw.println("car/123가4568");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		CarClient carClient = new CarClient();
	
	}
}
