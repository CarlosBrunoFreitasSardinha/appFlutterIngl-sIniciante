import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class animaisPage extends StatefulWidget {
  @override
  _animaisPageState createState() => _animaisPageState();
}

class _animaisPageState extends State<animaisPage> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _play(String audio) => _audioCache.play(audio + ".mp3");
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "cao.mp3", "gato.mp3", "leao.mp3",
      "macaco.mp3", "ovelha.mp3", "vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          child: Image.asset("assets/images/cao.png"),
          onTap: (){
            _play("cao");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/gato.png"),
          onTap: () {
            _play("gato");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/leao.png"),
          onTap: () {
            _play("leao");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/macaco.png"),
          onTap: () {
            _play("macaco");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/ovelha.png"),
          onTap: () {
            _play("ovelha");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/vaca.png"),
          onTap: () {
            _play("vaca");
          },
        ),
      ],
    );
  }
}
