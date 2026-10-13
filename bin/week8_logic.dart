
String checkStudentProgress(List<double> scores, int completed, int total) {
  if (scores.isEmpty) {
    throw ArgumentError('At least one score is required.');
  }
  if (total <= 0 || completed < 0 || completed > total) {
    throw ArgumentError('Activity counts must be valid.');
  }

  double sum = 0;
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] < 0 || scores[i] > 100) {
      throw ArgumentError('Scores must be between 0 and 100.');
    }
    sum += scores[i];
    print('Score ${i + 1}: ${scores[i].toStringAsFixed(2)}');
  }

  double average = sum / scores.length;
  print('Average grade: ${average.toStringAsFixed(2)}');
  print('Activities completed: $completed of $total');

  if (average >= 75 && completed == total) {
    return 'Passed and all activities completed';
  } else if (average >= 75) {
    return 'Passed, but ${total - completed} activities remaining';
  } else {
    return 'Needs improvement in grades';
  }
}

void main() {
  print('STUDENT GRADE AND ACTIVITY PROGRESS CHECKER');
  print('Student: Ashanti P. Artista');

  try {
    print('\nValid input test:');
    String result = checkStudentProgress([87.5, 92.0], 8, 10);
    print('Result: $result');
  } catch (error) {
    print('Input error: $error');
  }

  try {
    print('\nInvalid input test:');
    String result = checkStudentProgress([87.5, 120.0], 8, 10);
    print('Result: $result');
  } catch (error) {
    print('Input error: $error');
  }
}
