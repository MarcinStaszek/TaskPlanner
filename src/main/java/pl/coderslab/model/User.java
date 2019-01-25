package pl.coderslab.model;



import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;


import javax.persistence.*;
import java.time.LocalDate;


@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Column(length = 100)
    private String firstName;

    @NotBlank
    @Column(length = 100)
    private String lastName;

    @NotBlank
    @Email
    @Column(length = 100)
    private String email;

    @NotBlank
    @Column(length = 100, unique = true)
    private String login;

    @NotBlank
    @Column
    private String password;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate created;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate updated;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public LocalDate getCreated() {
        return created;
    }

    public void setCreated(LocalDate created_date) {
        this.created = created_date;
    }

    public LocalDate getUpdated() {
        return updated;
    }

    public void setUpdated(LocalDate updated_date) {
        this.updated = updated_date;
    }
}
