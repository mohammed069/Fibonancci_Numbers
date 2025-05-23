class Algorithms {
  static List<BigInt?> memoList = [];

  static int recursiveFib(int n) {
    if (n <= 1) return n;
    return recursiveFib(n - 1) + recursiveFib(n - 2);
  }

  static BigInt memoizedFib(int n) {
    if (memoList.length <= n) {
      memoList.length = n + 1;
    }

    if (memoList[n] != null) return memoList[n]!;

    if (n <= 1) return BigInt.from(n);

    memoList[n] = memoizedFib(n - 1) + memoizedFib(n - 2);
    return memoList[n]!;
  }

  static BigInt tabulatedFib(int n) {
    if (n <= 1) return BigInt.from(n);
    List<BigInt> tabulatedList = List.filled(
      n + 1,
      BigInt.zero,
    ); //this create a list with size n+1 and fill it with 0
    tabulatedList[0] = BigInt.from(0);
    tabulatedList[1] = BigInt.from(1);
    for (int i = 2; i <= n; i++) {
      tabulatedList[i] = tabulatedList[i - 1] + tabulatedList[i - 2];
    }
    return tabulatedList[n];
  }

  ///////////////////////////////////////////////////////////////
  static int calculateTime(Function fn, int n, {int repeat = 1000}) {
    //fn is the function to be measured
    Stopwatch stopwatch = Stopwatch()..start();
    //here we are measuring the time taken by the function fn to execute
    for (int i = 0; i < repeat; i++) {
      fn(n); //call the function fn with n as the argument
    }
    stopwatch.stop();
    return stopwatch.elapsedMicroseconds ~/
        repeat; //return the average time taken by the function to execute
  }
}
