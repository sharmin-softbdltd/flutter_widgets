import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/constant.dart';
import 'form_validation_two_controller.dart';

class FormValidationTwoView extends GetView<FormValidationTwoController> {
  const FormValidationTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation Two'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              customHeight,
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    // FOR USER IMAGE
                    Center(
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: AlignmentDirectional.center,
                        children: [
                          Obx(
                            () {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image(
                                  image: controller.imagePath.value.isNotEmpty
                                      ? FileImage(
                                          File(controller.imagePath.value))
                                      : AssetImage(controller
                                              .imagePath.value.isNotEmpty
                                          ? controller.imagePath.value
                                          : 'assets/images/form_validation/person.png'),
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.1),
                                      blurRadius: 2,
                                      spreadRadius: 3)
                                ],
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  openBottomSheetForPickImage(context);
                                },
                                icon: Icon(
                                  Iconsax.camera,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    customHeight,

                    //FOR USER FIRST NAME AND LAST NAME
                    Row(
                      children: [
                        customExpandedFormField(
                          context,
                          controller.firstName,
                          'First Name',
                          Icons.person,
                          (value) =>
                              controller.validateNameField('First Name', value),
                        ),
                        customWidth,
                        customExpandedFormField(
                          context,
                          controller.lastName,
                          'Last Name',
                          Icons.person,
                          (value) =>
                              controller.validateNameField('Last Name', value),
                        ),
                      ],
                    ),
                    customHeight,

                    //FOR USERNAME
                    customFormField(
                      context,
                      controller.userName,
                      'Username',
                      Icons.person,
                      validator: (value) =>
                          controller.validateNameField('Username', value),
                    ),
                    customHeight,

                    //FOR DATE
                    Obx(
                      () {
                        return TextFormField(
                          style: TextStyle(color: Colors.black),
                          onTap: () {
                            controller.selectDate(context);
                          },
                          readOnly: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.calendar_month),
                            suffixIcon: Icon(
                              Icons.clear,
                              size: 16,
                            ),
                            label: Text(
                              'Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                        );
                      },
                    ),

                    customHeight,

                    //FOR TIME
                    customFormField(
                      context,
                      controller.currentTime,
                      'Current Time',
                      Iconsax.clock,
                      suffixIcon: Icons.clear,
                      onPressedSuffixIcon: controller.clearTime,
                    ),
                    customHeight,

                    // FOR EMAIL
                    customFormField(
                      context,
                      controller.email,
                      'Email',
                      Icons.email,
                      validator: (value) =>
                          controller.validateEmailField('Email', value),
                    ),
                    customHeight,

                    //FOR PHONE
                    customFormField(
                      context,
                      controller.phone,
                      'Phone',
                      Icons.phone,
                      validator: (value) =>
                          controller.validatePhoneField('Phone', value),
                    ),
                    customHeight,

                    // FOR PASSWORD
                    Obx(() {
                      return TextFormField(
                        controller: controller.password,
                        obscureText: controller.hidePassword.value,
                        validator: (value) {
                          return controller.validatePasswordField(
                              'Password', value);
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password_sharp,
                            size: 18,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.hidePassword.value =
                                  !controller.hidePassword.value;
                            },
                            icon: Icon(
                              controller.hidePassword.value
                                  ? Iconsax.eye_slash
                                  : Icons.remove_red_eye,
                              size: 18,
                            ),
                          ),
                          label: Text(
                            'Password',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      );
                    }),
                    customHeight,

                    // FOR  PASSWORD CONFIRMATION
                    Obx(() {
                      return TextFormField(
                        controller: controller.passwordConfirmation,
                        obscureText: controller.hideConfirmPassword.value,
                        validator: (value) {
                          return controller.validateConfirmPasswordField(value);
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password_sharp,
                            size: 18,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.hideConfirmPassword.value =
                                  !controller.hideConfirmPassword.value;
                            },
                            icon: Icon(
                              controller.hideConfirmPassword.value
                                  ? Iconsax.eye_slash
                                  : Icons.remove_red_eye,
                              size: 18,
                            ),
                          ),
                          label: Text(
                            'Confirm Password',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      );
                    }),
                    customHeight,

                    // FOR TERMS AND CONDITION
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Obx(
                            () {
                              return Checkbox(
                                value: controller.privacyAndTerm.value,
                                onChanged: (value) {
                                  controller.privacyAndTerm.value =
                                      !controller.privacyAndTerm.value;
                                },
                                activeColor: Colors.blue,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'I agree to',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: ' Privacy Policy',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              TextSpan(
                                  text: ' and ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                  text: ' Terms & Conditions',
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                        )
                      ],
                    ),
                    customHeight,

                    // FOR BUTTON
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        return controller.signup();
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //FOR EXPANDED
  Widget customExpandedFormField(
    BuildContext context,
    TextEditingController inputController,
    String label,
    IconData icon,
    String? Function(String?)? validator,
  ) {
    return Expanded(
      child: TextFormField(
        validator: validator,
        controller: inputController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .copyWith(color: Colors.black),
        decoration: InputDecoration(
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(
            icon,
            size: 18,
          ),
          label: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }

  Widget customFormField(
    BuildContext context,
    TextEditingController inputController,
    String label,
    IconData prefixIcon, {
    bool? isReadOnly,
    IconData? suffixIcon,
    void Function()? onPressedSuffixIcon,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      style: TextStyle(fontSize: 12),
      controller: inputController,
      readOnly: isReadOnly ?? false,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: inputController.text.isNotEmpty
            ? IconButton(
                onPressed: onPressedSuffixIcon,
                icon: Icon(suffixIcon, size: 16),
              )
            : null,
        prefixIcon: Icon(
          prefixIcon,
          size: 16,
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }

// FOR PICKING IMAGE
  void openBottomSheetForPickImage(BuildContext context) {
    Get.bottomSheet(
        SizedBox(
          height: 150,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Select Image From',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (Get.isBottomSheetOpen ?? false) Get.back();
                          controller.selectImage(source: ImageSource.camera);
                        },
                        icon: Icon(
                          Icons.camera_alt_rounded,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          if (Get.isBottomSheetOpen ?? false) Get.back();
                          controller.selectImage(source: ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.photo,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Photos',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.pink,
        isDismissible: true);
  }
}
