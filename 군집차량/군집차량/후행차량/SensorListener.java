package can.exam;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;

import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;

public class SensorListener implements SerialPortEventListener{
   private InputStream in;
   PrintWriter pw;
   OutputStream os;
   Socket socket;
   CarClient carClient;
   public SensorListener(InputStream in) {
      super();
      this.in = in;
   }
   public SensorListener(InputStream in, CarClient carClient) {
	      super();
	      this.in = in;
	      this.carClient = carClient;
   }
   
   @Override
   public void serialEvent(SerialPortEvent event) {
      if(event.getEventType()==SerialPortEvent.DATA_AVAILABLE) {
    	  byte[] buffer = new byte[1024];
			int len = -1;
			String data;
			int data_int;
			String result="";
		
			
				try {
					if((len=this.in.read(buffer))>-1) {
						System.out.println("아두이노에서 데이터 넘어오기 시작");
						data = new String(buffer);
						data = data.trim();
						System.out.println("잘라낸 데이터 : "+data);
						data_int = Integer.parseInt(data);
						System.out.println("int형으로 바꾼 데이터 : "+data_int);
						if(data_int==0) {
							result = "crash:"+data_int;
							System.out.println("crash 센서값 : "+result);
						}
						else if(data_int>1 &&data_int<=100) {
							result = "temperature:"+data_int;
							System.out.println("temperature 센서값 : "+result);
						}
						else if(data_int>=1000) {
							int dis = data_int - 1000;
							result = "distance:"+dis;
							System.out.println("distance 센서값 : "+result);
						}
						else if(data_int>=2000) {
							int vel = data_int - 2000;
							result = "velocity:"+vel;
							System.out.println("velocity 센서값 : "+result);
						}
						
						System.out.println("result가 빠져나온다.");
      
						carClient.send_tcp(result);
      
     }
				} catch (NumberFormatException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
   }
   
}
}
