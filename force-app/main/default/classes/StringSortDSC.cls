public class StringSortDSC implements ISortable {
    private String fieldName;

    public StringSortDSC(String fieldName) {
        this.fieldName = fieldName;
    }

    public Integer customSort(Object obj1, Object obj2) {
        BaseObject bo1 = (BaseObject) obj1;
        BaseObject bo2 = (BaseObject) obj2;

        if (bo1.get(fieldName) == bo2.get(fieldName)) {
            return 0;
        }
        if ((String)bo1.get(fieldName) > (String)bo2.get(fieldName)) {
            return -1;
        }

        return +1;
    }
   
}
