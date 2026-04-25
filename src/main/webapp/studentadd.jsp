<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(135deg,#667eea,#764ba2);
}

.container {
    width: 400px;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 12px;
}

input {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border-radius: 8px;
    border: 1px solid #ccc;
}

button {
    width: 100%;
    padding: 12px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 10px;
}

button:hover {
    background: #5a67d8;
}
</style>

</head>

<body>

<div class="container">
<h2>Add Student</h2>

<form action="AddStudentServlet" method="post">

<input name="id" placeholder="Student ID" required>
<input name="name" placeholder="Name" required>
<input name="room" placeholder="Room" required>
<input type="date" name="date" required>
<input name="paid" placeholder="Fees Paid" required>
<input name="pending" placeholder="Pending Fees" required>

<button>Add</button>

</form>

<br><a href="index.jsp">Back</a>
</div>

</body>
</html>