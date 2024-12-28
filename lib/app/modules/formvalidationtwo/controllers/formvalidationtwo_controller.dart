import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormvalidationtwoController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final firstName = TextEditingController(), lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  final passwordConfirmation = TextEditingController();
  final dateOfBirth = TextEditingController();
  final currentTime = TextEditingController();

  Rx<bool> isDataValidate = false.obs;
  Rx<bool> hidePassword = true.obs;
  Rx<bool> hideConfirmPassword = true.obs;
  Rx<bool> privacyAndTerm = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // NAME VALIDATION
  String? validateNameField(String fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName must be required.';
    } else if (value.length < 3) {
      return '$fieldName is too short';
    }
    return null;
  }

  // EMAIL VALIDATION
  String? validateEmailField(String fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName must be required.';
    }
    final regexForEmail = RegExp(r'^[A-Za-z0-9._]+@[A-Za-z]+\.[a-zA-Z]{3}$');

    if (!regexForEmail.hasMatch(value)) {
      return '$fieldName is not a valid phone number.';
    }
    return null;
  }

  // PHONE VALIDATION
  String? validatePhoneField(String fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName must be required.';
    }
    final regexForPhone = RegExp(r'^(01[3-9]\d{8})$');

    if (!regexForPhone.hasMatch(value)) {
      return '$fieldName is not a valid phone number.';
    }
    return null;
  }

  // PASSWORD VALIDATION
  String? validatePasswordField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    } else if (!value.contains(RegExp(r'[A-Z]'))) {
      return '$fieldName must contain one uppercase letter.';
    } else if (!value.contains(RegExp(r'[a-z]'))) {
      return '$fieldName must contain one lowercase letter.';
    } else if (!value.contains(RegExp(r'[0-9]'))) {
      return '$fieldName must contain one number letter.';
    } else if (!value.contains(RegExp(r'[$&*_@!#%^.:]'))) {
      return '$fieldName must contain one special character.';
    } else if (value.length < 8) {
      return '$fieldName must be at least 8 Characters long.';
    }

    return null;
  }

  //CONFIRM PASSWORD FIELD VALIDATION
  String? validateConfirmPasswordField(String? value) {
    if (password.text != value) {
      return 'Password does not match';
    }
    return null;
  }

  void signup() {
    // if (!formKey.currentState!.validate()) {}
  }
}
