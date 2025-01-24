Admin_Panel_App
Project Overview
The Admin Panel App is a comprehensive management tool designed to streamline administrative tasks and enhance the control and efficiency of various operations within your system. Tailored for administrative users, the application provides a centralized hub to manage and monitor crucial aspects of your business or platform. by using Spring MVC , Hibernate , Maven and MYSQL DB

Key Features
Product Management
Take control of your product catalog with intuitive features for adding, updating, and removing products. The application supports seamless integration with databases, such as MySQL, and utilizes Hibernate for efficient data handling.

CRUD Operations
The application facilitates the following CRUD operations for managing product details:

View homePage
The home page is reached by going to the link: http://localhost:8080/ GitHub Logo in backend the request send to the method in controller and get response in list of product page


Create (Add)
in backend : after clicking the button add product the request send to the controller which handle bussiness logic for insertion on product and go to dao layer and save product into database

Read (View)
To view details of a product: The home page is reached by going to the link: http://localhost:8080/viewDetails

Update
To update the details of an existing product:
The home page is reached by going to the link: http://localhost:8080/updateProduct

Delete
To delete a product from the system:
clicking into button delete in the backend : the request is send to method delete product in controller and this method handle operation that can delete on database and return the products after deleting
These operations are implemented using Spring MVC and Hibernate, ensuring a seamless and efficient management of product data within the Admin_Panel_App.

Technologies Used
Spring MVC
Hibernate
Maven
MYSQL DB
