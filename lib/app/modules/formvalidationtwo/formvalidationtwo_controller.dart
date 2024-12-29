import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class FormvalidationtwoController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final firstName = TextEditingController(), lastName = TextEditingController();
  final userName = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  final passwordConfirmation = TextEditingController();

  // final date = TextEditingController();
  final currentTime = TextEditingController();

  Rx<bool> isDataValidate = false.obs;
  Rx<bool> hidePassword = true.obs;
  Rx<bool> hideConfirmPassword = true.obs;
  Rx<bool> privacyAndTerm = true.obs;

  // Rxn<File> selectedImage = Rxn<File>();
  // File? selectedImage;
  Rx<String> imagePath = ''.obs;
  Rx<String> date = ''.obs;

  @override
  void onInit() {
    super.onInit();
    setCurrentTime();
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
      return '$fieldName is not a valid Email.';
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

  //FOR OPENING DATE PICKER
  void selectDate(BuildContext context) async {
    debugPrint('clicked');
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2011),
      lastDate: DateTime(2030),
    );

    if (pickedDate != null) {
      // date.text = DateFormat('yyyy-MM-dd').format(selectedDate);

      String formattedDate = "${pickedDate.toLocal()}".split(' ')[0];
      date.value = formattedDate;
      debugPrint(' selected date is = ${date.value}');
    }
  }

  Future selectImage({ImageSource source = ImageSource.camera}) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      imagePath.value = pickedImage.path.toString();
      debugPrint('image is = ${imagePath.value}');
    }
  }

  void setCurrentTime() {
    final String foramttedTime = DateFormat('hh:mm a').format(DateTime.now());
    currentTime.text = foramttedTime;
  }

  void clearTime() {
    currentTime.clear();
  }

  void signup() {
    // if (!formKey.currentState!.validate()) {}
  }
}
