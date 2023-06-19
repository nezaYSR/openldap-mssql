CREATE TABLE users (
   id INT IDENTITY(1,1) PRIMARY KEY,
   fullname VARCHAR(50) NOT NULL,
   email VARCHAR(50) NOT NULL,
   password VARCHAR(50) NOT NULL,
   gender VARCHAR(10) CHECK (gender IN ('male', 'female')) NOT NULL,
   active BIT NOT NULL DEFAULT 1,
   nik VARCHAR(10) UNIQUE,
   created_at DATE DEFAULT GETDATE(),
   modified_at DATETIME,
   deleted_at DATETIME
);



INSERT INTO users (nik, fullname, email, password, gender, created_at)
VALUES ('21343265','John Doe', 'johndoe@example.com', 'mypassword', 'Male', GETDATE());