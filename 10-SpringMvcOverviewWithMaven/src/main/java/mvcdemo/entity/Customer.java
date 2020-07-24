package mvcdemo.entity;

import javax.validation.constraints.*;

public class Customer {

    private String firstName;
    @NotNull(message = "is required")
    @Size(min = 1)
    private String lastName;

    @NotNull(message = "is required")
    @Min(value = 0, message = "must be positive")
    @Max(value = 9, message = "must be less than 10")
    private Integer validRange;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "only 5 characters or digits")
    private String postalCode;

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public Integer getValidRange() {
        return validRange;
    }

    public void setValidRange(Integer validRange) {
        this.validRange = validRange;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
