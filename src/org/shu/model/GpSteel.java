package org.shu.model;

/**
 * GpSteel entity. @author MyEclipse Persistence Tools
 */

public class GpSteel implements java.io.Serializable {
    
    // Fields
    
    private Integer id;
    private String gpType;
    private Double s6;
    private Double s10;
    private Double s12;
    private Double s16;
    private Double s18;
    private Double s18hrb400;
    private Double s20;
    private Double s20hrb400;
    private Double s22hrb400;
    private Double s25hrb400;
    private Double s28hrb400;
    private String date;
    
    // Constructors
    
    /** default constructor */
    public GpSteel() {
    }
    
    /** full constructor */
    public GpSteel(String gpType, Double s6, Double s10, Double s12, Double s16, Double s18, Double s18hrb400,
                   Double s20, Double s20hrb400, Double s22hrb400, Double s25hrb400, Double s28hrb400, String date) {
        this.gpType = gpType;
        this.s6 = s6;
        this.s10 = s10;
        this.s12 = s12;
        this.s16 = s16;
        this.s18 = s18;
        this.s18hrb400 = s18hrb400;
        this.s20 = s20;
        this.s20hrb400 = s20hrb400;
        this.s22hrb400 = s22hrb400;
        this.s25hrb400 = s25hrb400;
        this.s28hrb400 = s28hrb400;
        this.date = date;
    }
    
    // Property accessors
    
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getGpType() {
        return this.gpType;
    }
    
    public void setGpType(String gpType) {
        this.gpType = gpType;
    }
    
    public Double getS6() {
        return this.s6;
    }
    
    public void setS6(Double s6) {
        this.s6 = s6;
    }
    
    public Double getS10() {
        return this.s10;
    }
    
    public void setS10(Double s10) {
        this.s10 = s10;
    }
    
    public Double getS12() {
        return this.s12;
    }
    
    public void setS12(Double s12) {
        this.s12 = s12;
    }
    
    public Double getS16() {
        return this.s16;
    }
    
    public void setS16(Double s16) {
        this.s16 = s16;
    }
    
    public Double getS18() {
        return this.s18;
    }
    
    public void setS18(Double s18) {
        this.s18 = s18;
    }
    
    public Double getS18hrb400() {
        return this.s18hrb400;
    }
    
    public void setS18hrb400(Double s18hrb400) {
        this.s18hrb400 = s18hrb400;
    }
    
    public Double getS20() {
        return this.s20;
    }
    
    public void setS20(Double s20) {
        this.s20 = s20;
    }
    
    public Double getS20hrb400() {
        return this.s20hrb400;
    }
    
    public void setS20hrb400(Double s20hrb400) {
        this.s20hrb400 = s20hrb400;
    }
    
    public Double getS22hrb400() {
        return this.s22hrb400;
    }
    
    public void setS22hrb400(Double s22hrb400) {
        this.s22hrb400 = s22hrb400;
    }
    
    public Double getS25hrb400() {
        return this.s25hrb400;
    }
    
    public void setS25hrb400(Double s25hrb400) {
        this.s25hrb400 = s25hrb400;
    }
    
    public Double getS28hrb400() {
        return this.s28hrb400;
    }
    
    public void setS28hrb400(Double s28hrb400) {
        this.s28hrb400 = s28hrb400;
    }
    
    public String getDate() {
        return this.date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    
}