package com.gunzip.mandooweb;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
public class ApiExplorer {
	public static String readJson(String beforePoint0, String beforePoint1, String point0, String point1) {
		StringBuilder urlBuilder = new StringBuilder("http://taas.koroad.or.kr/data/rest/road/dgdgr/link"); /*URL*/
		StringBuilder sb = new StringBuilder();
		try {
			urlBuilder.append("?" + URLEncoder.encode("authKey","UTF-8") + "=eG9oYRMJQSmb99MgfQb6zluOiJvPRCQ8kBQt6VUhWp9mXGWEYFKKXD2kRV3GkbiW");
			
			//spareKey
			//0M07Jr4DZAZ4l%2B4DfuVqGzTVGyE3sOJG5edfqEaB%2B8qXOkkrMA6k7%2BF%2BbsLQAxGo
			//urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("인증키 (URL Encode)", "UTF-8")); /*공공데이터포털에서 발급받은 인증키*/
	        urlBuilder.append("&" + URLEncoder.encode("searchLineString","UTF-8") + "=" + URLEncoder.encode("LineString("+beforePoint0+" "+beforePoint1+", "+point0+" "+point1+")", "UTF-8")); /*링크경로(EPSG 4326)*/
	        urlBuilder.append("&" + URLEncoder.encode("vhctyCd","UTF-8") + "=" + URLEncoder.encode("04", "UTF-8")); /*차량종류코드(01:승용차, 02:버스, 03:택시, 04:화물차)*/
	        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*결과형식(xml/json)*/
	        //urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*검색건수*/
	        //urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        //System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	       
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
	        conn.disconnect();
        } catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 어차피 jsp까지 JSON으로 보내야 하므로 파싱 X
        return sb.toString();
	}
	
	
    public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://taas.koroad.or.kr/data/rest/road/dgdgr/link"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("authKey","UTF-8") + "=eG9oYRMJQSmb99MgfQb6zluOiJvPRCQ8kBQt6VUhWp9mXGWEYFKKXD2kRV3GkbiW"); /*Service Key*/
        //urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("인증키 (URL Encode)", "UTF-8")); /*공공데이터포털에서 발급받은 인증키*/
        urlBuilder.append("&" + URLEncoder.encode("searchLineString","UTF-8") + "=" + URLEncoder.encode("LineString(127.04412400143637 37.459197277700852, 127.04275740594987 37.460633596876676)", "UTF-8")); /*링크경로(EPSG 4326)*/
        urlBuilder.append("&" + URLEncoder.encode("vhctyCd","UTF-8") + "=" + URLEncoder.encode("04", "UTF-8")); /*차량종류코드(01:승용차, 02:버스, 03:택시, 04:화물차)*/
        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*결과형식(xml/json)*/
        //urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*검색건수*/
        //urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        // 어차피 jsp까지 JSON으로 보내야 하므로 파싱 X
        String score_json = sb.toString();
        System.out.println(score_json);
        Pattern p = Pattern.compile("anals_value.*}]}");
		Matcher m = p.matcher(score_json);
		
		String data = null;
		if (m.find()) {
			data = m.group(); //패턴과 일치하는 단어
			System.out.println(data);
		}
		String[] result = data.split(",");
		for (int i = 0; i < result.length; i++) {
			// 앞에서 :"부분까지 지우기, 뒤에 "부터 지우기
			int idx = result[i].indexOf(":");
			result[i] = result[i].substring(idx).replaceAll(":|\"|}|]", "");
			System.out.println(result[i]);
		}
		
    }
}