import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_profile/image_model.dart';
import 'package:user_profile/video.dart';
import 'package:user_profile/video_model.dart';

import 'image.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);
  final List<VideoModel> _videos = [
    VideoModel(id: 1, videoImage: '1.jpg'),
    VideoModel(id: 2, videoImage: '2.jpg'),
    VideoModel(id: 3, videoImage: '3.jpg'),
  ];
  final List<ImageModel> _images = [
    ImageModel(id: 1, image: '11.jpg'),
    ImageModel(id: 2, image: '22.jpg'),
    ImageModel(id: 3, image: '33.jpg'),
    ImageModel(id: 4, image: '44.jpg'),
    // ImageModel(id: 5, image: '55.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.black,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: MediaQuery.of(context).padding.top + 80,

            backgroundColor: Colors.black,
            // toolbarHeight: 400,
            expandedHeight: 450,
            pinned: true,

            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/images/0.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      end: Alignment.topCenter,
                      begin: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                ),
              ),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'kadaWmiloud',
                      // "Emma Waston",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          '109 Videos',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '988K Subscribers',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kada w Miloud are creators of humor and educational content in Algeria, more precisely from the province of Oran',
                        // 'Emma Charlotte Duerre Watson was born in Paris, France, to English parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            height: 1.4,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _CustomDescription(
                        title: 'Born',
                        description: '1997, Oran, Algeria',
                        // description: 'April, 15th 1990, Paris, France',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _CustomDescription(
                        title: 'Nationality',
                        description: 'Algerian',
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Images',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: _images.length,
                        itemBuilder: (BuildContext context, int index) =>
                            CustomImage(
                          image: _images[index].image,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Videos',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: _videos.length,
                        itemBuilder: (BuildContext context, int index) =>
                            CustomVideo(
                          image: _videos[index].videoImage,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).padding.bottom + 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomDescription extends StatelessWidget {
  const _CustomDescription(
      {Key? key, required this.title, required this.description})
      : super(key: key);
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
