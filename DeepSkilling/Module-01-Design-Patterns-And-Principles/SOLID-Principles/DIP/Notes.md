\# Dependency Inversion Principle



The Dependency Inversion Principle says that high-level modules should not depend on low-level modules. Both should depend on abstractions.



It means classes should depend on interfaces instead of concrete classes.



\## Example



A notification service should depend on a MessageService interface, not directly on EmailService.



\## Advantages



\- Reduces tight coupling

\- Improves flexibility

\- Makes code easier to test

\- Supports dependency injection

