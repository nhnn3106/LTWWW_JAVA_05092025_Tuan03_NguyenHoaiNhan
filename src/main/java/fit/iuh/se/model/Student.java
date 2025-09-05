package fit.iuh.se.model;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Set;

public class Student {
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private String email;
    private boolean gender;
    private String number;
    private String address;
    private String city;
    private int postalCode;
    private String state;
    private String country;
    private Set<String> hobbies;
    private HashMap<String, String> qualifications;
    private String course;

    public Student(String firstName, String lastName, LocalDate dateOfBirth, String email, boolean gender, String number, String address, String city, int postalCode, String state, String country, Set<String> hobbies, HashMap<String, String> qualifications, String course) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.gender = gender;
        this.number = number;
        this.address = address;
        this.city = city;
        this.postalCode = postalCode;
        this.state = state;
        this.country = country;
        this.hobbies = hobbies;
        this.qualifications = qualifications;
        this.course = course;
    }

    public Student() {

    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Set<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(Set<String> hobbies) {
        this.hobbies = hobbies;
    }

    public HashMap<String, String> getQualifications() {
        return qualifications;
    }

    public void setQualifications(HashMap<String, String> qualifications) {
        this.qualifications = qualifications;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }
}
