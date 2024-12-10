package onlinetourguide;
import java.sql.Timestamp;

public class Feedback {
    private int id;             // Unique identifier for each feedback entry
    private String name;        // Name of the person giving feedback
    private String email;       // Email of the person giving feedback
    private String feedback;    // Feedback message
    private Timestamp submittedAt;  // Timestamp when feedback was submitted

    // Default constructor
    public Feedback() {}

    // Constructor for inserting new feedback (without ID and submittedAt)
    public Feedback(String name, String email, String feedback) {
        this.name = name;
        this.email = email;
        this.feedback = feedback;
    }

    // Constructor for fetching feedback with all fields (used for retrieving from the database)
    public Feedback(int id, String name, String email, String feedback, Timestamp submittedAt) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.feedback = feedback;
        this.submittedAt = submittedAt;
    }

    // Constructor for updating feedback (without submittedAt, which doesn't change)
    public Feedback(int id, String name, String email, String feedback) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.feedback = feedback;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Timestamp getSubmittedAt() {
        return submittedAt;
    }

    public void setSubmittedAt(Timestamp submittedAt) {
        this.submittedAt = submittedAt;
    }
}
