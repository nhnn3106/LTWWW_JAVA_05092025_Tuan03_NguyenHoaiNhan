package fit.iuh.se;

import fit.iuh.se.model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Set;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().append("Served ar: ").append(req.getContextPath());

        String fname = req.getParameter("firstName");
        String lname = req.getParameter("lastName");
        int day = Integer.parseInt(req.getParameter("day"));
        int month = Integer.parseInt(req.getParameter("month"));
        int year = Integer.parseInt(req.getParameter("year"));
        LocalDate date = LocalDate.of(year, month, day);
        String email = req.getParameter("email");
        String number = req.getParameter("number");
        boolean gender = req.getParameter("gender") == "male" ? true : false;
        String address = req.getParameter("address");
        String city = req.getParameter("city");
        int pincode = Integer.parseInt(req.getParameter("pincode"));
        String state = req.getParameter("state");
        String country = req.getParameter("country");
        Set<String> hobbies = Set.<String>of(req.getParameterValues("hobbies"));
        String otherHobby = req.getParameter("otherHobby");
        hobbies.add(otherHobby);



        Student sv = new Student();
        sv.setFirstName(fname);
        sv.setLastName(lname);
        sv.setDateOfBirth(date);
        sv.setEmail(email);
        sv.setNumber(number);
        sv.setGender(gender);
        sv.setAddress(address);
        sv.setCity(city);
        sv.setPostalCode(pincode);
        sv.setState(state);
        sv.setCountry(country);
        sv.setHobbies(hobbies);




        req.setAttribute("student", sv);

        RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
        rd.forward(req, resp);
    }

    public RegistrationForm() {
        super();
    }

}
