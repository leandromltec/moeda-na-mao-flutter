// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acoes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerAcoes on _ControllerAcoes, Store {
  final _$listaAcoesAtom = Atom(name: '_ControllerAcoes.listaAcoes');

  @override
  ObservableFuture<List<Acao>> get listaAcoes {
    _$listaAcoesAtom.reportRead();
    return super.listaAcoes;
  }

  @override
  set listaAcoes(ObservableFuture<List<Acao>> value) {
    _$listaAcoesAtom.reportWrite(value, super.listaAcoes, () {
      super.listaAcoes = value;
    });
  }

  final _$acaoMagazineLuizaAtom =
      Atom(name: '_ControllerAcoes.acaoMagazineLuiza');

  @override
  Acao get acaoMagazineLuiza {
    _$acaoMagazineLuizaAtom.reportRead();
    return super.acaoMagazineLuiza;
  }

  @override
  set acaoMagazineLuiza(Acao value) {
    _$acaoMagazineLuizaAtom.reportWrite(value, super.acaoMagazineLuiza, () {
      super.acaoMagazineLuiza = value;
    });
  }

  final _$acaoItauHolingAtom = Atom(name: '_ControllerAcoes.acaoItauHoling');

  @override
  Acao get acaoItauHoling {
    _$acaoItauHolingAtom.reportRead();
    return super.acaoItauHoling;
  }

  @override
  set acaoItauHoling(Acao value) {
    _$acaoItauHolingAtom.reportWrite(value, super.acaoItauHoling, () {
      super.acaoItauHoling = value;
    });
  }

  final _$acaoB3Atom = Atom(name: '_ControllerAcoes.acaoB3');

  @override
  Acao get acaoB3 {
    _$acaoB3Atom.reportRead();
    return super.acaoB3;
  }

  @override
  set acaoB3(Acao value) {
    _$acaoB3Atom.reportWrite(value, super.acaoB3, () {
      super.acaoB3 = value;
    });
  }

  final _$acaoRennerAtom = Atom(name: '_ControllerAcoes.acaoRenner');

  @override
  Acao get acaoRenner {
    _$acaoRennerAtom.reportRead();
    return super.acaoRenner;
  }

  @override
  set acaoRenner(Acao value) {
    _$acaoRennerAtom.reportWrite(value, super.acaoRenner, () {
      super.acaoRenner = value;
    });
  }

  final _$acaoValeAtom = Atom(name: '_ControllerAcoes.acaoVale');

  @override
  Acao get acaoVale {
    _$acaoValeAtom.reportRead();
    return super.acaoVale;
  }

  @override
  set acaoVale(Acao value) {
    _$acaoValeAtom.reportWrite(value, super.acaoVale, () {
      super.acaoVale = value;
    });
  }

  final _$getListaAcoesAsyncAction =
      AsyncAction('_ControllerAcoes.getListaAcoes');

  @override
  Future<List<Acao>> getListaAcoes() {
    return _$getListaAcoesAsyncAction.run(() => super.getListaAcoes());
  }

  final _$_ControllerAcoesActionController =
      ActionController(name: '_ControllerAcoes');

  @override
  dynamic carregarAcoes() {
    final _$actionInfo = _$_ControllerAcoesActionController.startAction(
        name: '_ControllerAcoes.carregarAcoes');
    try {
      return super.carregarAcoes();
    } finally {
      _$_ControllerAcoesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaAcoes: ${listaAcoes},
acaoMagazineLuiza: ${acaoMagazineLuiza},
acaoItauHoling: ${acaoItauHoling},
acaoB3: ${acaoB3},
acaoRenner: ${acaoRenner},
acaoVale: ${acaoVale}
    ''';
  }
}
