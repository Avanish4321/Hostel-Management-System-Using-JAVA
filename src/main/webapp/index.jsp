<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Hostel Dashboard</title>

<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;

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

.container {
    width: 80%;
    max-width: 900px;
    margin: 60px auto;
    background: rgba(255, 255, 255, 0.85);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);

    /* Sideways buttons */
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

a {
    width: 220px;
    padding: 15px;
    background: #667eea;
    color: white;
    text-decoration: none;
    border-radius: 12px;
    text-align: center;
    font-size: 18px;
    font-weight: bold;
    transition: 0.3s;
}

a:hover {
    background: #5a67d8;
    transform: scale(1.05);
}
</style>

</head>

<body>

<div class="header">
    🏠 Hostel Management System
</div>

<div class="container">

    <a href="studentadd.jsp">➕ Add Student</a>
    <a href="studentupdate.jsp">✏ Update Student</a>
    <a href="studentdelete.jsp">❌ Delete Student</a>
    <a href="DisplayStudentsServlet">📋 View Students</a>
    <a href="ReportServlet">📊 Reports</a>

</div>

</body>
</html>