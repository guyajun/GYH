package org.tool;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
 
public class CommonParam {
    private String propertyFileName;
    private ResourceBundle resourceBundle;
    public CommonParam() {
        propertyFileName = "../SysConfig";
        resourceBundle = ResourceBundle.getBundle(propertyFileName);
    }
    public String getString(String key) {
        if (key == null || key.equals("") || key.equals("null")) {
            return "";
        }
        String result = "";
        try {
            result = resourceBundle.getString(key);
        } catch (MissingResourceException e) {
            e.printStackTrace();
        }
        return result;
    }
}