<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="<%=request.getContextPath() %>/js/min2.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath() %>/css/stylemenu.css" />
<script src="<%=request.getContextPath() %>/js/min.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('.menu a').hover(function() {
      $(this).stop().animate({
         opacity: 1
       }, 200);
          }, function() {
     $(this).stop().animate({
      opacity: 0.3
       }, 200);
    });
  });
</script>
 <%
HttpSession hs = request.getSession();

String id = session.getAttribute("userid").toString();




%>

</head>
<body>

<div class="menu">
            <a class="yellow" href="<%=request.getContextPath()%>/Profile_User" target="myframe">Profile</a>
            <a class="green" href="<%=request.getContextPath()%>/JSP/User/key_request.jsp" target="myframe">Key Request</a>
            <a class="pink" href="<%=request.getContextPath()%>/JSP/User/view_request.jsp" target="myframe">View Request</a>
            <a class="purple" href="<%=request.getContextPath()%>/JSP/User/search_content.jsp" target="myframe">Search</a>
            <a class="blue" href="<%=request.getContextPath() %>/ChangePass_User?no=1&id=<%=id %>" target="myframe">Change Pass</a>
            <a class="orange" href="<%=request.getContextPath()%>/SignOut?no=1">Logout</a>
        </div>
</body>
</html>



