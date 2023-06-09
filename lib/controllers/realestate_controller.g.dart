// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realestate_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RealEstate on _RealEstateBase, Store {
  late final _$realEstatesAtom =
      Atom(name: '_RealEstateBase.realEstates', context: context);

  @override
  ObservableList<RealEstateModel> get realEstates {
    _$realEstatesAtom.reportRead();
    return super.realEstates;
  }

  @override
  set realEstates(ObservableList<RealEstateModel> value) {
    _$realEstatesAtom.reportWrite(value, super.realEstates, () {
      super.realEstates = value;
    });
  }

  late final _$pageNumberAtom =
      Atom(name: '_RealEstateBase.pageNumber', context: context);

  @override
  int get pageNumber {
    _$pageNumberAtom.reportRead();
    return super.pageNumber;
  }

  @override
  set pageNumber(int value) {
    _$pageNumberAtom.reportWrite(value, super.pageNumber, () {
      super.pageNumber = value;
    });
  }

  late final _$countAtom =
      Atom(name: '_RealEstateBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$getRealEstatesAsyncAction =
      AsyncAction('_RealEstateBase.getRealEstates', context: context);

  @override
  Future<void> getRealEstates(int page, BuildContext context) {
    return _$getRealEstatesAsyncAction
        .run(() => super.getRealEstates(page, context));
  }

  late final _$getCountAsyncAction =
      AsyncAction('_RealEstateBase.getCount', context: context);

  @override
  Future<void> getCount(BuildContext context) {
    return _$getCountAsyncAction.run(() => super.getCount(context));
  }

  late final _$increaceCountAsyncAction =
      AsyncAction('_RealEstateBase.increaceCount', context: context);

  @override
  Future<void> increaceCount(BuildContext context) {
    return _$increaceCountAsyncAction.run(() => super.increaceCount(context));
  }

  @override
  String toString() {
    return '''
realEstates: ${realEstates},
pageNumber: ${pageNumber},
count: ${count}
    ''';
  }
}
