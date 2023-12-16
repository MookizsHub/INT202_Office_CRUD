package sit.int202.classicmodel;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
import sit.int202.classicmodel.entities.Office;

import java.util.List;

import static sit.int202.classicmodel.entities.Environment.PU_NAME;

public class TestQuery {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(PU_NAME);
        EntityManager em = emf.createEntityManager();
        Query query = em.createNamedQuery("OFFICE.FIND_ALL");
        List<Office> officeList = query.getResultList();
        for (Office o : officeList){
            System.out.printf("%-2s %-25s %-13s %s\n",
                    o.getOfficeCode(), o.getAddressLine1(),o.getCity(),o.getCountry());
        }
        em.close();
    }
}
