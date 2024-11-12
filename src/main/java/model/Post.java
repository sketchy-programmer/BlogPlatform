package model;

import java.sql.Timestamp;

public class Post {
    private int postId;
    private String title;
    private String content;
    private int authorId;
    private Timestamp createdAt;

    // Constructor
    public Post() {}

    public Post(int postId, String title, String content, int authorId, Timestamp createdAt) {
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.authorId = authorId;
        this.createdAt = createdAt;
    }

    // Getters and Setters
    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
}
