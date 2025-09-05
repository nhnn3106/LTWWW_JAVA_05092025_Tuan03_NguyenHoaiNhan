<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB;
            margin: 20px;
            padding: 20px;
        }

        .form-container {
            background-color: #87CEEB;
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin: 0 auto;
        }

        .form-row {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .form-label {
            width: 120px;
            font-weight: bold;
            color: #333;
        }

        .form-input {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 200px;
        }

        .form-input-wide {
            width: 300px;
        }

        .date-inputs select {
            margin-right: 5px;
            padding: 5px;
        }

        .radio-group {
            display: flex;
            gap: 20px;
        }

        .textarea-field {
            width: 300px;
            height: 80px;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .checkbox-group {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .skills-table {
            border: 2px solid #4682B4;
            border-collapse: collapse;
            width: 100%;
            margin: 15px 0;
            background-color: white;
        }

        .skills-table th,
        .skills-table td {
            border: 1px solid #4682B4;
            padding: 8px;
            text-align: left;
        }

        .skills-table th {
            background-color: #B0E0E6;
            font-weight: bold;
        }

        .qualification-radio {
            display: flex;
            gap: 20px;
            margin: 15px 0;
        }

        .button-group {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
            padding: 8px 20px;
            margin: 0 5px;
            border: 1px solid #666;
            border-radius: 3px;
            cursor: pointer;
            font-size: 14px;
        }

        .btn-submit {
            background-color: #f0f0f0;
        }

        .btn-reset {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
<div class="form-container">
    <form action="registration-form" method="get">

        <div class="form-row">
            <label class="form-label">First name:</label>
            <input type="text" name="firstName" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">Enter 30 characters a, z and A-Z</span>
        </div>

        <div class="form-row">
            <label class="form-label">Last name:</label>
            <input type="text" name="lastName" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">Enter 30 characters a, z and A-Z</span>
        </div>

        <div class="form-row">
            <label class="form-label">Date of Birth:</label>
            <div class="date-inputs">
                <select name="day">
                    <option value="">Day</option>
                    <% for(int i = 1; i <= 31; i++) { %>
                    <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>
                <select name="month">
                    <option value="">Month</option>
                    <option value="1">January</option>
                    <option value="2">February</option>
                    <option value="3">March</option>
                    <option value="4">April</option>
                    <option value="5">May</option>
                    <option value="6">June</option>
                    <option value="7">July</option>
                    <option value="8">August</option>
                    <option value="9">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>
                </select>
                <select name="year">
                    <option value="">Year</option>
                    <% for(int i = 2024; i >= 1950; i--) { %>
                    <option value="<%= i %>"><%= i %></option>
                    <% } %>
                </select>
            </div>
        </div>

        <div class="form-row">
            <label class="form-label">Email:</label>
            <input type="email" name="email" class="form-input" />
        </div>

        <div class="form-row">
            <label class="form-label">Mobile Number:</label>
            <input type="tel" name="mobile" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">10 Digit number</span>
        </div>

        <div class="form-row">
            <label class="form-label">Gender:</label>
            <div class="radio-group">
                <label><input type="radio" name="gender" value="male" /> Male</label>
                <label><input type="radio" name="gender" value="female" /> Female</label>
            </div>
        </div>

        <div class="form-row">
            <label class="form-label">Address:</label>
            <textarea name="address" class="textarea-field"></textarea>
        </div>

        <div class="form-row">
            <label class="form-label">City:</label>
            <input type="text" name="city" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">Enter 30 characters a, z and A-Z</span>
        </div>

        <div class="form-row">
            <label class="form-label">Pin code:</label>
            <input type="text" name="pincode" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">6 Digit Number</span>
        </div>

        <div class="form-row">
            <label class="form-label">State:</label>
            <input type="text" name="state" class="form-input" />
            <span style="margin-left: 10px; font-size: 12px;">Enter 30 characters a, z and A-Z</span>
        </div>

        <div class="form-row">
            <label class="form-label">Country:</label>
            <select name="country" class="form-input">
                <option value="">Select Country</option>
                <option value="India" selected>India</option>
                <option value="USA">USA</option>
                <option value="UK">UK</option>
                <option value="Canada">Canada</option>
                <option value="Australia">Australia</option>
            </select>
        </div>

        <div class="form-row">
            <label class="form-label">Hobbies:</label>
            <div class="checkbox-group">
                <label><input type="checkbox" name="hobbies" value="Drawing" /> Drawing</label>
                <label><input type="checkbox" name="hobbies" value="Singing" /> Singing</label>
                <label><input type="checkbox" name="hobbies" value="Dancing" /> Dancing</label>
                <label><input type="checkbox" name="hobbies" value="Sketching" /> Sketching</label>
                <label><input type="checkbox" name="hobbies" value="Others" /> Others</label>
                <input type="text" name="otherHobby" class="form-input" placeholder="Specify other hobby" style="margin-left: 10px;" />
            </div>
        </div>

        <!-- Skills Table -->
        <table class="skills-table">
            <tr>
                <th>Sr. No. Classification</th>
                <th>Class X</th>
                <th>Class XII</th>
                <th>Graduation</th>
                <th>Post Graduation</th>
            </tr>
            <tr>
                <td><strong>Course</strong></td>
                <td><input type="text" name="courseX" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="courseXII" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="courseGrad" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="coursePostGrad" style="width: 100%; border: none;" /></td>
            </tr>
            <tr>
                <td><strong>Board</strong></td>
                <td><input type="text" name="boardX" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="boardXII" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="boardGrad" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="boardPostGrad" style="width: 100%; border: none;" /></td>
            </tr>
            <tr>
                <td><strong>Percentage</strong></td>
                <td><input type="text" name="percentageX" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="percentageXII" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="percentageGrad" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="percentagePostGrad" style="width: 100%; border: none;" /></td>
            </tr>
            <tr>
                <td><strong>Year of Passing</strong></td>
                <td><input type="text" name="yearX" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="yearXII" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="yearGrad" style="width: 100%; border: none;" /></td>
                <td><input type="text" name="yearPostGrad" style="width: 100%; border: none;" /></td>
            </tr>
        </table>

        <div class="qualification-radio">
            <label style="font-weight: bold;">Course applied for:</label>
            <label><input type="radio" name="courseApplied" value="BCA" /> BCA</label>
            <label><input type="radio" name="courseApplied" value="BBA" /> BBA</label>
            <label><input type="radio" name="courseApplied" value="B.Tech" /> B.Tech</label>
            <label><input type="radio" name="courseApplied" value="MBA" /> MBA</label>
            <label><input type="radio" name="courseApplied" value="MCA" /> MCA</label>
        </div>

        <div class="button-group">
            <button type="submit" class="btn btn-submit">Submit</button>
            <button type="reset" class="btn btn-reset">Reset</button>
        </div>

    </form>
</div>
</body>
</html>