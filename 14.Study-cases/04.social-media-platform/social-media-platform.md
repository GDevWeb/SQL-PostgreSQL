### **Objective**

Design and implement a database schema for a social media platform that tracks users, posts, comments, likes, and followers. Use this schema to practice creating tables, inserting data, and writing queries.

---

### **Schema Design**

#### 1. **Users Table**

- `user_id` (Primary Key): Unique identifier.
- `username`: User's name, unique.
- `email`: Email address, unique.
- `created_at`: Account creation timestamp.

#### 2. **Posts Table**

- `post_id` (Primary Key): Unique identifier.
- `user_id` (Foreign Key): ID of the user who created the post.
- `content`: Text of the post.
- `created_at`: Post creation timestamp.

#### 3. **Comments Table**

- `comment_id` (Primary Key): Unique identifier.
- `post_id` (Foreign Key): ID of the post being commented on.
- `user_id` (Foreign Key): ID of the user who made the comment.
- `content`: Text of the comment.
- `created_at`: Comment creation timestamp.

#### 4. **Likes Table**

- `like_id` (Primary Key): Unique identifier.
- `post_id` (Foreign Key): ID of the liked post.
- `user_id` (Foreign Key): ID of the user who liked the post.
- `created_at`: Like timestamp.

#### 5. **Followers Table**

- `follower_id` (Primary Key): Unique identifier.
- `user_id` (Foreign Key): ID of the user being followed.
- `follower_user_id` (Foreign Key): ID of the user following.
- `created_at`: Follow timestamp.

---

### **Data Population**

We’ll generate sample data for:

1. Users: 10–20 users.
2. Posts: 20–30 posts spread across users.
3. Comments: 50–100 comments spread across posts and users.
4. Likes: 100–200 likes.
5. Followers: Relationships between users (e.g., each user follows 2–5 others).

---

### **Sample Queries**

1. **Retrieve all posts with their author and creation time.**
2. **Find the total number of comments per post.**
3. **Get the top 5 most-liked posts.**
4. **List all users who follow a specific user.**
5. **Retrieve all comments on a specific post, including the commenter’s name.**
6. **Find posts created by a specific user.**
7. **Count the number of posts, likes, and comments per user.**

---

### **Deliverables**

1. SQL scripts to:
   - Create the tables.
   - Populate the tables with sample data.
   - Execute the queries above.
2. A logical explanation of the schema and relationships.

---

Would you like me to start by generating the schema creation SQL scripts or focus on specific queries? Let me know how you'd like to proceed!
