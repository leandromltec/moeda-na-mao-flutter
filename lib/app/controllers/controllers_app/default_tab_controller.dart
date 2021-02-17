import 'package:flutter/material.dart';
import 'package:moedanamao/app/interfaces/shared_local_storage_interface.dart';
import 'package:moedanamao/app/services/shared_local_storage_services.dart';

class TabPadraoController {
  static final TabPadraoController instance = TabPadraoController._();

  TabPadraoController._() {
    init();
  }

  final tabPadrao = ValueNotifier<int>(0);

  Future init() async {
    await storage.getValor("posicao").then((value) {
      if (value != null) {
        tabPadrao.value = 0;
        inserirTabPadrao(tabPadrao.value);
      }
    });
  }

  final ILocalStorage storage = SharedLocalStorage();

  inserirTabPadrao(int value) {
    tabPadrao.value = value;
    storage.put("posicao", tabPadrao.value);
  }
}
