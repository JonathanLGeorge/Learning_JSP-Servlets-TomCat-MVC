<html>
<head>
<title>
Confirmation
</title>
</head>
<%
//read form data
String favLang = request.getParameter("favoriteLanguage");


//create the cookie
Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

//set the life span ... total number of seconds
theCookie.setMaxAge(60*60*24*10); //10 days

//send cookie to browers
response.addCookie(theCookie);

%>

<body>
Thanks! We set your favorite language to:  ${param.favoriteLanguage};
<br/>
<a href="cookies-homepage.jsp">Return to home-page</a>
</body>
</html>