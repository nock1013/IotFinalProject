package can.exam;

import java.io.BufferedInputStream;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.TooManyListenersException;

import can.basic.CANConnect;
import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.UnsupportedCommOperationException;

public class SerialSensorControl {
	SerialConnectExam serialConnect;
	OutputStream out;
	Socket socket;
	CarClient carClient;
	PrintWriter pw;
	public SerialSensorControl() {
		
	}
	public SerialSensorControl(String portName,CarClient carClient) {
		this.carClient = carClient;
		
		serialConnect = new SerialConnectExam();
		serialConnect.connect(portName, this.getClass().getName());
		
		SerialPort serialport = (SerialPort)serialConnect.getCommPort();
		
		try {
			out = serialport.getOutputStream();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		SensorListener listener_sensor = new SensorListener(serialConnect.getIn(),carClient);
		
		try {
			serialport.addEventListener(listener_sensor);
			serialport.notifyOnDataAvailable(true);
		} catch (TooManyListenersException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//out = serialConnect.getOut();
		
		new Thread(new ArduinoThread()).start();

	}
	public void send_arduino(String msg) {
		new Thread(new ArduinoThread(msg)).start();
	}
	
	class ArduinoThread implements Runnable{
		String data;
		ArduinoThread(){
			this.data = "TCP --> 아두이노 준비";
		}
		ArduinoThread(String msg){
			this.data = msg;
		}
		@Override
		public void run() {
			System.out.println("TCP --> SensorControl 데이터 : "+data);
			//받은 데이터 정제하기
			String outputdata = data;
				pw = new PrintWriter(out,true);
				pw.println(outputdata);
				System.out.println("SensorControl --> Arduino 발사");
			}
		}

	public SerialConnectExam getSerialConnect() {
		return serialConnect;
	}
//	public OutputStream getOut() {
//		return out;
//	}
	
	
}
