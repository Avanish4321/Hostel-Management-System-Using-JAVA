<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Delete Student</title>

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
    width: 400px;
    margin: 80px auto;
    padding: 30px;
    border-radius: 20px;

    /* Transparent box */
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
    background: red;
    color: white;
    border: none;
    border-radius: 10px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

button:hover {
    background: darkred;
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

    <h2>❌ Delete Student</h2>

    <form action="DeleteStudentServlet" method="post">

        <input name="id" placeholder="Enter Student ID" required>

        <button type="submit">Delete Student</button>

    </form>

    <a href="index.jsp" class="back">⬅ Back to Dashboard</a>

</div>

</body>
</html>