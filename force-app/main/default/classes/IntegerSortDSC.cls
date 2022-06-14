public class IntegerSortDSC implements ISortable {
    private String fieldName;

    public IntegerSortDSC(String fieldName) {
        this.fieldName = fieldName;
    }

    public Integer customSort(Object obj1, Object obj2) {
        BaseObject bo1 = (BaseObject) obj1;
        BaseObject bo2 = (BaseObject) obj2;

        if ((Integer)bo1.get(fieldName) == (Integer)bo2.get(fieldName)) {
            return 0;
        }
        if ((Integer)bo1.get(fieldName) > (Integer)bo2.get(fieldName)) {
            return -1;
        }

        return 1;

    }

}
