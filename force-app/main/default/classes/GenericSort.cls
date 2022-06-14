public class GenericSort implements Comparable {

    private final Object objectToCompare;
    private List<ISortable> sortMethods = new List<ISortable>();

    @SuppressWarnings('PMD.EmptyStatementBlock')
    public GenericSort() {}

    public GenericSort(Object objectToCompare) {
        this.objectToCompare = objectToCompare;
    }

    public GenericSort addSortMethod(ISortable sortMethod) {
        this.sortMethods.add(sortMethod);
        return this;
    }

    public Integer compareTo(Object otherObject) {
        GenericSort other = (GenericSort) otherObject;
        Integer result;
        for (ISortable sortMethod : this.sortMethods) {
            result = sortMethod.customSort(this.objectToCompare, other.objectToCompare);
            if (result == 0) {
                continue;
            } else {break;}
        }

        return result;
    }

    public void makeSort(List<Object> listToSort) {
        List<GenericSort> objectWrapper = new List<GenericSort>();
        for (Object objectToCompare : listToSort) {
            GenericSort sorter = new GenericSort(objectToCompare);
            sorter.sortMethods = this.sortMethods;
            objectWrapper.add(sorter);
        }
        objectWrapper.sort();
    
        for (Integer i = 0; i < listToSort.size(); i++) {
            listToSort[i] = objectWrapper[i].objectToCompare;
        }
    }  
    
}
