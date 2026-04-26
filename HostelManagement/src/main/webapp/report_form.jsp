<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Reports</title>
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

input,
select {
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

    <h2>📊 Reports</h2>

    <form action="ReportCriteriaServlet" method="post">

        <select name="type">
            <option value="pending">Pending Fees</option>
            <option value="room">Room Wise</option>
            <option value="date">Date Range</option>
        </select>

        <input name="room" placeholder="Enter Room Number">
        <input type="date" name="from">
        <input type="date" name="to">

        <button type="submit">Generate Report</button>

    </form>

    <a href="index.jsp" class="back">⬅ Back to Dashboard</a>

</div>

</body>
</html>