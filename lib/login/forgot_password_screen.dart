import 'package:flutter/material.dart';

import '../regex/validation_regex.dart';
import '../utils/app_colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  void sendResetLink() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reset link sent successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(Icons.arrow_back),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 35),

          child: Form(
            key: _formKey,

            child: Column(
              children: [
                const SizedBox(height: 25),

                Container(
                  width: 105,
                  height: 105,

                  decoration: const BoxDecoration(
                    color: Color(0xFFE5F0FF),
                    shape: BoxShape.circle,
                  ),

                  padding: const EdgeInsets.all(27),

                  child: Image.asset('assets/icons/lock_icon.png'),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Reset Your Password',

                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Enter your email and we'll send you\n"
                  "a link to reset your password.",

                  textAlign: TextAlign.center,

                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                    color: AppColors.secondaryText,
                  ),
                ),

                const SizedBox(height: 30),

                TextFormField(
                  controller: emailController,

                  keyboardType: TextInputType.emailAddress,

                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),

                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your email';
                    }

                    if (!ValidationRegex.email.hasMatch(value.trim())) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                ),

                const SizedBox(height: 18),

                SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    onPressed: sendResetLink,

                    child: const Text(
                      'Send Reset Link',

                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
