<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Update Student</title>
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

.container {
    width: 420px;
    margin: 50px auto;
    padding: 30px;
    border-radius: 20px;

    /* Transparent white box */
    background: rgba(255, 255, 255, 0.25);
    backdrop-filter: blur(8px);

    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

h2 {
    text-align: center;
    color: white;
    margin-bottom: 20px;
}

input {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border-radius: 10px;
    border: none;
    font-size: 15px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 12px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

button:hover {
    background: #5a67d8;
}

.back {
    display: block;
    margin-top: 15px;
    text-align: center;
    color: white;
    font-weight: bold;
    text-decoration: none;
}
</style>

</head>

<body>

<div class="header">
    🏠 Hostel Management System
</div>

<div class="container">

    <h2>✏ Update Student</h2>

    <form action="UpdateStudentServlet" method="post">

        <input name="id" placeholder="Student ID" required>
        <input name="name" placeholder="Name">
        <input name="room" placeholder="Room">
        <input type="date" name="date">
        <input name="paid" placeholder="Paid Fees">
        <input name="pending" placeholder="Pending Fees">

        <button type="submit">Update Student</button>

    </form>

    <a href="index.jsp" class="back">⬅ Back to Dashboard</a>

</div>

</body>
</html>