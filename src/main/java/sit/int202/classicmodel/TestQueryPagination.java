package sit.int202.classicmodel;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import sit.int202.classicmodel.entities.Employee;

import java.util.List;
import java.util.Scanner;

import static sit.int202.classicmodel.entities.Environment.PU_NAME;

public class TestQueryPagination {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(PU_NAME);
        EntityManager em = emf.createEntityManager();
        Query query = em.createNamedQuery("E.FIND_ALL");
        Scanner sc = new Scanner(System.in);
        System.out.println("Please enter Number of Item per page: ");
        int pageSize = sc.nextInt();
        int startAt = 0;
        query.setMaxResults(pageSize);
        while(true){
            query.setFirstResult(startAt);
            List<Employee> employeeList = query.getResultList();
            if (employeeList.isEmpty()){
                break;
            }
            displayEmployee(employeeList);
            System.out.println("Enter any key then enter to view next page ... ");
            sc.next();
            startAt = startAt + pageSize;
        }

        }
    private static void displayEmployee(List<Employee> employeeList){
        for (Employee emp : employeeList){
            System.out.printf("%4d %-12s %-12s %s\n",
                    emp.getEmployeeNumber(), emp.getFirstName(),emp.getLastName(), emp.getJobTitle());
        }
    }
}
