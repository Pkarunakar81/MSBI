
How to achieve parallelism in SSIS?

Parallelism is achieved using the MaxConcurrentExecutable property of the package. Its default is -1 and is calculated as the number of processors + 2.

Using the MaxConcurrent Executable property of the package. Its default is -1 and it is calculated as a number of processors +2