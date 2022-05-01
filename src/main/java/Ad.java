/**
 * Java Bean
 *
 * Used to create an Ad Object
 */

public class Ad {

    // F
    private long id;
    private long userId;
    private String title;
    private String description;

    // CON
    public Ad() {
    }
    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    // GETS
    public long getId() {
        return id;
    }
    public long getUserId() {
        return userId;
    }
    public String getTitle() {
        return title;
    }
    public String getDescription() {
        return description;
    }


    // SETS
    public void setId(long id) {
        this.id = id;
    }
    public void setUserId(long userId) {
        this.userId = userId;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setDescription(String description) {
        this.description = description;
    }
}
