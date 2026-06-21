\# Module 01 Quiz - Design Patterns and Principles



\## 1. What are SOLID principles?



SOLID principles are five object-oriented design principles used to make software clean, flexible, reusable, and maintainable.



The five SOLID principles are:

\- Single Responsibility Principle

\- Open/Closed Principle

\- Liskov Substitution Principle

\- Interface Segregation Principle

\- Dependency Inversion Principle



\---



\## 2. What is the Single Responsibility Principle?



The Single Responsibility Principle says that a class should have only one reason to change.



It means a class should perform only one responsibility.



Example:

A class used for generating reports should not also handle database saving. Report generation and database saving should be separate responsibilities.



\---



\## 3. What is the Open/Closed Principle?



The Open/Closed Principle says that software entities should be open for extension but closed for modification.



It means we should be able to add new functionality without changing existing tested code.



Example:

Instead of modifying an existing payment class every time a new payment method is added, we can create separate classes for each payment method.



\---



\## 4. What is the Liskov Substitution Principle?



The Liskov Substitution Principle says that objects of a parent class should be replaceable with objects of child classes without breaking the program.



Example:

If a method accepts a Bird object, then any subclass of Bird should work correctly in that method.



\---



\## 5. What is the Interface Segregation Principle?



The Interface Segregation Principle says that a class should not be forced to implement methods that it does not use.



It is better to create small and specific interfaces instead of one large interface.



Example:

Instead of one big Machine interface with print, scan, and fax methods, we can create separate Printer, Scanner, and Fax interfaces.



\---



\## 6. What is the Dependency Inversion Principle?



The Dependency Inversion Principle says that high-level modules should not depend on low-level modules. Both should depend on abstractions.



It helps to reduce tight coupling between classes.



Example:

A service class should depend on an interface instead of directly depending on a database class.



\---



\## 7. What is a design pattern?



A design pattern is a reusable solution to a common software design problem.



Design patterns help developers write flexible, reusable, and maintainable code.



\---



\## 8. What are the main types of design patterns?



The main types of design patterns are:



1\. Creational Design Patterns

2\. Structural Design Patterns

3\. Behavioral Design Patterns



\---



\## 9. What are creational design patterns?



Creational design patterns deal with object creation.



Examples:

\- Singleton Pattern

\- Factory Method Pattern

\- Builder Pattern



\---



\## 10. What is the Singleton Pattern?



The Singleton Pattern ensures that only one object of a class is created and provides a global access point to that object.



Example:

A Logger class can be implemented as a Singleton because the application may need only one logger instance.



\---



\## 11. What is the Factory Method Pattern?



The Factory Method Pattern provides an interface for creating objects but allows subclasses or factory classes to decide which object to create.



Example:

A document factory can create Word, PDF, or Excel documents based on the requirement.



\---



\## 12. What are structural design patterns?



Structural design patterns deal with how classes and objects are arranged or combined to form larger structures.



Examples:

\- Adapter Pattern

\- Decorator Pattern

\- Proxy Pattern



\---



\## 13. What are behavioral design patterns?



Behavioral design patterns deal with communication and interaction between objects.



Examples:

\- Observer Pattern

\- Strategy Pattern

\- Command Pattern



\---



\## 14. What is MVC?



MVC stands for Model-View-Controller.



It is an architectural pattern used to separate an application into three parts:



\- Model: Handles data and business logic

\- View: Handles user interface

\- Controller: Handles user input and connects Model and View



\---



\## 15. What is Dependency Injection?



Dependency Injection is a technique where required objects are provided from outside instead of creating them inside the class.



It improves flexibility, testability, and reduces tight coupling.



\---



\## Conclusion



In this module, I learned about SOLID principles and commonly used design patterns. I also implemented Singleton Pattern and Factory Method Pattern using Java.

