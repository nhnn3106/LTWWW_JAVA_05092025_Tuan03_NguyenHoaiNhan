<%@ page import="fit.iuh.se.model.User" %><%--
  Created by IntelliJ IDEA.
  User: NHAN
  Date: 9/9/2025
  Time: 12:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <% User user = (User) request.getAttribute("user");
    out.println(
            "First name: " + user.getFirstName() +
                    "<br> Last name: " + user.getLastName() +
                    "<br> Email: " + user.getEmail() +
                    "<br> Password: " + user.getPassword() +
                    "<br> Birthday: " + user.getBirthDay() +
                    "<br> Gender: " + user.getGender()


    );
  %>
</head>
<body>

</body>
</html>
