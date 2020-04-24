import "dart:io";

main(List<String> args) {
  print("main function start");
  getNetworkData().then((value){
    print(value);
  });
  print("main function end");
}

Future<String> getNetworkData()  async {
  var result = await Future.delayed(Duration(seconds: 3), () {
    return "network data";
  });

  return  "请求到的数据：" + result;
}