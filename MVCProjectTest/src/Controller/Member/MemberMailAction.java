package Controller.Member;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MemberMailAction {
	 public void sendMail(String receiver1) {
		 	String num = UUID.randomUUID().toString().replace("-", " ");
		    
			String sender = "webmarster@aa.com";
			String receiver = receiver1;
			String subject = "안녕하세요 가입을 축하합니다.";
			String content = "안녕하세요 가입을 환영합니다. 아래 링크를 누르셔야만 가입이 완료됩니다."
									+ "<br/> <a href = 'http://192.168.4.111:8080/MVCProjectTest/registOk.nhn?num=" 
					                +num + "&email="+ receiver1 +" '>클릭하세요<a>";
			
			
			String server = "imap.gmail.com";
			String port = "587";
			
			Properties properties = new Properties();
			properties.put("mail.smtp.host", server);
			properties.put("mail.smtp.port", port);			
			//보안설정
			properties.put("mail.smtp.starttls.enable", "true");
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.debug", "true");
			properties.put("mail.smtp.soketFactory.port",port);
			properties.put("mail.smtp.soketFactory.class",
										"javax.net.ssl.SSLSocetFactory");
			properties.put("mail.smtp.soketFactory.fallback", "false");
			//mail.Session 객체를 이용하여 서버정보와 아이디 그리고 비밀번호를 저장한다.
			Session s  = Session.getDefaultInstance(properties,new javax.mail.Authenticator(){
						@Override
						protected PasswordAuthentication getPasswordAuthentication() {
							// TODO Auto-generated method stub
							return new PasswordAuthentication("bios788", "rose7016");
						}
					});
			
			try {
				Message messege = new MimeMessage(s);
				Address sender_address = new InternetAddress(sender);
				Address receiver_address = new InternetAddress(receiver);
				
				messege.setHeader("content-type ", "text/html; charset=UTF-8");
				messege.setFrom(sender_address);
				messege.setRecipient(Message.RecipientType.TO, receiver_address);
				messege.setSubject(subject);
				messege.setContent(content,"text/html; charset=UTF-8");
				messege.setSentDate(new Date());
				//메일 전송.
				
				Transport.send(messege, messege.getAllRecipients());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		 
		 
	 }

}
