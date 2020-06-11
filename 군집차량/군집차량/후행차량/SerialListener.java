package can.exam;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;

import javax.xml.bind.DatatypeConverter;

import can.basic.SerialConnect;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;

public class SerialListener implements SerialPortEventListener{
	BufferedInputStream bis;
	CarClient carClient;
	PrintWriter pw;
	OutputStream os;
	InputStream in;
	//int temp;
	Socket socket;
	BufferedReader br;
	InputStreamReader ir;
	SerialSensorControl sensor;


	public SerialListener(InputStream in) {
		this.in = in;
	}
	public SerialListener(InputStream in,CarClient carClient) {
		this.in = in;
		this.carClient= carClient;
	}
	
	@Override
	public void serialEvent(SerialPortEvent event) {
		  
	      if(event.getEventType()==SerialPortEvent.DATA_AVAILABLE) {
	        byte[] buffer = new byte[128];
			int len = -1;
		
			String data_temp;
			String data_te;
			String result="";
			int temp = 0;
		
			try {
				if((len=this.in.read(buffer))>-1) {
					data_te = new String(buffer);
					data_te = data_te.trim();
					if(data_te.startsWith(":U28")) {
						data_temp = data_te.substring(data_te.length()-18,data_te.length()-2);
						temp = Integer.parseInt(data_temp,16);
						System.out.println("반대편 라떼로부터 전송된  데이터 -->"+temp);
						if(temp==0) {
							result ="flame:OFF";
						}else if(temp==1) {
							result ="flame:ON";
						}else if(temp==2) {
							result = "gas:비정상";
						}else if(temp==3) {
							result = "gas:정상";
						}else {
							result = "temperature:"+temp;
						}	
					}
					System.out.println("result가 빠져나온다.");
					carClient.send_tcp(result);
				
				}

	      } catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      }
	   }
	
	/*public OutputStream getOs() {
		return os;
	}
	*/

}
