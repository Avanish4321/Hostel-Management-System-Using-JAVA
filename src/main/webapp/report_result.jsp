<%@ page import="java.util.*,com.model.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Report Result</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(135deg,#667eea,#764ba2);
}

table {
    width: 90%;
    margin: 30px auto;
    background: white;
    border-collapse: collapse;
}

th {
    background: #667eea;
    color: white;
    padding: 10px;
}

td {
    text-align: center;
    padding: 10px;
}
</style>

</head>

<body>

<h2 style="text-align:center;color:white;">Report Result</h2>

<table border="1">

<tr>
<th>ID</th><th>Name</th><th>Room</th><th>Date</th><th>Paid</th><th>Pending</th>
</tr>

<%
List<Student> list = (List<Student>)request.getAttribute("list");

if(list != null){
for(Student s : list){
%>

<tr>
<td><%=s.getStudentID()%></td>
<td><%=s.getStudentName()%></td>
<td><%=s.getRoomNumber()%></td>
<td><%=s.getAdmissionDate()%></td>
<td><%=s.getFeesPaid()%></td>
<td><%=s.getPendingFees()%></td>
</tr>

<% } } %>

</table>

<div style="text-align:center;">
<a href="index.jsp" style="color:white;">Back</a>
</div>

</body>
</html>