<%@ page import="java.util.*,com.model.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
<!-- jsp -->
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

    /* Same background image */
    background-image: url("images/hostel.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    min-height: 100vh;
}

.header {
    text-align: center;
    color: white;
    font-size: 30px;
    padding: 20px;
    font-weight: bold;
    background: rgba(0, 0, 0, 0.5);
}

h2 {
    text-align: center;
    color: white;
    margin-top: 30px;
}

table {
    width: 90%;
    margin: 30px auto;
    background: rgba(255, 255, 255, 0.9);
    border-collapse: collapse;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

th {
    background: #667eea;
    color: white;
    padding: 12px;
    font-size: 16px;
}

td {
    text-align: center;
    padding: 12px;
    font-size: 15px;
}

tr:nth-child(even) {
    background: #f2f2f2;
}

.back {
    display: block;
    text-align: center;
    margin: 20px;
    color: white;
    font-weight: bold;
    text-decoration: none;
    font-size: 18px;
}
</style>

</head>

<body>

<div class="header">
    🏠 Hostel Management System
</div>

<h2>📋 Student List</h2>

<table border="1">

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Room</th>
    <th>Date</th>
    <th>Paid</th>
    <th>Pending</th>
</tr>

<%
List<Student> list = (List<Student>) request.getAttribute("list");

if(list != null){
    for(Student s : list){
%>

<tr>
    <td><%= s.getStudentID() %></td>
    <td><%= s.getStudentName() %></td>
    <td><%= s.getRoomNumber() %></td>
    <td><%= s.getAdmissionDate() %></td>
    <td><%= s.getFeesPaid() %></td>
    <td><%= s.getPendingFees() %></td>
</tr>

<%
    }
}
%>

</table>

<a href="index.jsp" class="back">⬅ Back to Dashboard</a>

</body>
</html>