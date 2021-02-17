import 'package:flutter/material.dart';
import 'package:moedanamao/app/controllers/controllers_app/default_tab_controller.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

/* https://api.flutter.dev/flutter/material/DropdownButton-class.html */

/* https://api.flutter.dev/flutter/foundation/ValueKey-class.html */
/* https://api.flutter.dev/flutter/foundation/Key-class.html*/

class DropDownOpcoes extends StatefulWidget {
  /*final int tabPadrao;

   String nomeTabPadrao;

  DropDownOpcoes(this.tabPadrao);*/

  @override
  _DropDownOpcoesState createState() => _DropDownOpcoesState();
}

class _DropDownOpcoesState extends State<DropDownOpcoes> {
  //final int tabPadrao;

  //_DropDownOpcoesState(this.tabPadrao);

  String _opcaoPadrao;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 6),
          decoration: BoxDecoration(
              color: ColorsApp.corSecundaria,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          width: 70,
          height: 25,
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              //value: "Cotações",
              style: TextStyle(fontSize: 11),
              isExpanded: true,
              iconSize: 15,
              iconEnabledColor: Colors.white,
              focusColor: Colors.white,
              dropdownColor: ColorsApp.corSecundaria,
              icon: Icon(Icons.arrow_drop_down),
              items: [
                DropdownMenuItem<String>(
                  child: Text('Cotações'),
                  value: '0',
                ),
                DropdownMenuItem<String>(
                  child: Text('Títulos'),
                  value: '1',
                ),
                DropdownMenuItem<String>(
                  child: Text('Ações'),
                  value: '2',
                ),
              ],
              onChanged: (String dropDownItem) {
                setState(() {
                  print('valor ' + int.parse(dropDownItem).toString());
                  TabPadraoController.instance
                      .inserirTabPadrao(int.parse(dropDownItem));

                  _opcaoPadrao = dropDownItem;
                });
              },
              value: _opcaoPadrao,
              hint: Text("Selecione"),
            ),
          ),
        ),
      ],
    );
  }
}
