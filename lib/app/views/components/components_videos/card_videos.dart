import 'package:flutter/material.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

class CardVideo extends StatefulWidget {
  @override
  _CardVideoState createState() => _CardVideoState();
}

class _CardVideoState extends State<CardVideo> {
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
                      child: Image.network(
                        "https://cdn-profiles.tunein.com/p948134/images/logoq.png",
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
                          "GUIA BÁSICO PRA INVESTIR EM AÇÕES:\n TUDO que você PRECISA SABER \n antes de investir em AÇÕES!",
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: ColorsApp.corSecundaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 120,
                          height: 20,
                          child: Center(
                            child: Text("Primo Rico",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorsApp.corSecundaria,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          margin: EdgeInsets.only(left: 10, top: 10),
                          width: 120,
                          height: 20,
                          child: Center(
                            child: Text("assunto: Ações",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.0)),
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
