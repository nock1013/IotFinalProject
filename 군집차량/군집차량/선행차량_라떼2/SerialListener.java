package exam;
import java.io.BufferedInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;

public class SerialListener implements SerialPortEventListener{
	//BufferedInputStream bis;
	SerialSensorControl arduinoConnect;
	OutputStream os;
	InputStream in;
	PrintWriter pw;

	public SerialListener(InputStream in) {
		this.in = in;
	}
	public SerialListener(InputStream in,SerialSensorControl arduinoConnect) {
		this.arduinoConnect= arduinoConnect;
		this.in = in;
		//os = arduinoConnect.getOut();
	}
	
	@Override
	public void serialEvent(SerialPortEvent event) {
		if(event.getEventType()==SerialPortEvent.DATA_AVAILABLE) {
			
			System.out.println("###Can으로 데이터 들어옴:can->can###");
	    	System.out.println("data available!!!!!!!serialListener!");
	        byte[] buffer = new byte[1024];
			int len = -1;
			String data_temp;
			String data_te;
			String result="";
			int temp = 0;
			try {
		
				if((len=this.in.read(buffer))>-1) {
					data_te = new String(buffer);
					System.out.println("line44");
					System.out.println("data_te"+data_te);
					if(data_te.startsWith(":U28")) {
						System.out.println("line46");
						System.out.println(data_te);
						data_te = data_te.trim();
						data_temp = data_te.substring(data_te.length()-18,data_te.length()-2);
						temp = Integer.parseInt(data_temp,16);
						System.out.println("캔데이터 정제 성공! :"+temp);
						if(temp==2007) {
							System.out.println("if문 안에 temp"+temp);
							System.out.println("if문으로 들어왓음!");
							//System.out.println("arduinoConnect:"+arduinoConnect);
							result = arduinoConnect.sendMsg(temp);
							System.out.println("result"+result);
							System.out.println("다음!");
							System.out.println("데이터 아두이노로 넘길예정 : "+temp);
						}else if(temp==2006) {
							result = arduinoConnect.sendMsg(temp);
							System.out.println("result"+result);
						}else if(temp==5005) {
							result = arduinoConnect.sendMsg(temp);
							System.out.println("result"+result);
						}else if(temp==5004) {
							result = arduinoConnect.sendMsg(temp);
							System.out.println("result"+result);
						}else {
							result = arduinoConnect.sendMsg(temp);
							System.out.println("result"+result);
						}
					//System.out.println("반대편 라떼로부터 전송된  데이터22 -->"+temp);
				    //os.write(temp);
					//System.out.println("###Sensor에 데이터 쓰기:can->sensor###");
				    //arduinoConnect.sendMsg(temp+"");
				   
				    
					}
				    
				}
			}catch (Exception e) {
				// TODO: handle exception
			}
		}
	}
}

	

