package model;

public class Canzone {
    private int id;
    private String cantante, titolo, note, noteDurata, intervalli, url, urlM;

    public Canzone() {

    }

    public Canzone(int id, String cantante, String titolo, String note, String noteDurata, String intervalli, String url, String urlM){
        this.id=id;
        this.cantante=cantante;
        this.titolo=titolo;
        this.note=note;
        this.noteDurata=noteDurata;
        this.intervalli=intervalli;
        this.url = url;
        this.urlM = urlM;
    }

    public String getCantante() {
        return cantante;
    }

    public void setCantante(String cantante) {
        this.cantante = cantante;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getNoteDurata() {
        return noteDurata;
    }

    public void setNoteDurata(String noteDurata) {
        this.noteDurata = noteDurata;
    }

    public String getIntervalli() {
        return intervalli;
    }

    public void setIntervalli(String intervalli) {
        this.intervalli = intervalli;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitoloArtista (){
        return titolo+" - "+cantante;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrlM() {
        return urlM;
    }

    public void setUrlM(String urlM) {
        this.urlM = urlM;
    }
}
