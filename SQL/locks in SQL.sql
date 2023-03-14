
Ques.41. What are locks in SQL?

Ans. Locks in SQL are used for maintaining database integrity in case of concurrent execution of the same piece of data.

Ques.42. What are the different types of locks in the database?

Ans. The different types of locks in database are-

Shared locks - Allows data to be read-only(Select operations), prevents the data to be updated when in shared lock.

Update locks - Applied to resources that can be updated. There can be only one update lock on a data at a time.

Exclusive locks - Used to lock data being modifed(INSERT, UPDATE, or DELETE) by one transaction thus ensuring that multiple updates cannot be made to the same resource at the same time.

Intent locks - A notifcation mechanism using which a transaction conveys that intends to acquire lock on data.

Schema locks- Used for operations when schema or structure of the database is required to be updated.

Bulk Update locks - Used in case of bulk operations when the TABLOCK hint is used.

