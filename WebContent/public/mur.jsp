
<%@page import="com.zenika.supbook.model.Message"%>
<%@page import="com.zenika.supbook.service.MessageService"%>
<%
	String login = request.getParameter("login");
	String password = request.getParameter("password");
	
	Message administrator = ;
	
	if (administrator != null) {
		session.setAttribute("administrator", administrator);
		response.sendRedirect(request.getContextPath() + "/private/home.jsp");
		
	} else {
		response.sendRedirect(request.getContextPath() + "/private/loginForm.jsp?msg=Connection error");
	}
%>