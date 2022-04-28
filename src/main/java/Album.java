import java.io.Serializable;

public class Album implements Serializable {
    // F
    private String artist;
    private String name;
    private String releaseDate;
    private float sales;
    private String genre;

    // CON
    public Album() {
    }
    public Album(String artist, String name, String releaseDate, float sales, String genre) {
        this.artist = artist;
        this.name = name;
        this.releaseDate = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    // GETS
    public String getArtist() {
        return artist;
    }
    public String getName() {
        return name;
    }
    public String getReleaseDate() {
        return releaseDate;
    }
    public float getSales() {
        return sales;
    }
    public String getGenre() {
        return genre;
    }

    // SETS
    public void setArtist(String artist) {
        this.artist = artist;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }
    public void setSales(float sales) {
        this.sales = sales;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
}  //  <--END
