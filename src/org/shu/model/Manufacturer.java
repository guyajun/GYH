package org.shu.model;

/**
 * Manufacturer entity. @author MyEclipse Persistence Tools
 */

public class Manufacturer implements java.io.Serializable {
    
    // Fields
    
    private Integer id;
    private String name;
    private String date;
    private String url;
    
    // Constructors
    
    /** default constructor */
    public Manufacturer() {
    }
    
    /** full constructor */
    public Manufacturer(String name, String date, String url) {
        this.name = name;
        this.date = date;
        this.url = url;
    }
    
    // Property accessors
    
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getDate() {
        return this.date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    
}