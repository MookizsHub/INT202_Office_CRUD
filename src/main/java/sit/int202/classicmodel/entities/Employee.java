package sit.int202.classicmodel.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "employees")
@NamedQueries({
        @NamedQuery(name ="E.FIND_ALL" , query ="select e from Employee e"),
        @NamedQuery(name ="E.FIND_BY_NAME",
                query ="select  e from Employee e where e.firstName like :firstName or e.lastName like :last_name")
})
public class Employee {
    @Id
    private Integer employeeNumber;
    private String firstName;
    private String lastName;
    private String extension;
    private String email;
    private String officeCode;
    private Integer reportsTo;
    private String jobTitle;
    @ManyToOne
    @JoinColumn(name = "officeCode",insertable = false,updatable = false) // many employee in one office
    private Office office;

}
