/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-9921b927 */
/* Github - https://github.com/leandromltec */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:moedanamao/app/views/components/components_app/button_home.dart';
import 'package:moedanamao/app/views/components/components_app/componets_menulateral_drawer/menulateral_drawer_app.dart';
import 'package:moedanamao/app/views/components/components_app/fundo_app_gradient.dart';
import 'package:moedanamao/app/views/components/components_app/menu_bottombar.dart';
import 'package:moedanamao/app/views/components/components_home/dropdown_opcoes.dart';
import 'package:moedanamao/app/views/pages/pages_tabs/acoes_tab_page.dart';
import 'package:moedanamao/app/views/pages/pages_tabs/cotacoes_tab_page.dart';
import 'package:moedanamao/app/views/pages/pages_tabs/titulos_tab_page.dart';
import 'package:moedanamao/app/views/theme/colors.dart';

/* Documentação utilizada: 
Construçaõ de layout (estrutura Container, Column e Row) - https://flutter.dev/docs/development/ui/layout 
Criação a AppBar - https://api.flutter.dev/flutter/material/AppBar-class.html
*/

/* Widget responsável pela Home (página principal ao iniciar o aplicativo) */
/* Stateless - estado usado porque a estrutura da página como um todo não é alterado, apenas seus componentes terão mudanças de estado */

/*class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /* Especificação de orientação do aplicativo para formato retrato */
    /* O aplicativo não terão rotação vertical */
    /* Documentação pesquisada sobre orientação - 
    https://api.flutter.dev/flutter/services/SystemChrome/setPreferredOrientations.html */
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);*/

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /* @override
  void initState() {
    super.initState();

    print(TabPadraoController.instance.init());
  }*/

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/home": (context) => HomePage(),
        "/cotacoes": (context) => CotacoesPage(),
      },
      title: "Moeda na Mão",
      debugShowCheckedModeBanner: false,
      /* Corpo do Scaffold onde é exibido o conteúdo */
      home: DefaultTabController(
        length: 3,

        initialIndex: 0,
        //initialIndex: 1,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: MenuLateralDrawer(context),
          /* Início Barra superior do app */
          /* Title - propriedade do AppBar que insero o título superior utilizando Widget Text */
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              labelPadding: EdgeInsets.all(4),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0XFFF0652DD),
              ),
              tabs: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: Text("Cotações", key: ValueKey(0)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: Text("Títulos"),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30,
                  child: Text("Ações"),
                ),
              ],
            ),
            backgroundColor: ColorsApp.corPrincipal,
            actions: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 5),
                    child: Container(
                      child: Text(
                        "Padrão",
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ),
                  DropDownOpcoes(),
                ],
              ),
            ],
          ),
          /* Fim Barra Superior App */
          extendBody: true,
          bottomNavigationBar: MenuBottomBar(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BotaoHome(),
          body: Container(
            decoration: fundoGradientApp(),
            /*BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.8, 1],
                    colors: [ColorsApp.corPrincipal, Colors.blue]))*/
            child: TabBarView(
              children: [
                CotacoesPage(),
                TitulosPage(),
                AcoesPage(),
              ],
            ),
          ),
        ),
      ),
      //],
      //),
    );
  }
}
