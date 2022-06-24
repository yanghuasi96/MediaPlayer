

import 'package:dio/dio.dart';
import 'config.dart';
import 'dart:async';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url,
      {String method = "get",
      Map<String, dynamic>? params,
      Interceptor? inter}) async {
    // 1.创建单独配置
    final options = Options(method: method);
// 2.添加第一个拦截器
    // 全局拦截器
    // 创建默认的全局拦截器
    Interceptor dInter = InterceptorsWrapper(onRequest: (option, handler) {
      // 1.在进行任何网络请求的时候, 可以添加一个loading显示

      // 2.很多页面的访问必须要求携带Token,那么就可以在这里判断是有Token

      // 3.对参数进行一些处理,比如序列化处理等
      print("拦截了请求");
    }, onResponse: (response, handler) {
      print("拦截了响应");
    }, onError: (error, handler) {
      print("拦截了错误");
    });
    List<Interceptor> inters = [dInter];

    // 请求单独拦截器
    if (inter != null) {
      inters.add(inter);
    }

    // 统一添加到拦截器中
    dio.interceptors.addAll(inters);

    // 2.发送网络请求
    try {
      Response response =
          await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }

  static download(String url) async {
    // var dio = Dio();
    // dio.interceptors.add(LogInterceptor());
    //
    // await download1(dio, url, '/Users/huasiyang/Downloads/123.png');
    // await download1(dio, url, (Headers headers) => './example/book1.jpg');
    // await download2(dio, url, '/Users/huasiyang/Downloads/321.jpg');
    /// 获取app文件地址
    // Directory storageDir = await getApplicationDocumentsDirectory();
    // String storagePath = storageDir.path;
    // if (ObjectUtil.isNotEmpty(emailContent.attachments[index].download) &&
    //     emailContent.attachments[index].download) {
    //   FilePickerResult result =
    //       await FilePicker.platform.pickFiles(allowMultiple: false);
    //
    //   return;
    // }
    //
    // final FileSystem fs = MemoryFileSystem();
    //
    // Map<String, dynamic> user = await SharedPrefercnes.getString('email_user');
    // userInfo = EmailUser.fromJson(user);
    // Attachments attachments = emailContent.attachments[index];
    // String downloadFile =
    //     '${Api.download_file}/?raw_name=${widget.mailBoxType}&uid=${widget.uid}&sid=${attachments.sid}';
    //
    // Map<String, dynamic> headers = {
    //   "Authorization": "JWT ${userInfo.data.emailToken}",
    //   'Accept': 'application/json, text/plain, */*',
    // };
    //
    // String url = Api.ip + downloadFile;

    // Dio dio = Dio();
    //
    // PermissionStatus status = await PermissionHandler()
    //     .checkPermissionStatus(PermissionGroup.storage);
    //
    // //判断如果还没拥有读写权限就申请获取权限
    //
    // if (status != PermissionStatus.granted) {
    //   var map = await PermissionHandler()
    //       .requestPermissions([PermissionGroup.storage]).then((value) {
    //     print(value);
    //   });
    //
    //   if (map[PermissionGroup.storage] == PermissionStatus.granted) {
    //     status = PermissionStatus.granted;
    //   }
    // }
    //
    // print(attachments.name);
    //
    // String dirloc = "";
    //
    // if (Platform.isAndroid) {
    //   dirloc = "/sdcard/download/";
    // } else {
    //   dirloc = (await getTemporaryDirectory()).path;
    //   dirloc = dirloc.replaceFirst("Library/Caches", "Documents/");
    // }
    //
    // var randid = Random().nextInt(10000);
    // try {
    //   //2、创建文件
    //
    //   FileUtils.mkdir([dirloc]);
    //   String token = "JWT ${userInfo.data.emailToken}";
    //   var options = Options(headers: <String, String>{
    //     "Authorization": token,
    //   });
    //   print(url);
    //   //3、使用 dio 下载文件
    //
    //   await dio.download(url, dirloc + attachments.name, options: options,
    //       onReceiveProgress: (receivedBytes, totalBytes) {
    //     // setState(() {
    //     //   downloading = true;
    //     //   //4、连接资源成功开始下载后更新状态
    //     //   progress = (receivedBytes / totalBytes);
    //     // });
    //   });

      // File file = File('/Users/huasiyang/Downloads/123.jpg');
      //
      // if (!file.existsSync()) {
      //   file.createSync();
      // }
      //
      // /// dio使用get下载文件
      // try {
      //   var response = await Dio().get(
      //       url,
      //       onReceiveProgress: (num received, num total) {
      //         /// 获取下载进度
      //         double _process = double.parse(
      //             '${(received / total).toStringAsFixed(2)}');
      //         print(_process);
      //       },
      //       options: Options(
      //         responseType: ResponseType.bytes,
      //         followRedirects: false,
      //       )
      //   );
      //   file.writeAsBytesSync(response.data);
      //
      //   /// 写入文件
      //   return file;
      // } on DioError catch (e) {
      //   print("response.statusCode: ${e.type}");
      // }
    // } catch (e) {
    //   print(e);
    // }
  }

  ///当前进度进度百分比  当前进度/总进度 从0-1
  double currentProgress =0.0;
  ///下载文件的网络路径
  String apkUrl ="";
  ///使用dio 下载文件
  // void downApkFunction() async{
  //   /// 申请写文件权限
  //   bool isPermiss =  await checkPermissFunction();
  //   if(isPermiss) {
  //     ///手机储存目录
  //     String savePath = await getPhoneLocalPath();
  //     String appName = "rk.apk";
  //
  //     ///创建DIO
  //     Dio dio = new Dio();
  //     // setState(() {
  //       //
  //       // });
  //     ///参数一 文件的网络储存URL
  //     ///参数二 下载的本地目录文件
  //     ///参数三 下载监听
  //     Response response = await dio.download(
  //         apkUrl, "$savePath$appName", onReceiveProgress: (received, total) {
  //       if (total != -1) {
  //         ///当前下载的百分比例
  //         print((received / total * 100).toStringAsFixed(0) + "%");
  //         // CircularProgressIndicator(value: currentProgress,) 进度 0-1
  //         currentProgress = received / total;
  //         //
  //       }
  //     });
  //   }else{
  //     ///提示用户请同意权限申请
  //   }
  // }

  static Future download1(Dio dio, String url, savePath) async {
    var cancelToken = CancelToken();
    try {
      await dio.download(
        url,
        savePath,
        onReceiveProgress: showDownloadProgress,
        cancelToken: cancelToken,
      );
    } catch (e) {
      print(e);
    }
  }

//Another way to downloading small file
  static Future download2(Dio dio, String url, String savePath) async {
    try {
      var response = await dio.get(
        url,
        onReceiveProgress: showDownloadProgress,
        //Received data with List<int>
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0,
        ),
      );
      print(response.headers);
      // var file = File(savePath);
      // var raf = file.openSync(mode: FileMode.write);
      // // response.data is List<int> type
      // raf.writeFromSync(response.data);
      // await raf.close();
    } catch (e) {
      print(e);
    }
  }

  static void showDownloadProgress(received, total) {
    if (total != -1) {
      print((received / total * 100).toStringAsFixed(0) + '%');
    }
  }
}
