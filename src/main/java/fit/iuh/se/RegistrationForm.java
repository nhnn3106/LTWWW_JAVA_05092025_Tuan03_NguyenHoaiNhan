package fit.iuh.se;

import fit.iuh.se.model.Education;
import fit.iuh.se.model.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.util.HashSet;
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


        // hobbies
        String[] hobbiesArray = req.getParameterValues("hobbies");
        Set<String> hobbies = new HashSet<>();
        if (hobbiesArray != null) {
            for (String hobby : hobbiesArray) {
                hobbies.add(hobby);
            }
        }
        String otherHobby = req.getParameter("otherHobby");
        if (otherHobby != null && !otherHobby.trim().isEmpty()) {
            hobbies.add(otherHobby);
        }


        //quailifications
        Set<Education> qualifications = new HashSet<>();
            String boardX = req.getParameter("boardX");
            String boardXII = req.getParameter("boardXII");
            String boardGrad = req.getParameter("boardGrad");
            String boardMaster = req.getParameter("boardMaster");

            String percentageXStr = req.getParameter("percentageX");
            String percentageXIIStr = req.getParameter("percentageXII");
            String percentageGradStr = req.getParameter("percentageGrad");
            String percentageMasterStr = req.getParameter("percentageMaster");

            String yearXStr = req.getParameter("yearX");
            String yearXIIStr = req.getParameter("yearXII");
            String yearGradStr = req.getParameter("yearGrad");
            String yearMasterStr = req.getParameter("yearMaster");
            // Add qualifications only if values are provided
            if (boardX != null && !boardX.trim().isEmpty() && percentageXStr != null && yearXStr != null) {
                qualifications.add(new Education( "Class X", boardX, Double.parseDouble(percentageXStr), Integer.parseInt(yearXStr)));
            }
            if (boardXII != null && !boardXII.trim().isEmpty() && percentageXIIStr != null && yearXIIStr != null) {
                qualifications.add(new Education("Class XII",boardXII, Double.parseDouble(percentageXIIStr), Integer.parseInt(yearXIIStr)));
            }
            if (boardGrad != null && !boardGrad.trim().isEmpty() && percentageGradStr != null && yearGradStr != null) {
                qualifications.add(new Education("Graduation", boardGrad, Double.parseDouble(percentageGradStr), Integer.parseInt(yearGradStr)));
            }
            if (boardMaster != null && !boardMaster.trim().isEmpty() && percentageMasterStr != null && yearMasterStr != null) {
                qualifications.add(new Education("Master", boardMaster, Double.parseDouble(percentageMasterStr), Integer.parseInt(yearMasterStr)));
            }

        String course = req.getParameter("courseApplied");


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
        sv.setQualifications(qualifications);
        sv.setCourse(course);

        System.out.println(sv);




        req.setAttribute("student", sv);

        RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
        rd.forward(req, resp);
    }

    public RegistrationForm() {
        super();
    }

}
