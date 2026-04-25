<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Delete</title>

<style>
body { font-family: Arial; background: linear-gradient(135deg,#667eea,#764ba2); }
.header { text-align:center; color:white; padding:15px; }
.container { width:400px; margin:auto; background:white; padding:20px; }
input { width:100%; padding:10px; margin:8px 0; }
button { width:100%; padding:10px; background:red; color:white; border:none; }
</style>

</head>
<body>

<div class="header">Delete Student</div>

<div class="container">
<form action="DeleteStudentServlet" method="post">

<input name="id" placeholder="Student ID" required>

<button>Delete</button>

</form>

<br><a href="index.jsp">Back</a>
</div>

</body>
</html>