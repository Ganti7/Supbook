<%@page import="com.zenika.supbook.model.Message"%>
<%@page import="com.zenika.supbook.service.MessageService"%>
<%@page import="java.util.*"%>
<%@page import="javax.servlet.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mur_personnel</title>
    <style>
        #div1{
            text-align: center;
            background-color: darkslategray;
        }
    </style>
</head>
<body>

    <div id="div1">
        <label for="messageAmi">Poster sur son mur : </label>
        <form action="<%=request.getContextPath()%>/private/murPerso.jsp">
        	<input type="text" name="context" id="messageAmi"/>
        	<button type="submit">Valider</button>
        	<button>Public</button><p style="color:red;">(Bouton switch public => privé)</p>
        </form>
		<div id='message'> 
			<% 
				long i = 0;
				List<String> toWrite = new ArrayList<String>();
				List<Message> messages = new MessageService().findUserMessage(1);	
				for (Message message : messages) {
					i++;
					if(i%2 != 0) {
						out.println("<div>" + message.getContent() + "</div>");
					}
					else {
						out.println("<div style=\"background-color:cyan\">" + message.getContent() + "</div>");
					}
				}
				
			%>
		</div>
    </div>
	

</body>
</html>