import 'package:flutter/material.dart';
import 'package:torch_app/utils/show_message.dart';
import 'package:torch_light/torch_light.dart';

class AppMethods {
  // is torch available
  static Future<bool> isTorchAvailable(BuildContext context) async {
    try {
      return await TorchLight.isTorchAvailable();
    } on Exception catch (_) {
      showMessage(
        'Could not check if the device has an available torch',
        context,
      );
      rethrow;
    }
  }

  // is torch available end
  // enable torch
  static Future<void> enableTorch(BuildContext context) async {
    try {
      await TorchLight.enableTorch();
    } on Exception catch (_) {
      showMessage('Could not enable torch', context);
      rethrow;
    }
  }

  // enable torch end
  // disable torch
  static Future<void> disableTorch(BuildContext context) async {
    try {
      await TorchLight.disableTorch();
    } on Exception catch (_) {
      showMessage('Could not disable torch', context);
      rethrow;
    }
  }
// disable torch end
}
