<%@page import="com.Database.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">

  <title>CodePen - Custom checkboxes with CSS only</title>

    <link rel="stylesheet" href="<%=request.getContextPath() %>/style1.css" media="screen" type="text/css" />

</head>

<body>

 <font color="white"><h1>Access Control</h1></font>


<form action="<%=request.getContextPath()%>/Accesspriority" method="post">
<%
ResultSet rs=AdminDAO.getGrade();
while(rs.next())
{
	%>

  <p>
    <input type="checkbox" name="grades" id="test1" value="<%=rs.getString(3)%>" />
  <font color="white">  <label for="test1"><%=rs.getString(2) %></label></font>
  </p>
  
  <%
}
%>

<input type="submit" style ="background-color:green;">
  
</form>


</body>


</html>