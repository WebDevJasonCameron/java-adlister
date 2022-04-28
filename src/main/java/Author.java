import java.io.Serializable;

public class Author implements Serializable {

    // F
    private int id;
    private String authorName;

    // CON
    public Author() {
    }
    public Author(int id, String authorName) {
        this.id = id;
        this.authorName = authorName;
    }

    // GETS
    public int getId() {
        return id;
    }
    public String getAuthorName() {
        return authorName;
    }
    // SETS
    public void setId(int id) {
        this.id = id;
    }
    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }
}  //  <--END
