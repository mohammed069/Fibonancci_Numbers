import 'package:algo_project/logic/algorithms.dart';
import 'package:algo_project/parameters.dart';

class Functions {
  static void calculateAndCompare() {
    Parameters.buffer.clear(); // Clear the buffer before writing
    Parameters.buffer1.clear(); // Clear the buffer before writing
    Parameters.buffer2.clear(); // Clear the buffer before writing
    Parameters.buffer3.clear(); // Clear the buffer before writing
    Parameters.buffer4.clear(); // Clear the buffer before writing

    // create a StringBuffer to store the result
    Parameters.buffer.writeln('Fibonacci(${Parameters.n})');
    Parameters.buffer4.write('More Info');

    if (Parameters.n <= 40) {
      int avgRec = Algorithms.calculateTime(
        Algorithms.recursiveFib,
        Parameters.n,
        repeat: 5,
      );
      int recValue = Algorithms.recursiveFib(Parameters.n);
      Parameters.recursiveTime = avgRec;
      Parameters.buffer1.write('Recursive:\n');
      Parameters.buffer1.writeln('Result = $recValue');
      Parameters.buffer1.write('Avg Time = $avgRec µs (5 runs)');
    } else {
      Parameters.buffer1.writeln('Recursive:');
      Parameters.buffer1.write('Skipped (n > 40 – too slow)');
    }

    Algorithms.memoList = [];
    int avgMemo = Algorithms.calculateTime(
      Algorithms.memoizedFib,
      Parameters.n,
    );
    int memoValue = Algorithms.memoizedFib(Parameters.n);
    Parameters.memoTime = avgMemo;

    int avgTab = Algorithms.calculateTime(
      Algorithms.tabulatedFib,
      Parameters.n,
    );
    int tabValue = Algorithms.tabulatedFib(Parameters.n);
    Parameters.tabTime = avgTab;

    Parameters.buffer2.writeln('Memoization:');
    Parameters.buffer2.writeln('Result = $memoValue');
    Parameters.buffer2.write('Avg Time = $avgMemo µs (1000 runs)');

    Parameters.buffer3.writeln('Tabulation:');
    Parameters.buffer3.writeln('Result = $tabValue');
    Parameters.buffer3.write('Avg Time = $avgTab µs (1000 runs)');
  }
}
