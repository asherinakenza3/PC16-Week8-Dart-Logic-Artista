# PC16 Week 8 — Dart Programming Fundamentals (Part 2)

**Student:** Ashanti P. Artista  
**Course:** PC16 – Mobile Development with Lab  
**Section:** 3.3 BSIT

## Scenario
The Student Grade and Activity Progress Checker calculates the average of a student's scores and checks whether the student passed and completed all activities.

## Requirements demonstrated
- **Conditional:** `if/else` determines the student's progress status.
- **Loop:** a `for` loop validates and prints each score.
- **Function:** `checkStudentProgress` accepts parameters and returns a `String` result.
- **Error handling:** `try/catch` handles an invalid score (120) without crashing.
- **Combined logic:** the loop and conditionals are used within the same function.

## Run in VS Code
With the Dart SDK installed, open a terminal in the project folder and run:

```powershell
dart run bin/week8_logic.dart
```

## Tests
- Valid: scores 87.5 and 92, 8 out of 10 activities complete.
- Invalid: score 120, which triggers a caught `ArgumentError`.

The included `expected_output.txt` is a reference. Verify against your actual terminal output before submission.

## Submission
Submit `bin/week8_logic.dart` or a GitHub repository link, depending on the instructor's directions.
