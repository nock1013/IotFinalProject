package tcpserver;
import java.awt.EventQueue;
import java.awt.Font;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URL;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.border.EmptyBorder;


public class ServerView extends JFrame {
	 JPanel contentPane;
	 JTextArea taclientlist;
	 JButton btnchangeport;
	 JButton btnstartServer;
	 JButton btnstop;
	 //OutputStream os;//시리얼통신에서 아두이노로 데이터를 내보내기 위한 스트림
	 InputStream is;
	 InputStreamReader ir;
	 BufferedReader br;//클라이언트의 메시지를 읽는 스트림
	 StringTokenizer st;
	 ServerSocket server;
	 Socket client;
	 String info; //안드로이드 & 차유저 구분 프로토콜
	 //1. ===========클라이언트들의 정보를 저장할 변수 선언==================
	 
	 HashMap<String, User> carlist = new HashMap<>();
	 HashMap<String, User> userlist = new HashMap<>();
	 HashMap<String, User> displaylist = new HashMap<>();
	 HashMap<String, User> controllist = new HashMap<>();
	 Vector<UserCarSet> setlist = new Vector<>();
	 //=========================================================
	 
	 
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ServerView frame = new ServerView();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		new ServerView().connection();
	}
	/**
	 * Create the frame.
	 */
	public ServerView() {
		/*carlist.put("100나7500", new User());
		carlist.put("123가4568", new User());
		carlist.put("246다9000", new User());*/
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 673, 513);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		taclientlist = new JTextArea();
		taclientlist.setBounds(12, 50, 472, 415);
		taclientlist.setFont(new Font("HY견고딕", Font.BOLD, 16));
		
		JScrollPane scroll = new JScrollPane(taclientlist);
		scroll.setBounds(12, 50, 472, 415);
		contentPane.add(scroll);
		
		JLabel label = new JLabel("\uC811\uC18D\uC790:");
		label.setFont(new Font("HY견고딕", Font.BOLD, 14));
		label.setBounds(12, 10, 120, 35);
		contentPane.add(label);
		
		btnchangeport = new JButton("\uD3EC\uD2B8\uBCC0\uACBD");
		btnchangeport.setFont(new Font("HY견고딕", Font.BOLD, 14));
		btnchangeport.setBounds(516, 50, 129, 35);
		contentPane.add(btnchangeport);
		
		btnstartServer = new JButton("\uC11C\uBC84\uC2DC\uC791");
		btnstartServer.setFont(new Font("HY견고딕", Font.BOLD, 14));
		btnstartServer.setBounds(516, 95, 129, 35);
		contentPane.add(btnstartServer);
		
		btnstop = new JButton("\uC11C\uBC84\uC911\uC9C0");
		btnstop.setFont(new Font("HY견고딕", Font.BOLD, 14));
		btnstop.setBounds(516, 140, 129, 35);
		contentPane.add(btnstop);
		
		btnstartServer.addActionListener(new ServerListener(this));
		btnstop.addActionListener(new ServerListener(this));
	}
	public void serverStart(int port) {
		try {
			server = new ServerSocket(port);
			//taclientlist.append("ip:"+client.getInetAddress().getHostAddress());
			taclientlist.append("사용자 접속 대기중\n");
			if(server!=null) {
				//클라이언트의 접속을 기다리는 처리
				connection();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void connection() {
		Thread thread = new Thread(new Runnable() {
			@Override
			public void run() {
				while(true) {
					try {
						if(server != null) {
							client = server.accept();
							String ip = client.getInetAddress().getHostAddress();
							User user = new User(client,userlist,carlist, controllist, displaylist,ServerView.this,info,ip, setlist);	
							user.start();
						}
					} catch (IOException e) {
						e.printStackTrace();
					}
				}//end while
			}
		});
		thread.start();
	}
}
