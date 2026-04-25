<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Update Student</title>

<style>
body { font-family: Arial; background: linear-gradient(135deg,#667eea,#764ba2); }
.container { width: 400px; margin: 40px auto; background: white; padding: 25px; border-radius: 12px; }

input {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}

button {
    width: 100%;
    padding: 12px;
    background: #667eea;
    color: white;
    border: none;
}
</style>

</head>

<body>

<div class="container">

<h2>Update Student</h2>

<form action="UpdateStudentServlet" method="post">

<input name="id" placeholder="Student ID" required>
<input name="name" placeholder="Name">
<input name="room" placeholder="Room">
<input type="date" name="date">
<input name="paid" placeholder="Paid">
<input name="pending" placeholder="Pending">

<button>Update</button>

</form>

<br><a href="index.jsp">Back</a>

</div>

</body>
</html>