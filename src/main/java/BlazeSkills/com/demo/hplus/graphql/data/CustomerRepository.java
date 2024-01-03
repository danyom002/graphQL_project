package BlazeSkills.com.demo.hplus.graphql.data;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
    Customer findCustomersByEmail(String email);
   // Customer findCustomerById(long id);

}
