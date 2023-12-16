package sit.int202.classicmodel;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import sit.int202.classicmodel.entities.Office;

import java.util.Scanner;

import static sit.int202.classicmodel.entities.Environment.PU_NAME;

public class TestJpa {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(PU_NAME);
        EntityManager em = emf.createEntityManager();
        System.out.println("Find office by office code : ");
        String x = new Scanner(System.in).next();
        Office office = em.find(Office.class,x);
        if (office == null){
            System.out.println("office no. " + x + " does not exist !!!");
            Office newOffice = new Office();
            newOffice.setOfficeCode(x);
            newOffice.setAddressLine1("11,Lumlukka");
            newOffice.setCity("Pathum-Thani");
            newOffice.setCountry("Thailand");
            newOffice.setPhone("029870800");
            newOffice.setPostalCode("12150");
            newOffice.setTerritory("xx");
            em.getTransaction().begin();
            em.persist(newOffice);
            em.getTransaction().commit();
        }
        else {
            System.out.println(office);
            System.out.println("Do you want to delete office no." + x + " (Y/N)?");
            String answer = new Scanner(System.in).next();
            if (answer.equalsIgnoreCase("y")) {
                em.getTransaction().begin();
                em.remove(office);
                em.getTransaction().commit();
                System.out.println("office no." + x + " has been removed !!!");
            }
        }
        emf.close();
        em.close();
    }
}
