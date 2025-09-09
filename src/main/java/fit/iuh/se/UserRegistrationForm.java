package fit.iuh.se;

import fit.iuh.se.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name= "user-registration-form", value="/user-registration-form")
public class UserRegistrationForm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("userRegistrationForm.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String reEnterEmail = req.getParameter("re-enter-email");
        String password = req.getParameter("password");
        int day = Integer.parseInt(req.getParameter("day"));
        int month = Integer.parseInt(req.getParameter("month"));
        int year = Integer.parseInt(req.getParameter("year"));
        LocalDate birthday = LocalDate.of(year, month, day);
        String gender = req.getParameter("gender");

        User user = new User(firstName, lastName,email, password, birthday, gender);

        System.out.println(user);

        req.setAttribute("user", user);
        
        RequestDispatcher r = req.getRequestDispatcher("userResult.jsp");
        r.forward(req, resp);
    }
}
