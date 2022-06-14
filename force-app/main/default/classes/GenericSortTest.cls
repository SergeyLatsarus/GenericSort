@isTest
private class GenericSortTest {

    @isTest @SuppressWarnings('PMD.ApexAssertionsShouldIncludeMessage')
    static void testSort() {
        List<Person> persons = new List<Person>();

        persons.add(new Person('AAB', 'CCC', 50, Gender.MALE));
        persons.add(new Person('AAB', 'BBB', 50, Gender.MALE));
        persons.add(new Person('AAA', 'BBB', 30, Gender.MALE));
        persons.add(new Person('AAA', 'AAB', 30, Gender.FEMALE));
        persons.add(new Person('AAA', 'AAB', 25, Gender.FEMALE));
        persons.add(new Person('AAA', 'AAB', 20, Gender.FEMALE));    

        new GenericSort()
            .addSortMethod(new IntegerSortASC('age'))
            .addSortMethod(new GenderSortFemaleFirst('gender'))
            .addSortMethod(new StringSortASC('firstName'))
            .addSortMethod(new StringSortDSC('lastName'))
            .makeSort(persons);

        System.assertEquals(20, persons[0].age);
        System.assertEquals('BBB', persons[5].lastName);


        new GenericSort()
            .addSortMethod(new GenderSortMaleFirst('gender'))
            .addSortMethod(new StringSortDSC('firstName'))
            .addSortMethod(new StringSortASC('lastName'))
            .addSortMethod(new IntegerSortASC('age'))
            .makeSort(persons);
        
        System.assertEquals('BBB', persons[0].lastName);
        System.assertEquals(30, persons[5].age);

    }
}
