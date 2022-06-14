public class GenderSortMaleFirst implements ISortable {
    private String fieldName;

    public GenderSortMaleFirst(String fieldName) {
        this.fieldName = fieldName;
    }

    public Integer customSort(Object obj1, Object obj2) {
        BaseObject bo1 = (BaseObject) obj1;
        BaseObject bo2 = (BaseObject) obj2;
        
        if ((String)bo1.get(fieldName) == (String)bo2.get(fieldName)) {
            return 0;
        }
        if ((String)bo1.get(fieldName) == Gender.MALE.name()) {
            return -1;
        }

        return 1;

    }

}
