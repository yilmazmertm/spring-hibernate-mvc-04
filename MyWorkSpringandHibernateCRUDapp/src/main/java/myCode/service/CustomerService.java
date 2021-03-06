package myCode.service;

import myCode.entity.Customer;
import org.springframework.stereotype.Service;

import java.util.List;

public interface CustomerService {
    public List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    public void deleteCustomer(int theId);

    Customer getCustomer(int theId);
}
