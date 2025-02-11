# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart asynchronous programming: insufficient error handling in `async` functions. The `bug.dart` file contains code that makes a network request and handles exceptions; however, the `rethrow` statement can lead to unhandled exceptions if not properly managed by the calling function.

The `bugSolution.dart` file provides a corrected version, where the exception is handled more robustly by the calling function, preventing unexpected crashes and providing better user experience. 

## How to Reproduce the Bug
1. Run `bug.dart`. 
2. Simulate a network error (e.g., disconnect from the internet).
3. Observe how the exception is handled (or not).

## Solution
The solution focuses on proper exception handling within the calling function, providing more context and improving application stability. Always handle exceptions appropriately to prevent application crashes and improve the user experience.