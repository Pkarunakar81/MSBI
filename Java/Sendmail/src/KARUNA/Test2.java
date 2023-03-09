package KARUNA;



import java.util.*;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

class Test2 {
	//private static String mailhost = "smtp.gmail.com";
 
		 public static void main(String [] args){  
		     
			// TODO Auto-generated method stub
				// For complete examples and data files, please go to https://github.com/aspose-email/Aspose.Email-for-Java

				// Declare msg as MailMessage instance
				MailMessage msg = new MailMessage();

				// Create an instance of SmtpClient class
				SmtpClient client = new SmtpClient();

				// Specify your mailing host server, Username, Password, Port # and Security option
				client.setHost("mail.server.com");
				client.setUsername("username");
				client.setPassword("password");
				client.setPort(587);
				client.setSecurityOptions(SecurityOptions.SSLExplicit);

				try {
				    // Client.Send will send this message
				    client.send(msg);
				    System.out.println("Message sent");
				} catch (Exception ex) {
				    System.err.println(ex);
				}
			}
}
