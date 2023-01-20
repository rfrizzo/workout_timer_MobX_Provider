import 'dart:async';

import 'package:mobx/mobx.dart';

part 'workout.store.g.dart';

class WorkOutStore = _WorkOutStore with _$WorkOutStore;

enum TipeOfRange { work, rest }

abstract class _WorkOutStore with Store {
  @observable
  bool started = false;
  @observable
  int minutes = 2;
  @observable
  int seconds = 0;
  @observable
  int workoutTime = 2;
  @observable
  int restTime = 1;
  @observable
  TipeOfRange tipeOfRange = TipeOfRange.work;

  Timer? stopwatch;

  @action
  void start() {
    started = true;
    stopwatch = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        changeActivity();
      } else if (seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    stopwatch?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workoutTime : restTime;
    seconds = 0;
  }

  @action
  void increasetimework() {
    workoutTime++;

    if (isWorking()) {
      restart();
    }
  }

  @action
  void decreasetimework() {
    if (workoutTime > 1) {
      workoutTime--;
    }

    if (isWorking()) {
      restart();
    }
  }

  @action
  void increasetimerest() {
    restTime++;
    if (isResting()) {
      restart();
    }
  }

  @action
  void decreasetimerest() {
    if (restTime > 1) {
      restTime--;
    }

    if (isResting()) {
      restart();
    }
  }

  bool isWorking() {
    return tipeOfRange == TipeOfRange.work;
  }

  bool isResting() {
    return tipeOfRange == TipeOfRange.rest;
  }

  void changeActivity() {
    if (isWorking()) {
      tipeOfRange = TipeOfRange.rest;
      minutes = restTime;
    } else {
      tipeOfRange = TipeOfRange.work;
      minutes = workoutTime;
    }
    seconds = 0;
  }
}
