import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sucuri_nft/presentation/components/atom/container_custom.dart';
import 'package:sucuri_nft/presentation/components/atom/input.dart';
import 'package:sucuri_nft/presentation/pages/sign_in/sign_in_controller.dart';
import 'package:sucuri_nft/utils/icons.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final SigninController signinController = SigninController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ContainerCustom(
        size: size,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                ValueListenableBuilder(
                  valueListenable: signinController.valueEmail,
                  builder: (_, value, __) {
                    return Input(
                      value: signinController.valueEmail.value,
                      controller: signinController.controllerEmail,
                      typeInput: TextInputType.text,
                      hint: 'E-mail',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          emailIcon,
                          width: 15,
                          height: 15,
                        ),
                      ),
                      onChange: (value) {
                        signinController.valueEmail.value = value;
                      },
                    );
                  },
                ),
                AnimatedBuilder(
                  animation: Listenable.merge([
                    signinController.hidePassword,
                    signinController.valuePassword
                  ]),
                  builder: (context, value) {
                    return Input(
                      value: signinController.valuePassword.value,
                      hidePassword: signinController.hidePassword.value,
                      controller: signinController.controllerPassword,
                      typeInput: TextInputType.text,
                      hint: 'Senha',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset(
                          passwordIcon,
                          width: 15,
                          height: 15,
                        ),
                      ),
                      sufixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            signinController.hidePassword.value =
                                !signinController.hidePassword.value;
                          },
                          icon: SvgPicture.asset(
                            signinController.hidePassword.value
                                ? eyeClosedIcon
                                : eyeOpenIcon,
                            width: 23,
                            height: 23,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onChange: (value) {
                        signinController.valuePassword.value = value;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
