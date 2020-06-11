package carclient;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;


public class ChatLoginListener  implements ActionListener{//이벤트 리스너
	ChatLogin view;//이벤트를 발생시키는 화면
	String nickname;
	public ChatLoginListener(ChatLogin view) {
		super();
		this.view = view;
	}
	//Swing에서 버튼이 클릭될 때 호출되는 메소드
	@Override
	public void actionPerformed(ActionEvent e) {//OnClick Method
		
		if(e.getSource()==view.btnConnect){
			nickname = view.txtId.getText().trim();
			if(nickname.isEmpty()) {
				JOptionPane.showMessageDialog(view,
						"대화명을 입력하세요", "대화명오류", JOptionPane.WARNING_MESSAGE);
				return;
			}
			String ip = view.cboServer.getSelectedItem()+"";
			int port = Integer.parseInt(view.cboPort.getSelectedItem()+"");
			System.out.println(ip+port);
			
			//=======2. ip, port, nickname을 전달하며 ClientChatView를 실행
			ClientChatView client = new ClientChatView(ip, port, nickname);
			view.dispose();//로그인창을 닫는다.
		}
	}
}