<%@page import="com.zenika.supbook.model.Message"%>
<%@page import="com.zenika.supbook.service.MessageService"%>
<%@page import="java.util.*"%>



<%
	String content = request.getParameter("content");
	long id_user_sent = Long.parseLong(request.getParameter("id_user_sent"));
	long id_user_receive = Long.parseLong(request.getParameter("id_user_receive"));
	
	Date date = new Date();			
	
	Message message = new Message(content, date, id_user_receive, id_user_sent);
	new MessageService().create(message);
	
%>