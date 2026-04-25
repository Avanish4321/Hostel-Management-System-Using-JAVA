<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Reports</title>

<style>
body { font-family: Arial; background: linear-gradient(135deg,#667eea,#764ba2); }

.container {
    width: 400px;
    margin: 40px auto;
    background: white;
    padding: 25px;
    border-radius: 12px;
}

input, select {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}

button {
    width: 100%;
    padding: 12prgb(102, 126, 234)    background: #667eea;
    color: white;
}
</style>

</head>

<body>

<div class="container">

<h2>Reports</h2>

<form action="ReportCriteriaServlet" method="post">

<select name="type">
<option value="pending">Pending Fees</option>
<option value="room">Room Wise</option>
<option value="date">Date Range</option>
</select>

<input name="room" placeholder="Room">
<input type="date" name="from">
<input type="date" name="to">

<button>Generate</button>

</form>

<br><a href="index.jsp">Back</a>

</div>

</body>
</html>