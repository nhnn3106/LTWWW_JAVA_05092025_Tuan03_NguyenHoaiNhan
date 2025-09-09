package fit.iuh.se.model;

public class Education {
    private String course;
    private String board;
    private double percentage;
    private int year;

    public Education(String board, double percentage, int year) {

        this.board = board;
        this.percentage = percentage;
        this.year = year;
    }

    public String getCourse() {
        return course;
    }

    public Education(String course, String board, double percentage, int year) {
        this.course = course;
        this.board = board;
        this.percentage = percentage;
        this.year = year;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    @Override
    public String toString() {
        return "Education{" +
                "course='" + course + '\'' +
                ", board='" + board + '\'' +
                ", percentage=" + percentage +
                ", year=" + year +
                '}';
    }

    public double getPercentage() {
        return percentage;
    }

    public void setPercentage(double percentage) {
        this.percentage = percentage;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
}
