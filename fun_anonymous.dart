main(List<String> args) {
  var movies = ['1', '2', '3', '4'];

  // 1.有名函数
  printElement(item) {
    print(item);
  }
  movies.forEach(printElement);

  //2.匿名函数
  movies.forEach((item) {
    print(item);
  });
  //箭头语法
  movies.forEach((item) => print(item));
}