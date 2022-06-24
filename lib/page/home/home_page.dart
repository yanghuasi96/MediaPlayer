
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../model/movie_item_entity.dart';
import '../../network/home_request.dart';
import 'home_page_item.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MovieItemEntity> movies = [];

  @override
  Future<void> initState() async {
    super.initState();
    // 发送网络请求
    HomeRequest.requestMovieList(0).then((res) {
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                helperText: '搜索你想要的视频吧！'),
          ),
          Expanded(
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return YHHomeMovieItem(movies[index], index);
                  }),
            ),
          ),
        ]));
  }
}
