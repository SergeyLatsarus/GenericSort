public class Person extends BaseObject {

    public String firstName { get; private set; }
    public String lastName { get; private set; }
    public Integer age { get; private set; }
    public Gender gender { get; private set; }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    public Person(String firstName, String lastName, Integer age, Gender gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.gender = gender;
    }
    
}
