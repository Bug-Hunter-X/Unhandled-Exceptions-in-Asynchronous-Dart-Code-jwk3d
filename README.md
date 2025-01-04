# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart:  unhandled exceptions within asynchronous operations. The example shows how exceptions can be mishandled, leading to unexpected behavior or silent failures, and shows how to fix it.  Proper exception handling is crucial for robust applications.

## The Problem

The provided `fetchData` function uses `async` and `await` to perform a network request. The `try-catch` block catches exceptions but the `rethrow` statement might not be handled further up the call stack unless there is a top level exception handler.

## The Solution

The solution file demonstrates best practice of handling exceptions, providing clear error messages and ensuring graceful failure in the event of network problems or other issues.