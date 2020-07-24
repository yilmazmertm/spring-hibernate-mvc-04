package myCode.dao;

import myCode.entity.Customer;

import java.util.List;

public interface DAO {
    public List<Customer> getCustomers();

    public void saveCustomer(Customer theCustomer);

    public void deleteCustomer(int theId);

    Customer getCustomer(int theId);
}
