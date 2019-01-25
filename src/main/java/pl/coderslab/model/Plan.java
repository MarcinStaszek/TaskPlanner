package pl.coderslab.model;


import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "plans")
public class Plan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Column(length = 100)
    private String name;

    @NotBlank
    @Column
    private String description;

    @NotBlank
    @Column
    private String progressComment;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updated;

    @ManyToOne
    private User user;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProgressComment() {
        return progressComment;
    }

    public void setProgressComment(String progressComment) {
        this.progressComment = progressComment;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created_date) {
        this.created = created_date;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated_date) {
        this.updated = updated_date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
