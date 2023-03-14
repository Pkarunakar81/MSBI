9.	How we can handle Early Arriving Facts.

Late-arriving dimensions (sometimes called early-arriving facts) occur when you have dimension data arriving in the data warehouse later than the fact data that references that dimension.

The fact row will be held in the suspense table until the associated dimension record has been processed.