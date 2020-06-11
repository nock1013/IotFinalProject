package exam;

import java.io.BufferedInputStream;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.TooManyListenersException;

import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.UnsupportedCommOperationException;

//아두이노
public class SerialSensorControl {
	SerialConnect serialConnect;
	OutputStream out;
	PrintWriter pw;
	public SerialSensorControl() {
		
	}
	public  SerialSensorControl(String portName) {
		//com10:arduino/com13:can//
		//portname=com10
		//arduino serial
		serialConnect = new SerialConnect();
		serialConnect.connect(portName, this.getClass().getName());
		
		SerialPort serialport = (SerialPort)serialConnect.getCommPort();
		try {
			out = serialport.getOutputStream();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		CANReadWriteTest test = new CANReadWriteTest("COM13", this);
		
		SensorListener listener_sensor = new SensorListener(serialConnect.getIn(),test);
		
		try {
			serialport.addEventListener(listener_sensor);
			serialport.notifyOnDataAvailable(true);
		} catch (TooManyListenersException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//out = serialConnect.getOut();
		System.out.println(out);
		
		
		
	}
	public String sendMsg(int msg) {
		System.out.println("###Sensor에 데이터 넘어옴:can->sensor###");
		new Thread(new SensorSerialWrite(msg)).start();
		return "success";
	}
	
	class SensorSerialWrite implements Runnable{
		int data;
		SensorSerialWrite(int msg){
			this.data = msg;
		}
		@Override
		public void run() {
			// TODO Auto-generated method stub
			System.out.println("serialsensor data 64:"+data);
			String outputdata = data+"";
			System.out.println("outputdata"+outputdata);
			pw = new PrintWriter(out,true);
			//out.write(outputdata);
			pw.println(outputdata);
			System.out.println("나 보냈따"+out.toString());
		}
		
	}
	public static void main(String[] args) {
		new SerialSensorControl("COM10");
	}
	public SerialConnect getSerialConnect() {
		return serialConnect;
	}
	public OutputStream getOut() {
		return out;
	}
	
	
}
