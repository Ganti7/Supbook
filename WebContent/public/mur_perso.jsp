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
        #div2{
            background-color: cyan;
        }
        #div3{
            background-color: cyan;
        }
    </style>
</head>
<body>

    <div id="div1">
        <label for="messageAmi">Poster sur son mur : </label>
        <input type="text" name="humeur" id="messageAmi"/>
        <button>Valider</button>
        <button>Public</button><p style="color:red;">(Bouton switch public => privé)</p>
		<div id='message'> 
		
			<%
		List<String> toWrite = new ArrayList<String>();
	
		List<Message> messages = new MessageService().findUserMessage(1);	
		
		for (Message message : messages) {
			out.println("<div>" + message.getContent() + "</div>");
		}
		
		
	%>
		
		</div>
    </div>
	

</body>
</html>