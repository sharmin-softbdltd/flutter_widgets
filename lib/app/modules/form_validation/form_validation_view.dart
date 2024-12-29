import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/app/utils/constrant.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'form_validation_controller.dart';

class FormValidationView extends GetView<FormValidationController> {
  const FormValidationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Validation'),
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
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black),
              ),
              customHeight,
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              return controller.validateNameField(
                                  'First Name', value);
                            },
                            style: Theme.of(context).textTheme.labelMedium,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              prefixIcon: Icon(
                                Icons.person,
                                size: 18,
                              ),
                              label: Text(
                                'First name',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: controller.lastName,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              return controller.validateNameField(
                                  'Last Name', value);
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                size: 18,
                              ),
                              label: Text(
                                'Last name',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.userName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return controller.validateNameField('User Name', value);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          size: 18,
                        ),
                        label: Text(
                          'Username',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.email,
                      validator: (value) {
                        return controller.validateEmailField('Email', value);
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          size: 18,
                        ),
                        label: Text(
                          'Email',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: controller.phone,
                      validator: (value) {
                        return controller.validatePhoneField('Phone', value);
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      maxLength: 11,
                      keyboardType: TextInputType.numberWithOptions(),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        counterText: '',
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 18,
                        ),
                        label: Text(
                          'Phone',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                    SizedBox(
                      height: 20,
                    ),
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
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: Get.width,
                      child: Obx(
                        () {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: controller.isDataValidate.value &&
                                    controller.privacyAndTerm.value
                                ? controller.signupForm
                                : null,
                            child: Text('Submit'),
                          );
                        },
                      ),
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
}
