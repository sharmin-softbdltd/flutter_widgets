import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FormValidationController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final firstName = TextEditingController(), lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();

  Rx<bool> isDataValidate = false.obs;
  Rx<bool> hidePassword = true.obs;
  Rx<bool> privacyAndTerm = true.obs;

  @override
  void onInit() {
    super.onInit();
    validateAllField();
  }

  void validateAllField() {
    firstName.addListener(updateValidationState);
    lastName.addListener(updateValidationState);
    userName.addListener(updateValidationState);
    email.addListener(updateValidationState);
    phone.addListener(updateValidationState);
    password.addListener(updateValidationState);
  }

  updateValidationState() {
    isDataValidate.value = areAllFieldsValid();
  }

  bool areAllFieldsValid() {
    return validateNameField('First Name', firstName.text) == null &&
        validateNameField('Last Name', lastName.text) == null &&
        validateNameField('Username', userName.text) == null &&
        validateEmailField('Email', email.text) == null &&
        validatePhoneField('Phone', phone.text) == null &&
        validatePasswordField('Password', password.text) == null;
  }

  // INDIVIDUAL FIRST NAME< LAST NAME< USERNAME FORM FIELD VALIDATION
  String? validateNameField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    } else if (value.length < 3) {
      return 'More than 3 characters.';
    }
    return null;
  }

  // INDIVIDUAL PHONE NUMBER FORM FIELD VALIDATION
  String? validatePhoneField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }

    final regexForPhone = RegExp(r'^(01[3-9]\d{8})$');

    if (!regexForPhone.hasMatch(value)) {
      return '$fieldName is not a valid phone number.';
    }
    return null;
  }

  // INDIVIDUAL EMAIL FORM FIELD VALIDATION
  String? validateEmailField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    final regexForEmail = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]{3,}$');

    if (!regexForEmail.hasMatch(value)) {
      return 'Invalid $fieldName address.';
    }
    return null;
  }

  // INDIVIDUAL PASSWORD FORM FIELD VALIDATION
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

  void signupForm() {
    if (formKey.currentState!.validate()) {}
  }
}
