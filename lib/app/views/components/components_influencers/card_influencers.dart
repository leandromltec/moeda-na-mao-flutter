import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moedanamao/app/model/influencers/influencer.dart';
import 'package:moedanamao/app/views/theme/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CardInfluencers extends StatefulWidget {
  final Influencer influencer;

  CardInfluencers(this.influencer);

  @override
  _CardInfluencersState createState() => _CardInfluencersState(this.influencer);
}

class _CardInfluencersState extends State<CardInfluencers> {
  final Influencer influencer;

  _CardInfluencersState(this.influencer);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Card(
          elevation: 20,
          shadowColor: ColorsApp.corSombra,
          color: ColorsApp.corCard,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: CircleAvatar(
                    radius: 25,
                    child: ClipOval(
                      child: FadeInImage.assetNetwork(
                        fadeInCurve: Curves.bounceIn,
                        placeholder: "Carregando...",
                        image:
                            //"https://live.staticflickr.com/65535/50537954998_735168d9d7_c.jpg",
                            influencer.urlLogo,
                        /*width: 50,
                                    height: 50,*/
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                          /*"Nathalia Arcuri"*/
                          influencer.nome,
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: ColorsApp.corSecundaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                          width: 125,
                          height: 30,
                          child: RaisedButton(
                            onLongPress: () => {
                              WebView(
                                initialUrl: influencer.urlYoutube,
                                javascriptMode: JavascriptMode.disabled,
                              )
                            },
                            color: ColorsApp.corSecundaria,
                            elevation: 0,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(FontAwesomeIcons.youtube,
                                      color: Colors.red, size: 15.0),
                                ),
                                Text(
                                  "YouTube",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: ColorsApp.corSecundaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          margin: EdgeInsets.only(right: 10, top: 10),
                          width: 125,
                          height: 30,
                          child: RaisedButton(
                            color: ColorsApp.corSecundaria,
                            elevation: 0,
                            onPressed: () {},
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Icon(FontAwesomeIcons.instagramSquare,
                                      color: Colors.pinkAccent, size: 15.0),
                                ),
                                Text(
                                  "Instagram",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
