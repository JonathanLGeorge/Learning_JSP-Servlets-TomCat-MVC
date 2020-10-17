<%@page import="com.testing.jsp.FunUtils"%>
<html>
<body>

<h3>
Hello world
</h3>
The server time is: <%= new java.util.Date() %>

<br/>
25 * 5 = <%=25*5 %>
<br/>
is 25 > 5? : <%= 25 > 5 %>

<h3>Scriptlet example</h3>
<%
for (int i = 1; i <= 5; i++){
	out.println("<br/>I really love this tutorial: " + i);
}
%>

<h3>JSP Declarations</h3>
<%!
String makeItLower(String data){
	return data.toLowerCase();
}
%>

Lower case "HAHAHAHAHAHAHAH": <%= makeItLower("HAHAHAHAHAHAHAH") %>



<h3>getting stuff from our Java com.test package</h3>

Lets get that class method from out FunUrils class
<br/>
"TEST tEST dID This work?" to lower case is:
<br/> 
<%= FunUtils.makeItLower("TEST tEST dID This work?") %>

</body>
</html>