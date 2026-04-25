<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Hostel Dashboard</title>

<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(135deg,#667eea,#764ba2);
}

.header {
    text-align: center;
    color: white;
    font-size: 28px;
    padding: 20px;
    font-weight: bold;
}

.container {
    width: 350px;
    margin: 60px auto;
    background: white;
    padding: 25px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    text-align: center;
}

a {
    display: block;
    margin: 12px 0;
    padding: 12px;
    background: #667eea;
    color: white;
    text-decoration: none;
    border-radius: 10px;
}

a:hover {
    background: #5a67d8;
}
</style>

</head>

<body>

<div class="header">🏠 Hostel Management System</div>

<div class="container">

<a href="studentadd.jsp">➕ Add Student</a>
<a href="studentupdate.jsp">✏ Update Student</a>
<a href="studentdelete.jsp">❌ Delete Student</a>
<a href="DisplayStudentsServlet">📋 View Students</a>
<a href="ReportServlet">📊 Reports</a>

</div>

</body>
</html>