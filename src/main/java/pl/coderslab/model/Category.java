package pl.coderslab.model;



import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name="categories")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Column
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updated;


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

}
