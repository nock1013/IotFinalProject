package can.exam;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.TooManyListenersException;

import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.SerialPortEventListener;
import gnu.io.UnsupportedCommOperationException;


//시리얼 통신을 담당하는 객체
public class SerialConnectExam{
	InputStream in;
	BufferedInputStream bis;
	OutputStream out;
	CommPort commPort;
	

	public void connect(String portName,String appName) {
		try {
			//COM포트가 실제 존재하고 사용가능한 상태인지 확인
			CommPortIdentifier commPortIdentifier = 
					CommPortIdentifier.getPortIdentifier(portName);
			if(commPortIdentifier.isCurrentlyOwned()){
				System.out.println("포트 사용 불가");
			}else {
				System.out.println("포트 사용 가능");
				//port가 사용 가능하면 포트를 열고 포트 객체를 얻어오기
				//매개변수1 : 포트를 열고 사용하는 프로그램의 이름(문자열)
				//매개변수2 : 포트를 열고 통신하기 위해서 기다리는 시간(밀리세컨드)
				
				commPort = commPortIdentifier.open(appName,5000);
				if(commPort instanceof SerialPort) {
					//System.out.println("SerialPort:SerialConnect");
					SerialPort serialPort = (SerialPort)commPort;
					serialPort.setSerialPortParams(38400, SerialPort.DATABITS_8,
									SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);
					in = serialPort.getInputStream();
					bis  = new BufferedInputStream(in);
					out = serialPort.getOutputStream();
					
					/*SerialListener listener = new SerialListener(in);
					try {
						serialPort.addEventListener(listener);
						serialPort.notifyOnDataAvailable(true);
					} catch (TooManyListenersException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}*/
					
			}
			}
		}catch (NoSuchPortException | PortInUseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedCommOperationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public BufferedInputStream getBis() {
		return bis;
	}
	public OutputStream getOut() {
		return out;
	}
	public CommPort getCommPort() {
		return commPort;
	}
	public InputStream getIn() {
		return in;
	}
	
	
}
