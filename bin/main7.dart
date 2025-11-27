import 'device.dart';
import 'smart_lamp.dart';
import 'smart_speaker.dart';
import 'smart_thermostat.dart';
import 'adjustable.dart';
import 'battery_powered.dart';

void main() {
  List<Device> devices = [
    SmartLamp('Living Room Lamp'),
    SmartSpeaker('Home Speaker'),
    SmartThermostat('Thermo', 22),
  ];

  for (var device in devices) {
    device.showInfo();
    device.turnOn();

    // Приведение типа для Adjustable
    if (device is Adjustable) {
      (device as Adjustable).increase();
      print('Adjusted!');
    }

    // Приведение типа для BatteryPowered
    if (device is BatteryPowered) {
      (device as BatteryPowered).showBattery();
    }

    print('---');
  }

  print('All devices processed.');
}
