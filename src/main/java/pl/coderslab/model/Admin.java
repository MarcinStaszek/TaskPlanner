package pl.coderslab.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;

@Entity
@Table(name = "admins")
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Column(length = 245)
    private String first_name;

    @NotBlank
    @Column(length = 245)
    private String last_name;

    @Email
    @Column(length = 245)
    private String email;

    @NotBlank
    @Column(length = 60)
    private String password;

    @Column(length = 1, columnDefinition = "boolean default false")
    private boolean superadmin;

    @Column(length = 1, columnDefinition = "boolean default true")
    private boolean enable;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isSuperadmin() {
        return superadmin;
    }

    public void setSuperadmin(boolean superadmin) {
        this.superadmin = superadmin;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }
}



