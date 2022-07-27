<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.student.dao.*" %>
        <%@ page import="com.student.pojo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Student s=new Student();
s.setId(request.getParameter("id"));
s.setName(request.getParameter("name"));
s.setEmail(request.getParameter("email"));
SudentDao dao=new SudentDao();
int row=dao.insertstudent(s);
if(row>0)
{
	out.print("insertion successful");
}
else{
out.print("insertion failed");
}
%>
<form action="retrieve.jsp">
<input type="submit value="getstudents">


</form>
</body>
</html>