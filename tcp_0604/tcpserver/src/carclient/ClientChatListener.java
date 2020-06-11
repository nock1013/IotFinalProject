package carclient;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
public class ClientChatListener implements ActionListener{
	ClientChatView view;

	public ClientChatListener(ClientChatView view) {
		super();
		this.view = view;
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		//1. 채팅 대화를 전송하는 경우 프로토콜, 대화 내용, nickname
		if(e.getSource() == view.txtinput | e.getSource()==view.btnsend) {
			//view.sendMsg("chatting/"+view.txtinput.getText().trim()+"/"+view.nickname);
			view.sendMsg(view.txtinput.getText().trim());
			view.txtinput.setText("");
		}
		
	}
	
	
}
