import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class numerosPage extends StatefulWidget {
  @override
  _numerosPageState createState() => _numerosPageState();
}

class _numerosPageState extends State<numerosPage> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _play(String audio) => _audioCache.play(audio + ".mp3");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "1.mp3", "2.mp3", "3.mp3",
      "4.mp3", "5.mp3", "6.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/1.png"),
          onTap: () {
            _play("1");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/2.png"),
          onTap: () {
            _play("2");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/3.png"),
          onTap: () {
            _play("3");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/4.png"),
          onTap: () {
            _play("4");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/5.png"),
          onTap: () {
            _play("5");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/6.png"),
          onTap: () {
            _play("6");
          },
        ),
      ],
    );
  }
}
