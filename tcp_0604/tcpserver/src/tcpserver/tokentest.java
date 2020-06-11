package tcpserver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

public class tokentest {

	public static void main(String[] args) {
		/*
		HashMap<String,String> userlist = new HashMap<>();
		HashMap<String,String> carlist = new HashMap<>();
		HashMap<String,String> checklist = new HashMap<>();
		
		userlist.put("1","a");
		userlist.put("2","b");
		userlist.put("3","c");
		
		checklist = userlist;
		
		checklist.put("4", "d");
		if(!check("4",checklist)) {
			System.out.println("in if");
		}
		*/
		ArrayList<String> arr = new ArrayList<>();
		for(int i = 0;i<3;i++) {			
			arr.add(i+"");
		}
		
		for(String str : arr) {
			System.out.println(str);
		}
		
		System.out.println("arr : "+arr.toString());
//		arr.set(1,"b");
		
		
		/*String str = "a/b/c/d/e:f/g:h/i:j";
		StringTokenizer st = new StringTokenizer(str, "/");
		ArrayList<String> strlist = new ArrayList<>();
		System.out.println(st.nextToken());
		System.out.println(st.nextToken());
		System.out.println(st.nextToken());
		System.out.println(st.nextToken());
		if(st.hasMoreTokens()) {
			System.out.println("count token: "+st.countTokens());
		}
		while(st.hasMoreTokens()) {
			strlist.add(st.nextToken());
			
		}
		
		for(String string:strlist) {
			System.out.println(string);
		}
		
		
		while(st.hasMoreTokens()) {
			System.out.println(st.nextToken());
		}*/
	}

	public static boolean check(String id, HashMap<String, String> list) {
		boolean result = false;//기존 사용자가 없음
		if(list.get(id)!=null) {	//기존 사용자가 있음
			result = true;
		}
		System.out.println("check result:"+result);
		return result;
	}
}
