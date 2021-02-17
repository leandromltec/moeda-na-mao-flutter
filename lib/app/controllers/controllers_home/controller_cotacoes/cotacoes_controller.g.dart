// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cotacoes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerCotacoes on _ControllerCotacoes, Store {
  Computed<String> _$valorCompraDolarComputed;

  @override
  String get valorCompraDolar => (_$valorCompraDolarComputed ??=
          Computed<String>(() => super.valorCompraDolar,
              name: '_ControllerCotacoes.valorCompraDolar'))
      .value;
  Computed<String> _$valorCompraEuroComputed;

  @override
  String get valorCompraEuro => (_$valorCompraEuroComputed ??= Computed<String>(
          () => super.valorCompraEuro,
          name: '_ControllerCotacoes.valorCompraEuro'))
      .value;

  final _$listaMoedasAtom = Atom(name: '_ControllerCotacoes.listaMoedas');

  @override
  ObservableFuture<List<Moeda>> get listaMoedas {
    _$listaMoedasAtom.reportRead();
    return super.listaMoedas;
  }

  @override
  set listaMoedas(ObservableFuture<List<Moeda>> value) {
    _$listaMoedasAtom.reportWrite(value, super.listaMoedas, () {
      super.listaMoedas = value;
    });
  }

  final _$cotacaoDolarAtom = Atom(name: '_ControllerCotacoes.cotacaoDolar');

  @override
  Moeda get cotacaoDolar {
    _$cotacaoDolarAtom.reportRead();
    return super.cotacaoDolar;
  }

  @override
  set cotacaoDolar(Moeda value) {
    _$cotacaoDolarAtom.reportWrite(value, super.cotacaoDolar, () {
      super.cotacaoDolar = value;
    });
  }

  final _$cotacaoEuroAtom = Atom(name: '_ControllerCotacoes.cotacaoEuro');

  @override
  Moeda get cotacaoEuro {
    _$cotacaoEuroAtom.reportRead();
    return super.cotacaoEuro;
  }

  @override
  set cotacaoEuro(Moeda value) {
    _$cotacaoEuroAtom.reportWrite(value, super.cotacaoEuro, () {
      super.cotacaoEuro = value;
    });
  }

  final _$getListaMoedasAsyncAction =
      AsyncAction('_ControllerCotacoes.getListaMoedas');

  @override
  Future<List<Moeda>> getListaMoedas() {
    return _$getListaMoedasAsyncAction.run(() => super.getListaMoedas());
  }

  final _$_ControllerCotacoesActionController =
      ActionController(name: '_ControllerCotacoes');

  @override
  dynamic carregarMoedas() {
    final _$actionInfo = _$_ControllerCotacoesActionController.startAction(
        name: '_ControllerCotacoes.carregarMoedas');
    try {
      return super.carregarMoedas();
    } finally {
      _$_ControllerCotacoesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaMoedas: ${listaMoedas},
cotacaoDolar: ${cotacaoDolar},
cotacaoEuro: ${cotacaoEuro},
valorCompraDolar: ${valorCompraDolar},
valorCompraEuro: ${valorCompraEuro}
    ''';
  }
}
