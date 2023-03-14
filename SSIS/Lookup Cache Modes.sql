
Lookup Cache Modes

Full Cache Mode: it fully loads the lookup table (reference dataset) in memory before executing the lookup transformation. It is the only available mode using a cache connection manager.

Partial Cache Mode: the row is cached into the SSIS lookup cache only in the case when there is a subsequent match. Once the cache gets full, SSIS automatically starts removing
 

existing rows based on the match and usage stats. After that, new matching rows are loaded into the lookup cache.

No Cache Mode:the lookup data is generated and loaded during the package execution. No data is stored within the cache memory.
