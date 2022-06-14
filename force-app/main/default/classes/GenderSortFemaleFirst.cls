public class GenderSortFemaleFirst implements ISortable {
    private String fieldName;

    public GenderSortFemaleFirst(String fieldName) {
        this.fieldName = fieldName;
    }

    public Integer customSort(Object obj1, Object obj2) {
        BaseObject bo1 = (BaseObject) obj1;
        BaseObject bo2 = (BaseObject) obj2;
        
        if ((String)bo1.get(fieldName) == (String)bo2.get(fieldName)) {
            return 0;
        }
        if ((String)bo1.get(fieldName) == Gender.FEMALE.name()) {
            return -1;
        }

        return 1;
    }

}
