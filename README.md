# Prisoner Management System 🔒

## Introduction
The **Prisoner Management System** is a database-driven application built using Python and MySQL. It helps administrators manage prisoner records, including viewing, adding, modifying, and deleting prisoner details. Additionally, users can search for prisoner information based on their names.

---

## ✨ Features

### Administrator:
- Secure authentication with password protection.
- View all prisoner records.
- Add new prisoner records.
- Modify existing prisoner records.
- Delete prisoner records.
- Change the system password.

### User:
- View all prisoner records.
- Search for a prisoner by name.

---

## 🛜 Technologies Used
- **Programming Language**: Python
- **Database**: MySQL
- **Library**: `mysql-connector`

---

## 📊 Database Schema
The system manages prisoner records stored in the **PRISONER** table with the following fields:
- `SNO` (INT, Primary Key)
- `NAME` (VARCHAR)
- `CELLNO` (INT)
- `CRIME` (VARCHAR)
- `ADMISSIONDATE` (DATE)
- `SENTENCEPERIOD` (INT)
- `RELEASEDATE` (DATE, Auto-calculated)
- `MEDICALDETAILS` (VARCHAR)
- `FOOD` (VARCHAR)
- `VISITINGPRIVILEGES` (VARCHAR)

---

## 🛠 Setup Instructions

### 1. Install MySQL Connector:
Ensure you have MySQL and the required Python package installed:
```sh
pip install mysql-connector-python
```

### 2. Configure MySQL Database:
Create the database and table using MySQL:
```sql
CREATE DATABASE prisoner_db;
USE prisoner_db;

```

### 3. Update Database Credentials:
Modify the database connection details in the Python script:
```python
conn = mysql.connector.connect
(
    host='localhost',
    username='root',
    password='your_password',
    database='prisoner_db'
)
```

### 4. Run the Application:
Execute the Python script to start the application:
```sh
python Prisoner_Management.py
```

---

## 📝 Usage Guide

### Admin Access:
1. Select `A` for Admin.
2. Enter the correct password to access the system.
3. Choose from the menu options to View, Add, Modify, or Delete records.
4. Select `Q` to quit.

### User Access:
1. Select `U` for User.
2. Choose from the menu options to View or Search prisoner records.
3. Select `Q` to quit.

---

## 💭 Security Considerations
- Passwords are stored in a text file (`Password.Txt`). It is recommended to enhance security by implementing encryption.
- Ensure the database credentials are not exposed in the script.

---

## 🔮 Future Enhancements
- Implementing a GUI using Tkinter or Flask.
- Improving authentication with hashed passwords.
- Adding role-based access control.
- Integrating biometric authentication for enhanced security.

---

## Contributing 🤝

This is a personal learning project, but contributions and suggestions are welcome! 
<br> If you find any improvements, feel free to create a pull request. To contribute:

1. Fork the repository.

2. Create a new branch for your feature/bug fix.

3. Commit your changes and submit a pull request.

---

## 🚀 Author
Developed by **Anushka**. <br>
📧 [ab8991@srmist.edu.in](mailto:ab8991@srmist.edu.in)

---
