# GOAL

This is a demo to show-case how to order a given `Model` using two columns as parameters.

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## The DB Schema
![schema](https://github.com/andrerferrer/order-by-two-attributes-demo/blob/master/db/db%20schema%20drawing.png?raw=true)

## What are we going to do?
We will write a query to filter Meetings by the `Date` of the Availability first and THEN by the `Time` of the Availability.

e.g.
if we had three Meetings: 

1st - scheduled on the 25th of September at 13h

2nd - scheduled on the 25th of September at 12h

3rd - scheduled on the 24th of September at 18h

The correct order would be: [3, 2, 1]

But how can we create a SQL query to do it?

Like this:

`Meeting.joins(:availability).order('date ASC, time')`

[If you want to know more, check this.](https://learnsql.com/cookbook/how-to-order-by-two-columns-in-sql/)
[And this](https://stackoverflow.com/questions/15628277/sql-order-by-multiple-columns)
[Also this](https://www.sqlservertutorial.net/sql-server-basics/sql-server-order-by/)

## If you want to test it out

Just run 
```
rails db:create db:migrate db:seed:replant
rails console
```

And then play around with your code.

---

Aaand we're good to go 🤓

Good Luck and Have Fun
