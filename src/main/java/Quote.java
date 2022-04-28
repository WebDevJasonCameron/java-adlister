import java.io.Serializable;

public class Quote implements Serializable {

    // F
    private String author;
    private String content;
    private int authorID;

    // CON
    public Quote() {
    }
    public Quote(String author, String content, int authorID) {
        this.author = author;
        this.content = content;
        this.authorID = authorID;
    }

    // GETS
    public String getAuthor() {
        return author;
    }
    public String getContent() {
        return content;
    }
    public int getAuthorID() {
        return authorID;
    }

    // SETS
    public void setAuthor(String author) {
        this.author = author;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public void setAuthorID(int authorID) {
        this.authorID = authorID;
    }
}  //  <--END
