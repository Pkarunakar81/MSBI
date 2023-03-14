

SCD: -


This component is used if you want insert or update data records in dimension tables which changes slowly..(New, Changed or UnChanged)

If no record matches then it will treat as New Record or If record matches then it compares attributes for changed attributes if data looks updated then it updates record or if not then it leaves as it is unchanged.

SCD is defined as slowly changing dimensions, and it applies to the cases where record changes over time.

There are three types of SCD and they are as follows:

SCD 1(Changing Attribute) – The new record replaces the original record used when there is no need to store historical data in the dimension table. SCD 2(Historical Attribute) – A new record is added to the existing customer dimension table

●	Versioning

●	Flagging

●	Effective Date

SCD 3 – A original data is modified to include new data
only the current status and previous status of the row is maintained in the table.
To track these changes two separate columns are created in the table.
Type 4: Combination of types 1 and 2.

The current data is maintained in the dimension table and the history is stored in another table.

This type of dimension adds a lot of complexity. https://www.folkstalk.com/2012/03/slowly-changing-dimensions-scd-types.html






SCD Type	Summary



Type 0	Ignore any changes and audit the changes.

 

Type 1	Overwrite the changes



Type 2	History will be added as a new row.



Type 3	History will be added as a new column.



Type 4	A new dimension will be added



Type 6	Combination of Type 2 and Type 3

https://www.sqlshack.com/implementing-slowly-changing-dimension s-scds-in-data-warehouses/

Type 2 and Type 6 are the most commonly used dimension in a data warehouse.
 