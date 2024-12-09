# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **37. How Do You Store Files in PostgreSQL?**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28653362#overview)
- [schema - what about files ? ](img/what-about-files.png)
- [schema - not storing the files in DB](img/not-storing-the-files-in-DB.png)

---

#### **Overview**

Storing files (e.g., images, PDFs, documents) in a database can be achieved in PostgreSQL through a few different methods. The choice depends on factors like **file size**, **performance requirements**, and how frequently the files will be accessed.

PostgreSQL supports storing files using:

1. **Binary Large Objects (BLOBs)** via the `BYTEA` data type.
2. **Large Objects (LOs)** via the `lo` (Large Object) storage mechanism.
3. **File Paths** to store file references instead of the actual files.

---

### **1. Storing Files Using `BYTEA`**

The **`BYTEA`** data type allows you to store binary data directly in a table. It is suitable for storing smaller files (e.g., up to a few MB).

#### **Example: Create a Table with a `BYTEA` Column**

```sql
CREATE TABLE files (
    FileID SERIAL PRIMARY KEY,
    FileName VARCHAR(255),
    FileData BYTEA
);
```

#### **Inserting a File into the Table**

You can insert a file into a `BYTEA` column by converting the file into a byte stream.

```sql
INSERT INTO files (FileName, FileData)
VALUES ('example.pdf', pg_read_binary_file('/path/to/example.pdf'));
```

#### **Querying a File**

```sql
SELECT FileName, encode(FileData, 'base64') AS FileBase64
FROM files
WHERE FileID = 1;
```

#### **Considerations**:

- **Pros**: Simple to use, stores files directly in the table.
- **Cons**: Not efficient for very large files (e.g., files over 10 MB).

---

### **2. Storing Files Using Large Objects (LOs)**

PostgreSQL provides a **Large Object (LO)** interface for storing large binary data (e.g., files larger than 10 MB). LOs are stored in a separate system table and referenced by an `OID` (Object Identifier).

#### **Creating a Table with a Large Object Reference**

```sql
CREATE TABLE large_files (
    FileID SERIAL PRIMARY KEY,
    FileName VARCHAR(255),
    FileOID OID
);
```

#### **Inserting a File Using `lo_import`**

You can use the `lo_import` function to store a file as a large object.

```sql
INSERT INTO large_files (FileName, FileOID)
VALUES ('large_example.pdf', lo_import('/path/to/large_example.pdf'));
```

#### **Exporting a File Using `lo_export`**

To retrieve the file and save it to the filesystem:

```sql
SELECT lo_export(FileOID, '/path/to/exported_large_example.pdf')
FROM large_files
WHERE FileID = 1;
```

#### **Considerations**:

- **Pros**: Efficient for large files (greater than 10 MB).
- **Cons**: Requires additional management of OIDs and large object operations.

---

### **3. Storing File Paths**

Instead of storing the actual file in the database, you can store the **file path** where the file is located on the server's filesystem.

#### **Example: Create a Table for File Paths**

```sql
CREATE TABLE file_paths (
    FileID SERIAL PRIMARY KEY,
    FileName VARCHAR(255),
    FilePath VARCHAR(500)
);
```

#### **Inserting a File Path**

```sql
INSERT INTO file_paths (FileName, FilePath)
VALUES ('report.pdf', '/files/reports/report.pdf');
```

#### **Querying a File Path**

```sql
SELECT FileName, FilePath
FROM file_paths
WHERE FileID = 1;
```

#### **Considerations**:

- **Pros**: Efficient for large files and reduces database size.
- **Cons**: Relies on filesystem integrity and may require proper file permissions.

---

### **Comparison of Methods**

| **Method**        | **Use Case**                 | **Pros**                       | **Cons**                          |
| ----------------- | ---------------------------- | ------------------------------ | --------------------------------- |
| **`BYTEA`**       | Small files (up to a few MB) | Simple to use, stores in table | Not suitable for large files      |
| **Large Objects** | Large files (>10 MB)         | Efficient for large files      | Requires special LO functions     |
| **File Paths**    | Very large files             | Lightweight, reduces DB size   | Relies on filesystem availability |

---

### **Best Practices**

1. **For Small Files**:

   - Use **`BYTEA`** if the files are typically a few MB or less.

2. **For Large Files**:

   - Use **Large Objects** for files larger than 10 MB.

3. **For Very Large Files** or When File Sharing is Needed:

   - Store the files on the filesystem and save their paths in the database.

4. **Security Considerations**:
   - Ensure proper **file permissions** when using file paths.
   - Use encryption for sensitive files stored in the database.

---

### **Exercises**

#### **Exercise 1: Create a Table and Insert a Small File Using `BYTEA`**

1. Create a table for storing files with a `BYTEA` column:

   ```sql
   CREATE TABLE documents (
       DocID SERIAL PRIMARY KEY,
       DocName VARCHAR(255),
       DocData BYTEA
   );
   ```

2. Insert a file into the table:

   ```sql
   INSERT INTO documents (DocName, DocData)
   VALUES ('sample.txt', pg_read_binary_file('/path/to/sample.txt'));
   ```

#### **Exercise 2: Create a Table and Insert a File Path**

1. Create a table for storing file paths:

   ```sql
   CREATE TABLE file_storage (
       FileID SERIAL PRIMARY KEY,
       FileName VARCHAR(255),
       FilePath VARCHAR(500)
   );
   ```

2. Insert a file path:

   ```sql
   INSERT INTO file_storage (FileName, FilePath)
   VALUES ('report.pdf', '/home/user/files/report.pdf');
   ```

---

### **Summary**

- **`BYTEA`**: Best for small files stored directly in the database.
- **Large Objects**: Ideal for large files, managed through OIDs.
- **File Paths**: Efficient for very large files stored externally.

Choosing the right method depends on your **file size requirements** and **system constraints**.

Let me know if you need further clarification or additional examples! 😊
