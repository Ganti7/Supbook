<%@page import="com.zenika.supbook.model.Message"%>
<%@page import="com.zenika.supbook.service.MessageService"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>

<%
	String content = request.getParameter("content");
	long id_user_sent = Long.parseLong(request.getParameter("id_user_sent"));
	long id_user_receive = Long.parseLong(request.getParameter("id_user_receive"));
	//Date date = Date.parseDate(request.getParameter("date"));
	
	Message message = new MessageService().create(content, 99, 1);
	
%>