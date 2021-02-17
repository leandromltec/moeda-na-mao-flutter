// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'influencers_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerInfluencers on _ControllerInfluencers, Store {
  final _$listaInfluencersAtom =
      Atom(name: '_ControllerInfluencers.listaInfluencers');

  @override
  ObservableFuture<List<Influencer>> get listaInfluencers {
    _$listaInfluencersAtom.reportRead();
    return super.listaInfluencers;
  }

  @override
  set listaInfluencers(ObservableFuture<List<Influencer>> value) {
    _$listaInfluencersAtom.reportWrite(value, super.listaInfluencers, () {
      super.listaInfluencers = value;
    });
  }

  final _$influencerAtom = Atom(name: '_ControllerInfluencers.influencer');

  @override
  Influencer get influencer {
    _$influencerAtom.reportRead();
    return super.influencer;
  }

  @override
  set influencer(Influencer value) {
    _$influencerAtom.reportWrite(value, super.influencer, () {
      super.influencer = value;
    });
  }

  final _$getListaInfluencersAsyncAction =
      AsyncAction('_ControllerInfluencers.getListaInfluencers');

  @override
  Future<List<Influencer>> getListaInfluencers() {
    return _$getListaInfluencersAsyncAction
        .run(() => super.getListaInfluencers());
  }

  final _$_ControllerInfluencersActionController =
      ActionController(name: '_ControllerInfluencers');

  @override
  dynamic carregarInfluencers() {
    final _$actionInfo = _$_ControllerInfluencersActionController.startAction(
        name: '_ControllerInfluencers.carregarInfluencers');
    try {
      return super.carregarInfluencers();
    } finally {
      _$_ControllerInfluencersActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaInfluencers: ${listaInfluencers},
influencer: ${influencer}
    ''';
  }
}
