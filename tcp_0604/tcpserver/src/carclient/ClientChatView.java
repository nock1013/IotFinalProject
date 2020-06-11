package carclient;
import java.awt.EventQueue;
import java.awt.Font;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import java.util.Vector;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

public class ClientChatView extends JFrame {

	 JPanel contentPane;
	 JTextField txtinput;
	 JTextArea taChat;
	 JButton btnsend;
	 JList lstconnect;
	 String ip;
	 int port;
	 String nickname;
	 Socket socket;
	 
	 InputStream is;
	 InputStreamReader ir;
	 BufferedReader br;
	 
	 OutputStream os;
	 PrintWriter pw;
	 
	 //2. === 채팅하는 사용자들의 목록을 JList에 추가(nickname)하기 위한 변수=====
	 Vector<String> nicknamelist = new Vector<String>();
	 StringTokenizer st;
	 public ClientChatView(String ip, int port, String nickname) {
		 this.ip = ip;
		 this.port = port;
		 this.nickname = nickname;
		 setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		 setBounds(100, 100, 758, 478);
		 contentPane = new JPanel();
		 contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		 setContentPane(contentPane);
		 contentPane.setLayout(null);
		
		taChat = new JTextArea();
		taChat.setBounds(12, 10, 501, 375);
		//contentPane.add(taChat);
		
		JScrollPane scroll = new JScrollPane(taChat);
		scroll.setBounds(12, 10, 501, 375);
		contentPane.add(scroll);
		
		txtinput = new JTextField();
		txtinput.setBounds(12, 395, 378, 35);
		contentPane.add(txtinput);
		txtinput.setColumns(10);
		
		btnsend = new JButton("\uC11C\uBC84\uB85C\uC804\uC1A1");
		btnsend.setFont(new Font("HY견고딕", Font.BOLD, 14));
		btnsend.setBounds(402, 395, 109, 35);
		contentPane.add(btnsend);
		
		JLabel lblNewLabel = new JLabel("\uC811\uC18D\uC790:");
		lblNewLabel.setFont(new Font("HY견고딕", Font.BOLD, 14));
		lblNewLabel.setBounds(519, 10, 120, 35);
		contentPane.add(lblNewLabel);
		
		lstconnect = new JList();
		lstconnect.setBounds(525, 47, 205, 108);
		contentPane.add(lstconnect);
		//t
		lstconnect.setListData(nicknamelist);
		
		setVisible(true);//화면에 JFrame을 보이도록 설정
		
		ClientChatListener listener = new ClientChatListener(this);
		txtinput.addActionListener(listener);
		btnsend.addActionListener(listener);
		
		connectServer();//서버에 접속
	}
	public void connectServer() {
		try {
			socket = new Socket(ip,port);
			
			if(socket!=null) {
				ioWork();
			}
			sendMsg(nickname);
			nicknamelist.add(nickname);

			Thread receiveThread = new Thread(new Runnable() {
				@Override
				public void run() {
					while(true) {
						String msg = "";
						try {
							msg = br.readLine();
							System.out.println("서버가 전달한 메세지"+msg);
							taChat.append("stranger: "+msg+"\n");
							filteringMsg(msg);
						} catch (IOException e) {
							//e.printStackTrace();
							try {
								//2. 서버에서 연결이 끊어지는 경우 사용자는 자원을 반납
								//자원 반납
								is.close();
								ir.close();
								br.close();
								os.close();
								pw.close();
								socket.close();
								JOptionPane.showMessageDialog(null,"서버와 접속이 끊어짐","알림",JOptionPane.ERROR_MESSAGE);
							} catch (IOException e1) {
								e1.printStackTrace();
							}
							break;
						}
					}
				}
			});
			receiveThread.start();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//9. 서버가 보내오는 데이터를 분석해서 처리하는 메소드를 정의
	private void filteringMsg(String msg) {
		System.out.println("filtermsg:"+msg);
		st = new StringTokenizer(msg,"/");
		//어떤 작업을 했는지를 알 수 있는 keyword new, old, chatting...
		String protocol = st.nextToken();
		String message = st.nextToken();
		System.out.println("프로토콜:"+protocol+",메시지:"+message);
		if(protocol.equals("new")) {
			//새로운 사용자가 접속하면 실행되는 부분
			//nicknamelist에 추가
			nicknamelist.add(message);
			lstconnect.setListData(nicknamelist);
			//클라이언트 창에 메시지 출력
			taChat.append("*****"+message+"님이 입장하셨습니다.****\n");
		}else if(protocol.equals("old")){
			nicknamelist.add(message);
			lstconnect.setListData(nicknamelist);
		}else if(protocol.equals("chatting")) {
			taChat.append(st.nextToken()+" >> "+message+"\n");
		//1. 서버가 전달한 메시지의 포르토콜이 out이면 nickname리스트에서 해당 nickname을 제거===
		}else if(protocol.equals("out")) {
			nicknamelist.remove(message);
			lstconnect.setListData(nicknamelist);
			taChat.append("**********"+message+"님이 퇴장하셨습니다.*******\n");
		}
	}
	
	public void ioWork() {
		try {
			is = socket.getInputStream();
			ir = new InputStreamReader(is);
			br = new BufferedReader(ir);
			
			os = socket.getOutputStream();
			pw = new PrintWriter(os,true);
		}catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void sendMsg(String message) {
		System.out.println("클라이언트가 서버에게 메시지 전송하기:"+message);
		taChat.append("me:"+message+"\n");
		pw.println(message);
		//pw.flush();
		System.out.println("pw했다");
	}
}
