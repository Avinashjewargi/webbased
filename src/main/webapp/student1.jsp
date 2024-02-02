<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 500px;
        width: 100%;
    }
    h2 {
        color: #333;
        text-align: center;
    }
    p {
        color: #666;
        font-size: 16px;
        line-height: 1.5;
    }
    .success {
        color: green;
    }
    .fail {
        color: red;
    }
</style>
</head>
<body>
<div class="container">
<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phoneNumber = request.getParameter("number");

Connection conn = null;
PreparedStatement pstmt = null;
boolean registrationSuccess = false;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student1", "root", "root123");

    String sql = "INSERT INTO student (firstName, lastName, gender, email, password, phoneNumber) VALUES (?, ?, ?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, firstName);
    pstmt.setString(2, lastName);
    pstmt.setString(3, gender);
    pstmt.setString(4, email);
    pstmt.setString(5, password);
    pstmt.setString(6, phoneNumber);

    int result = pstmt.executeUpdate();
    registrationSuccess = result > 0;
} catch(Exception e) {
    e.printStackTrace();
} finally {
    if(pstmt != null) pstmt.close();
    if(conn != null) conn.close();
}

if(registrationSuccess) {
    out.println("<h2 class='success'>Registration Successful!</h2>");
} else {
    out.println("<h2 class='fail'>Registration Failed.</h2>");
}

out.println("<p>First Name: " + firstName + "</p>");
out.println("<p>Last Name: " + lastName + "</p>");
out.println("<p>Gender: " + gender + "</p>");
out.println("<p>Email: " + email + "</p>");
out.println("<p>Password: " + password + "</p>"); // Displaying passwords in plain text is not recommended in a real-world scenario.
out.println("<p>Phone Number: " + phoneNumber + "</p>");
%>
</div>
</body>
</html>