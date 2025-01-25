# Spring MVC CRUD Application

This project is a **Spring MVC CRUD Application** for managing products. It uses JSP for views, Hibernate for ORM, and MySQL as the database. The application is deployed on **Apache Tomcat 9** and is designed to demonstrate CRUD operations in a web application.

## Features

- **Create, Read, Update, Delete** operations for products.
- User-friendly interface with JSP pages.
- Integration with **Hibernate** for ORM and database operations.
- MySQL as the backend database.
- Modular design following the MVC architecture.

## Technologies Used

- **Spring Framework 5.3.30**
- **Hibernate 5.6.15**
- **MySQL 8.0**
- **Apache Tomcat 9**
- **Java 8**
- **JSP and JSTL** for the frontend

## Prerequisites

To run this project, ensure you have the following installed:

- **Java Development Kit (JDK) 8 or higher**
- **Apache Maven 3.6+**
- **MySQL 8.0**
- **Apache Tomcat 9**

## Getting Started

### 1. Clone the Repository

```bash
git clone [https://github.com/yourusername/your-repo-name.git](https://github.com/ahmedabdelsamie14/Spring-MVC-CRUD-Project)
cd your-repo-name
```

### 2. Configure the Database

1. Create a database named `productdb` in MySQL.
2. Run the following SQL script to create the `products` table:

```sql

CREATE DATABASE IF NOT EXISTS productdb;
USE productdb;


CREATE TABLE IF NOT EXISTS product (
                                       id INT AUTO_INCREMENT PRIMARY KEY,
                                       name VARCHAR(255) NOT NULL
    );


CREATE TABLE IF NOT EXISTS product_details (
                                               id INT AUTO_INCREMENT PRIMARY KEY,
                                               product_id INT NOT NULL,
                                               expiration_date DATE NOT NULL,
                                               manufacturer VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    available TINYINT(1) NOT NULL DEFAULT 0,
    UNIQUE (product_id),
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
    );

INSERT INTO product (name) VALUES ('Product 1'), ('Product 2'), ('Product 3');

INSERT INTO product_details (product_id, expiration_date, manufacturer, price, available)
VALUES
    (1, '2023-12-31', 'Manufacturer A', 19.99, 1),
    (2, '2024-06-30', 'Manufacturer B', 29.99, 0),
    (3, '2023-11-15', 'Manufacturer C', 9.99, 1);
```

3. Update the `application.properties` file in the project with your database credentials:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/productdb
spring.datasource.username=your-username
spring.datasource.password=your-password
```

### 3. Build the Project

Run the following Maven command to build the project:

```bash
mvn clean install
```

### 4. Deploy to Tomcat

1. Copy the generated `.war` file from the `target` directory to the `webapps` directory of your Tomcat server.
2. Start the Tomcat server.
3. Access the application at `http://localhost:8080/SpringMvcCrudApp`.

## Project Structure

```
SpringMvcCrudApp
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.example.app
│   │   │       ├── config       # Spring Configuration Classes
│   │   │       ├── controller   # Controllers
│   │   │       ├── model        # Entity Classes
│   │   │       ├── repository   # DAO Layer
│   │   │       └── service      # Service Layer
│   │   ├── resources
│   │   │   └── application.properties  # Database Configuration
│   │   └── webapp
│   │       ├── WEB-INF
│   │       │   ├── views        # JSP Files
│   │       │   └── web.xml      # Deployment Descriptor
├── pom.xml                      # Maven Dependencies
└── README.md
```

## Endpoints

### 1. Product Management

| HTTP Method | Endpoint          | Description            |
|-------------|-------------------|------------------------|
| GET         | `/products`       | View all products      |
| GET         | `/products/{id}`  | View product details   |
| POST        | `/products`       | Add a new product      |
| PUT         | `/products/{id}`  | Update an existing product |
| DELETE      | `/products/{id}`  | Delete a product       |

## Development Workflow

1. **Backend Development**: Implement controllers, services, and repositories.
2. **Frontend Development**: Design JSP views using HTML, CSS, and JSTL.
3. **Testing**: Use Postman or a browser to test endpoints.
4. **Deployment**: Deploy the `.war` file to Tomcat.

## Troubleshooting

- **JSP Pages Not Loading**: Ensure `tomcat-embed-jasper` dependency is included in `pom.xml`.
- **Database Connection Issues**: Verify MySQL is running and `application.properties` has correct credentials.
- **Dependency Issues**: Run `mvn clean install` to refresh dependencies.

---

### Author
Ahmed Abdelsamie

