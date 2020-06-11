package exam;


import java.io.IOException;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;

public class SensorListener implements SerialPortEventListener{
   private InputStream in;
   PrintWriter pw;
   OutputStream os;
   CANReadWriteTest canConnect;
   public SensorListener(InputStream in) {
      super();
      this.in = in;
     
   }
   public SensorListener(InputStream in,CANReadWriteTest canConnect) {
	   this.canConnect = canConnect;
	   this.in = in;
	   //os = canConnect.getOut();
   }
   
   @Override
   public void serialEvent(SerialPortEvent event) {
      if(event.getEventType()==SerialPortEvent.DATA_AVAILABLE) {
         try {
        	// System.out.println("###Sensor에서 데이터 넘어옴:arduino->sensorlistener###");
            byte[] buffer = new byte[1024];
            int len = -1;
           /*while((len=this.in.read(buffer))>-1) {
               System.out.println(new String(buffer));
            }*/
            len=this.in.read(buffer);
           
           String msg_buffer = new String(buffer);
           msg_buffer = msg_buffer.trim();
        ///   System.out.println("온도센서 : "+msg_buffer);
		
           canConnect.send(msg_buffer);
           
          /* if(os!=null) {
        	   if()
           }*/
           //pw = new PrintWriter(os,true);
         } catch (IOException e) {
            e.printStackTrace();
         }
      }
   }
	public OutputStream getOs() {
		return os;
	}
   
}
