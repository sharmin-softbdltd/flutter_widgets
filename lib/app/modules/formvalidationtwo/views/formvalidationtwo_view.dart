import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../controllers/formvalidationtwo_controller.dart';

class FormvalidationtwoView extends GetView<FormvalidationtwoController> {
  const FormvalidationtwoView({super.key});

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
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
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
                          Image(
                            width: 100,
                            height: 100,
                            image: AssetImage(
                                'assets/images/form_validation/person.png'),
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
                                onPressed: null,
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
                    SizedBox(
                      height: 15,
                    ),

                    //FOR USER FIRST NAME AND LAST NAME
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.text,
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
                            keyboardType: TextInputType.text,
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

                    //FOR USERNAME
                    TextFormField(
                      controller: controller.userName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return controller.validateNameField('User Name', value);
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Iconsax.user,
                          size: 16,
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

                    //FOR DATE OF BIRTH
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      controller: controller.dateOfBirth,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // validator: (value) {
                      //   return controller.validateNameField('User Name', value);
                      // },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove,
                          size: 16,
                        ),
                        prefixIcon: Icon(
                          Iconsax.calendar,
                          size: 16,
                        ),
                        label: Text(
                          'Date of Birth',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //FOR TIME
                    TextFormField(
                      controller: controller.currentTime,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      // validator: (value) {
                      //   return controller.validateNameField('User Name', value);
                      // },
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.remove,
                          size: 16,
                        ),
                        prefixIcon: Icon(
                          Iconsax.clock,
                          size: 16,
                        ),
                        label: Text(
                          'Current Time',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // FOR EMAIL
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

                    //FOR PHONE
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
                    SizedBox(
                      height: 20,
                    ),

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
                    SizedBox(
                      height: 20,
                    ),

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
                    SizedBox(
                      height: 20,
                    ),

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

                    // SizedBox(
                    //   width: Get.width,
                    //   child: Obx(
                    //     () {
                    //       return ElevatedButton(
                    //         style: ElevatedButton.styleFrom(
                    //           shape: RoundedRectangleBorder(
                    //             borderRadius: BorderRadius.circular(10),
                    //           ),
                    //         ),
                    //         onPressed: null,
                    //         child: Text('Submit'),
                    //       );
                    //     },
                    //   ),
                    // ),
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
