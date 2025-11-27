import 'device.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

class SmartSpeaker extends Device with BatteryPowered implements Adjustable  {
  int volume = 30;

  SmartSpeaker(String name) : super(name);

  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  @override
  void increase() {
    if (volume + 5 <= 100) {
      volume += 5;
    }
  }

  @override
  void decrease() {
    if (volume - 5 >= 0) {
      volume -= 5;
    }
  }

  @override
  void showInfo() {
    print('Speaker: $name, volume: $volume');
  }
}

