

introduced with SQL Server 2005 and it replaced the DTS (Data Transformation Services) in SQL Server 2000.

SSIS used to store and manage their data in warehouses, and further extract and load it whenever required.

SSIS package: - organized set of connections such as control events, data flow elements, parameters, event handlers, variables and configurations.

SSIS packages are created in Business Intelligence Development Studio (also called BIDS in short).

used to automate the maintenance of SQL Server databases, update multidimensional cube data, and perform other functions.

components/parts of the SSIS package

●	Control Flow

●	Data Flow

●	Package Explorer

●	Event handler

Data Flow: - the flow of data pumping from the corresponding source to a target destination.

There are three components of data flow, such as Source, Transformation, and Destination.
●	Data Flow is the subset of control flow

●	There will be only one control flow while multiple dataflow can exist.

Control Flow: - to link and program different tasks using the logical connectors and control the elements

In SSIS, there are mainly three following types of control flow elements:

●	Tasks that provide functionalities (such as file system tasks,create backups, connect to FTP, execute scripts or SQL tasks, etc.) in packages.

●	Containers that provide structures (such as sequential, for loop, for each loop).

●	Precedence Constraints that join tasks, containers, and executable in a sequential control flow.
