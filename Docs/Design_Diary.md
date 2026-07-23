Date:
Lesson:

What did we implement?

Why was it designed this way?

What did we learn?

Interview takeaway:




# Lesson 05

Date:
22 July 2026

## Objective

Create the application layer.

## Design Decision

Application code will never be written inside main.c.

All tasks will be created through APP_CreateTasks().

## Reason

Keeps main.c independent of application logic.

Improves scalability.

## Lessons Learned

Layered architecture separates hardware initialization from application behavior.