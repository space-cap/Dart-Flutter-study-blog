import 'package:flutter/material.dart';
import 'package:webtoon_app/models/webtoon_model.dart';
import 'package:webtoon_app/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 20, //음영
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰2",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  // expanded를 넣어줘야 height 에러가 뜨지 않는다.
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        print(index);
        var webtoon = snapshot.data![index];
        print(webtoon.thumb);
        return Column(
          children: [
            Image.network(
              webtoon.thumb,
              errorBuilder: (context, error, stackTrace) {
                return const Text('error');
              },
            ),
            Text(webtoon.title),
          ],
        );
      },
      // 아이템들 사이의 간격을 준다.
      separatorBuilder: (context, index) => const SizedBox(
        width: 20,
      ),
    );
  }
}
