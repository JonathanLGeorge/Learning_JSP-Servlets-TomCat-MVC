<%@ page import="java.util.*" %>

<html>
<body>
<!-- step 1. create html form  -->
<form action="todolist-demo.jsp">
	Add new item: <input type="text" name="theItem"/>
	
	<input type="submit" value="submit"/>
</form>

<br/>

<!-- step 2. add new item to "To do list"  -->
<%
//get the TO DO items from the session
List<String> items = (List<String>) session.getAttribute("myToDoList");
// if the TODO items dont exist, create a new one
if(items == null){
	items = new ArrayList<String>();
	session.setAttribute("myToDoList", items);
}
//se if there is a form data to add
String theItem = request.getParameter("theItem");

//making sure the input isnt empty
boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

if(isItemNotEmpty && isItemNotDuplicate){
	items.add(theItem.trim());
	
	response.sendRedirect("todolist-demo.jsp"); // UPDATE: NEW CODE
}
%>

<!-- step 3. Display all "To Do" item from session -->
<hr>
<b>To List Items:</b>
<br/>
<ol>
<%
for (String temp : items){
	out.println("<li>" + temp + "</li>");
}
%>
</ol>
</body>
</html>