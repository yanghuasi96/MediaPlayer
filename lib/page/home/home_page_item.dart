import 'package:flutter/material.dart';
import '../../model/movie_item_entity.dart';
import '../../widget/dashed_line.dart';
import '../../widget/star_rating.dart';
import 'detail_movie.dart';

class YHHomeMovieItem extends StatelessWidget {
  final MovieItemEntity movie;
  var currentIndex;

  YHHomeMovieItem(this.movie,this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      // 添加底部边框
      decoration: BoxDecoration(
          border:
          Border(bottom: BorderSide(width: 8, color: Color(0xffcccccc)))),
      child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeader(),
              SizedBox(
                height: 6,
              ),
              buildContent(),
              SizedBox(
                height: 6,
              ),
              buildFooter(),
            ],
          ),
          onTapDown: (details) {
            Navigator.of(context).pushNamed(MovieDetail.routeName);
          }),
    );
  }

  // 1. 头部排名
  Widget buildHeader() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 238, 208, 144),
          borderRadius: BorderRadius.circular(3)),
      child: Text("No.${movie.doubanRating}",
          style:
          TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 35))),
    );
  }

  //  2.中间内容
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildContentImage(),
        SizedBox(width: 8),
        // 使用 IntrinsicHeight 固定高度也就是说 buildContentInfo  buildContentLine buildContentWish 不需要设置高度 。直接等高
        Expanded(
          child: IntrinsicHeight(
            child: Row(
              children: [
                buildContentInfo(),
                SizedBox(width: 8),
                buildContentLine(),
                SizedBox(width: 8),
                buildContentWish(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // 2.1 内容的图片
  Widget buildContentImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          movie.data[currentIndex].poster,
          height: 150,
          errorBuilder: (_, __, ___) =>
              Image.asset('assets/images/juren.jpeg', height: 150),
        ));
  }

  // 2.2 内容信息
  Widget buildContentInfo() {
    // Expanded 防止Column列表里面的数据超出范围 比如标题、或者是描述
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildContentInfoTitle(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoRate(),
          SizedBox(
            height: 8,
          ),
          buildContentInfoDesc(),
        ],
      ),
    );
  }

  // 2.2.1 内容信息 - 标题
  Widget buildContentInfoTitle() {
    // 由于文本不知道长度 需要换行 所以使用Text.rich 并且换行使用TextSpan
    // 并且使用WidgetSpan 包裹其他Widget
    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.redAccent,
                size: 24,
              ),
              alignment: PlaceholderAlignment.middle),
          WidgetSpan(
              child: Text(
                "${movie.data[currentIndex].name}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              alignment: PlaceholderAlignment.middle),
          WidgetSpan(
              child: Text(
                "(${movie.data[currentIndex].genre})",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              alignment: PlaceholderAlignment.bottom),

          // TextSpan(text:movie.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          // TextSpan(text: "(${movie.cover_x})",style: TextStyle(fontSize: 18,color: Colors.grey)
        ],
      ),
    );
  }

// 2.2.2 内容信息 - 评分
  Widget buildContentInfoRate() {
    return Row(
      children: [
        HYStarRating(
          rating: double.parse(movie.doubanRating),
          size: 20,
        ),
        SizedBox(
          width: 6,
        ),
        Text("${movie.doubanRating}", style: TextStyle(fontSize: 16)),
      ],
    );
  }

  // 2.2.3 内容信息 - 描述
  Widget buildContentInfoDesc() {
    // 1.字符串拼接
    // join是将数组进行以什么来切割
    return Text("${movie.data[currentIndex].description}", maxLines: 2);
  }

  // 2.3 内容的虚线
  Widget buildContentLine() {
    return Container(
      // height: 100,
      child: HYDashedLine(
        axis: Axis.vertical,
        dashedWidth: 1,
        dashedHeight: 6,
        count: 10,
        color: Colors.red,
      ),
    );
  }

  // 2.4 想看
  Widget buildContentWish() {
    return Container(
      // height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/home/wish.png"),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 235, 170, 60)),
          ),
        ],
      ),
    );
  }

  // 3 底部内容
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffe2e2e2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        movie.doubanId,
        style: TextStyle(fontSize: 20, color: Colors.red),
      ),
    );
  }
}
