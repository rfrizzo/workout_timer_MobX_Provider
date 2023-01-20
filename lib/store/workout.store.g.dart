// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WorkOutStore on _WorkOutStore, Store {
  late final _$startedAtom =
      Atom(name: '_WorkOutStore.started', context: context);

  @override
  bool get started {
    _$startedAtom.reportRead();
    return super.started;
  }

  @override
  set started(bool value) {
    _$startedAtom.reportWrite(value, super.started, () {
      super.started = value;
    });
  }

  late final _$minutesAtom =
      Atom(name: '_WorkOutStore.minutes', context: context);

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  late final _$secondsAtom =
      Atom(name: '_WorkOutStore.seconds', context: context);

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  late final _$workoutTimeAtom =
      Atom(name: '_WorkOutStore.workoutTime', context: context);

  @override
  int get workoutTime {
    _$workoutTimeAtom.reportRead();
    return super.workoutTime;
  }

  @override
  set workoutTime(int value) {
    _$workoutTimeAtom.reportWrite(value, super.workoutTime, () {
      super.workoutTime = value;
    });
  }

  late final _$restTimeAtom =
      Atom(name: '_WorkOutStore.restTime', context: context);

  @override
  int get restTime {
    _$restTimeAtom.reportRead();
    return super.restTime;
  }

  @override
  set restTime(int value) {
    _$restTimeAtom.reportWrite(value, super.restTime, () {
      super.restTime = value;
    });
  }

  late final _$tipeOfRangeAtom =
      Atom(name: '_WorkOutStore.tipeOfRange', context: context);

  @override
  TipeOfRange get tipeOfRange {
    _$tipeOfRangeAtom.reportRead();
    return super.tipeOfRange;
  }

  @override
  set tipeOfRange(TipeOfRange value) {
    _$tipeOfRangeAtom.reportWrite(value, super.tipeOfRange, () {
      super.tipeOfRange = value;
    });
  }

  late final _$_WorkOutStoreActionController =
      ActionController(name: '_WorkOutStore', context: context);

  @override
  void start() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.start');
    try {
      return super.start();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stop() {
    final _$actionInfo =
        _$_WorkOutStoreActionController.startAction(name: '_WorkOutStore.stop');
    try {
      return super.stop();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void restart() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.restart');
    try {
      return super.restart();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increasetimework() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.increasetimework');
    try {
      return super.increasetimework();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreasetimework() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.decreasetimework');
    try {
      return super.decreasetimework();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increasetimerest() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.increasetimerest');
    try {
      return super.increasetimerest();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decreasetimerest() {
    final _$actionInfo = _$_WorkOutStoreActionController.startAction(
        name: '_WorkOutStore.decreasetimerest');
    try {
      return super.decreasetimerest();
    } finally {
      _$_WorkOutStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
started: ${started},
minutes: ${minutes},
seconds: ${seconds},
workoutTime: ${workoutTime},
restTime: ${restTime},
tipeOfRange: ${tipeOfRange}
    ''';
  }
}
