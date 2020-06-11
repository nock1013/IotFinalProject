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
   //CANReadWriteTest canConnect;
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
         try {
            byte[] buffer = new byte[1024];
            int len = -1;
            String result="";
            len=this.in.read(buffer);
            String msg_buffer = new String(buffer);
            msg_buffer = msg_buffer.trim();
            System.out.println("아두이노에서 넘어온 데이터 : "+msg_buffer);
            String[] data = msg_buffer.split("/");
            System.out.println("배터리 : "+data[0]);
            System.out.println("현재 속도 : "+data[1]);
            
            if(data[0]!=null) {
            	result = "battery:"+data[0];
            	carClient.send_tcp(result);
            	System.out.println("아두이노에서 send한 배터리값 : "+result);
            }
            if(data[1]!=null) {
            	result = "velocity:"+data[1];
            	carClient.send_tcp(result);
            	System.out.println("아두이노에서 send한 속도값 : "+result);
            }
           
           
         } catch (IOException e) {
            e.printStackTrace();
         }
      }
   }
   
}
