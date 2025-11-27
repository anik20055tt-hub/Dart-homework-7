import 'device.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int brightness = 50;

  SmartLamp(String name) : super(name);

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  @override
  void increase() {
    if (brightness + 10 <= 100) {
      brightness += 10;
    }
  }

  @override
  void decrease() {
    if (brightness - 10 >= 0) {
      brightness -= 10;
    }
  }

  @override
  void showInfo() {
    print('Lamp: $name, brightness: $brightness');
  }
}
