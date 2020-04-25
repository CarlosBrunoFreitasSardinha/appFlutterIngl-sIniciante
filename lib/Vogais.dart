import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class vogaisPage extends StatefulWidget {
  @override
  _vogaisPageState createState() => _vogaisPageState();
}

class _vogaisPageState extends State<vogaisPage> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _play(String audio) => _audioCache.play(audio + ".mp3");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "a.mp3", "e.mp3", "i.mp3",
      "o.mp3", "u.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/a.png"),
          onTap: () {
            _play("a");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/e.png"),
          onTap: () {
            _play("e");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/i.png"),
          onTap: () {
            _play("i");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/o.png"),
          onTap: () {
            _play("o");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/u.png"),
          onTap: () {
            _play("u");
          },
        ),
      ],
    );
  }
}



