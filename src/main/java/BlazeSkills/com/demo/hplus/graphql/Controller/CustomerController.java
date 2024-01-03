package BlazeSkills.com.demo.hplus.graphql.Controller;

import BlazeSkills.com.demo.hplus.graphql.data.Customer;
import BlazeSkills.com.demo.hplus.graphql.data.CustomerRepository;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class CustomerController {
    private final CustomerRepository customerRepository;

    public CustomerController(CustomerRepository customerRepository){
        this.customerRepository = customerRepository;
    }
    @QueryMapping
    public Iterable<Customer> customers(){
        return customerRepository.findAll();
    }
    @QueryMapping
    public Customer customerById(@Argument long id){
        return customerRepository.findById(id).orElseThrow();
    }
    @QueryMapping
    public Customer customerByEmail(@Argument String email){
        return customerRepository.findCustomersByEmail(email);
    }
}
