Answer 1. 

product_category: holds the cross-relation between one or many products and one or many categories...

product: holds the products with id

Answer 2. 

a.     Set up data validation constraints in the database schema to enforce that only valid categories can be inserted or updated in the column. This could be done using 

check constraints or foreign key constraints.


b.    While inputing it, assign a type to it for example, if we are using input tag for it use attribute "type" and assign it to varchar, string etc.

In case any wrong datatype value is input,  an error will occur.