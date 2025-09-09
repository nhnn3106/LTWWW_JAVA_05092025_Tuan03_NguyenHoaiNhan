<%@ page import="fit.iuh.se.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/5/2025
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% Student student = new Student();
    student = (Student) request.getAttribute("student");
    out.println(
            "First name: " + student.getFirstName() +
                    "<br> Last name: " + student.getLastName() +
                    "<br> Date of birth: " + student.getDateOfBirth()+
                    "<br> Email: " + student.getEmail()  +
                    "<br> Number: " + (student.isGender() ? "male" : "female") +
                    "<br> Address: " + student.getAddress() +
                    "<br> City: " + student.getCity() +
                    "<br> Pincode: " + student.getPostalCode() +
                    "<br> State: " + student.getState() +
                    "<br> Country: " + student.getCountry() +
                    "<br> Hobbies: " + student.getHobbies() +
                    "br> Qualifications" + student.getQualifications() +
                    "<br> Course: " + student.getCourse()

    );
    %>
</head>
<body>

</body>
</html>
