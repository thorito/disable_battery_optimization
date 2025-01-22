import 'package:disable_battery_optimization/disable_battery_optimization.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Disable Battery Optimizations Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                  child: Text("Is Auto Start Enabled"),
                  onPressed: () async {
                    bool isAutoStartEnabled =
                        await DisableBatteryOptimization.isAutoStartEnabled ??
                            false;
                    debugPrint(
                        "Auto start is ${isAutoStartEnabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Is Battery optimization disabled"),
                  onPressed: () async {
                    bool isBatteryOptimizationDisabled =
                        await DisableBatteryOptimization
                                .isBatteryOptimizationDisabled ??
                            false;
                    debugPrint(
                        "Battery optimization is ${!isBatteryOptimizationDisabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Is Manufacturer Battery optimization disabled"),
                  onPressed: () async {
                    bool isManBatteryOptimizationDisabled =
                        await DisableBatteryOptimization
                                .isManufacturerBatteryOptimizationDisabled ??
                            false;
                    debugPrint(
                        "Manufacturer Battery optimization is ${!isManBatteryOptimizationDisabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Are All Battery optimizations disabled"),
                  onPressed: () async {
                    bool isAllBatteryOptimizationDisabled =
                        await DisableBatteryOptimization
                                .isAllBatteryOptimizationDisabled ??
                            false;
                    debugPrint(
                        "All Battery optimizations are disabled ${isAllBatteryOptimizationDisabled ? "True" : "False"}");
                  }),
              MaterialButton(
                  child: Text("Enable Auto Start"),
                  onPressed: () {
                    DisableBatteryOptimization.showEnableAutoStartSettings(
                        "Enable Auto Start",
                        "Follow the steps and enable the auto start of this app");
                  }),
              MaterialButton(
                  child: Text("Disable Battery Optimizations"),
                  onPressed: () async {
                    DisableBatteryOptimization
                        .showDisableBatteryOptimizationSettings();
                    await DisableBatteryOptimization
                        .showDisableBatteryOptimizationSettings();
                  }),
              MaterialButton(
                  child: Text("Disable Manufacturer Battery Optimizations"),
                  onPressed: () async {
                    await DisableBatteryOptimization
                        .showDisableManufacturerBatteryOptimizationSettings(
                            "Your device has additional battery optimization",
                            "Follow the steps and disable the optimizations to allow smooth functioning of this app");
                  }),
              MaterialButton(
                  child: Text("Disable all Optimizations"),
                  onPressed: () async {
                    await DisableBatteryOptimization
                        .showDisableAllOptimizationsSettings(
                            "Enable Auto Start",
                            "Follow the steps and enable the auto start of this app",
                            "Your device has additional battery optimization",
                            "Follow the steps and disable the optimizations to allow smooth functioning of this app");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
