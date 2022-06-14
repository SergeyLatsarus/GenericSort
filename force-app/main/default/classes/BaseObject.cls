public abstract class BaseObject {

    public Object get(String propertyName) {

        String serializedObject = Json.serialize(this);
        Map<String, Object> untypedObject = (Map<String, Object>)JSON.deserializeUntyped(serializedObject);

        return untypedObject.get(propertyName);
        
    }

}
