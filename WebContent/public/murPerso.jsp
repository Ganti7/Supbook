<%@page import="com.zenika.supbook.model.Message"%>
<%@page import="com.zenika.supbook.service.MessageService"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.time.LocalDate"%>


<%
	String content = request.getParameter("content");
	long id_user_sent = Long.parseLong(request.getParameter("id_user_sent"));
	long id_user_receive = Long.parseLong(request.getParameter("id_user_receive"));
	
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
	LocalDate localDate = LocalDate.now();
			
	Message message = new Message(content, localDate, id_user_sent, id_user_receive);
	new MessageService().create(message);
	
%>