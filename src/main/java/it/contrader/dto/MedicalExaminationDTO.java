package it.contrader.dto;

public class MedicalExaminationDTO {
    private int id;

    private String typology;

    private double cost;

    private long code;

    private String img;

    public MedicalExaminationDTO(int id, String typology, double cost, long code, String img) {
        this.id = id;
        this.typology = typology;
        this.cost = cost;
        this.code = code;
        this.img = img;
    }

    public MedicalExaminationDTO(String typology, double cost, long code, String img) {
        this.typology = typology;
        this.cost = cost;
        this.code = code;
        this.img = img;
    }

    public MedicalExaminationDTO() {
    }

    public MedicalExaminationDTO(String typology, double cost, long code) {
        this.typology = typology;
        this.cost = cost;
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypology() {
        return typology;
    }

    public void setTypology(String typology) {
        this.typology = typology;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public long getCode() {
        return code;
    }

    public void setCode(long code) {
        this.code = code;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
