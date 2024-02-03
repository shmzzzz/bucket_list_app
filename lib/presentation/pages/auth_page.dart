import 'package:bucket_list_app/application/usecases/sign_in_use_case.dart';
import 'package:bucket_list_app/application/usecases/sign_up_use_case.dart';
import 'package:bucket_list_app/presentation/theme/app_strings.dart';
import 'package:bucket_list_app/presentation/theme/sizes.dart';
import 'package:bucket_list_app/presentation/widgets/auth_switch_button.dart';
import 'package:bucket_list_app/presentation/widgets/auth_switch_text.dart';
import 'package:bucket_list_app/presentation/widgets/email_text_form.dart';
import 'package:bucket_list_app/presentation/widgets/password_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthPage extends HookWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailFormKey = GlobalKey<FormState>();
    final passwordFormKey = GlobalKey<FormState>();

    final emailController = useTextEditingController(text: AppStrings.empty);
    final passwordController = useTextEditingController(text: AppStrings.empty);

    final isSignIn = useState(true);
    final isAuthenticating = useState(false);

    void submit() async {
      final isValid = emailFormKey.currentState!.validate() &&
          passwordFormKey.currentState!.validate();

      // currentStateがvalidateでない場合は処理を行わない
      if (!isValid) {
        return;
      }

      emailFormKey.currentState!.save();
      passwordFormKey.currentState!.save();

      if (isSignIn.value) {
        // ログイン時の処理
        await SignInUseCase.signIn(
          email: emailController.text,
          password: passwordController.text,
          context: context,
          setAuthenticatingStatus: (value) => isAuthenticating.value = value,
        );
      } else {
        await SignUpUseCase.signUp(
          email: emailController.text,
          password: passwordController.text,
          context: context,
          setSignInStatus: (value) => isSignIn.value = value,
          setAuthenticatingStatus: (value) => isAuthenticating.value = value,
        );
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.p44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              AppStrings.appTitle,
              style: TextStyle(
                fontSize: Sizes.p48,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: Sizes.p80),
            EmailTextForm(
              formKey: emailFormKey,
              controller: emailController,
            ),
            const SizedBox(height: Sizes.p20),
            PasswordTextForm(
              formKey: passwordFormKey,
              controller: passwordController,
            ),
            const SizedBox(height: Sizes.p40),
            AuthSwitchButton(
              submit: submit,
              isSignIn: isSignIn,
            ),
            const SizedBox(height: Sizes.p20),
            AuthSwitchText(
              isSignIn: isSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
