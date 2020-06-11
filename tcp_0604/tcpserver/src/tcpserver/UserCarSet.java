package tcpserver;

import java.util.ArrayList;

public class UserCarSet {
	User android;	// 로그인시
	User controller;	// 차량 로그인시
	User display;	// 차량 로그인시
	ArrayList<User> carlist;	// 차량 선택시
	
	public UserCarSet() {	
	}
	
	public UserCarSet(User user) {
		super();
		this.android = user;
	}

	public User getAndroid() {
		return android;
	}

	public void setAndroid(User android) {
		this.android = android;
	}

	public User getController() {
		return controller;
	}

	public void setController(User controller) {
		this.controller = controller;
	}

	public User getDisplay() {
		return display;
	}

	public void setDisplay(User display) {
		this.display = display;
	}

	public ArrayList<User> getCarlist() {
		return carlist;
	}

	public void setCarlist(ArrayList<User> carlist) {
		this.carlist = carlist;
	}

	@Override
	public String toString() {
		String returnString = "android = " + android.userid+"\t";
		if(controller!=null) {
			returnString += "controller = " + controller.userid +"\t";
		}if(display!=null) {
			returnString += "display = " + display.userid + "\t";
		}
		if(carlist!=null) {
			for(int i = 0;i < carlist.size();i++) {
				returnString += i+"번 car: "+ carlist.get(i).userid+"\t";
			}
		}
		
		return returnString;
	}
	
	
}
