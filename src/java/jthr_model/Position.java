
package jthr_model;


public class Position {
    private int idpos;
    private String namepos;
    private String nrpos;
    private String description;
    private String requirements;

    public Position() {
    }

    public Position( String namepos, String nrpos, String description, String requirements) {
       
        this.namepos = namepos;
        this.nrpos = nrpos;
        this.description = description;
        this.requirements = requirements;
    }

    public int getIdpos() {
        return idpos;
    }

    public void setIdpos(int idpos) {
        this.idpos = idpos;
    }

    public String getNamepos() {
        return namepos;
    }

    public void setNamepos(String namepos) {
        this.namepos = namepos;
    }

    public String getNrpos() {
        return nrpos;
    }

    public void setNrpos(String nrpos) {
        this.nrpos = nrpos;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }
 

  
}
