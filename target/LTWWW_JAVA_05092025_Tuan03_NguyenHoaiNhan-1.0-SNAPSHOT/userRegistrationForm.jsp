<%--
  Created by IntelliJ IDEA.
  User: NHAN
  Date: 9/8/2025
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="user-registration-form" method="post">
        <h1>User Registration Form</h1>
        <div>
            <input name="firstName" placeholder="First Name"/>
            <input name="lastName" placeholder="First Name"/>
        </div>
        <div><input name="email" placeholder="Your Email"/></div>
        <div><input name="re-enter-email" placeholder="Re-enter Email"/></div>
        <div><input name="password" placeholder="New Password"/></div>
        <div>
            <label>Birthday</label><br>
            <select name="month">
                <option value="">Month</option>
                <% for(int i = 1; i <= 12; i++) { %>
                    <option value="<%=i%>"><%=i%></option>
                <% } %>
            </select>
            <select name="day">
                <option value="">Day</option>
                <% for(int i = 1; i <= 31; i++) { %>
                <option value="<%=i%>"><%=i%></option>
                <% } %>
            </select>
            <select name="year">
                <option value="">Year</option>
                <% for(int i = 1583; i <= 2025; i++) { %>
                <option value="<%=i%>"><%=i%></option>
                <% } %>
            </select>
        </div>
        <div>
            <label><input type="radio" name="gender" value="male"/>Male</label>
            <label><input type="radio" name="gender" value="female"/>Female</label>
        </div>
        <div><input type="submit" value="Sign Up"/></div>
    </form>
</body>
</html>
