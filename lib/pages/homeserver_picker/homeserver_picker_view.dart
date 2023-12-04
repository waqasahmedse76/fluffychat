// Flutter imports:

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'package:fluffychat/config/app_config.dart';
import 'package:fluffychat/pangea/pages/connect/p_sso_button.dart';
import 'package:fluffychat/pangea/widgets/common/pangea_logo_svg.dart';
import 'package:fluffychat/pangea/widgets/signup/signup_buttons.dart';
import 'package:fluffychat/widgets/layouts/login_scaffold.dart';
import 'homeserver_picker.dart';

class HomeserverPickerView extends StatelessWidget {
  final HomeserverPickerController controller;

  const HomeserverPickerView(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    final identityProviders = controller.identityProviders;
    final errorText = controller.error;
    return LoginScaffold(
      // #Pangea
      // enforceMobileMode: Matrix.of(context).client.isLogged(),
      // appBar: AppBar(
      //   titleSpacing: 12,
      //   automaticallyImplyLeading: false,
      //   title: HomeserverAppBar(controller: controller),
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConfig.applicationName,
        ),
      ),
      // Pangea#
      body: SafeArea(
        child: Column(
          children: [
            // display a prominent banner to import session for TOR browser
            // users. This feature is just some UX sugar as TOR users are
            // usually forced to logout as TOR browser is non-persistent
            // #Pangea
            // AnimatedContainer(
            //   height: controller.isTorBrowser ? 64 : 0,
            //   duration: FluffyThemes.animationDuration,
            //   curve: FluffyThemes.animationCurve,
            //   clipBehavior: Clip.hardEdge,
            //   decoration: const BoxDecoration(),
            //   child: Material(
            //     clipBehavior: Clip.hardEdge,
            //     borderRadius:
            //         const BorderRadius.vertical(bottom: Radius.circular(8)),
            //     color: Theme.of(context).colorScheme.surface,
            //     child: ListTile(
            //       leading: const Icon(Icons.vpn_key),
            //       title: Text(L10n.of(context)!.hydrateTor),
            //       subtitle: Text(L10n.of(context)!.hydrateTorLong),
            //       trailing: const Icon(Icons.chevron_right_outlined),
            //       onTap: controller.restoreBackup,
            //     ),
            //   ),
            // ),
            // Pangea#
            Expanded(
              child: controller.isLoading
                  ? const Center(child: CircularProgressIndicator.adaptive())
                  : ListView(
                      children: [
                        // #Pangea
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        //   child: FluffyThemes.isColumnMode(context)
                        //       ? Image.asset(
                        //           'assets/info-logo.png',
                        //           height: 96,
                        //         )
                        //       : Image.asset('assets/banner_transparent.png'),
                        // ),
                        // Pangea#
                        const SizedBox(height: 12),
                        if (errorText != null) ...[
                          const Center(
                            child: Icon(
                              Icons.error_outline,
                              size: 48,
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Center(
                            child: Text(
                              errorText,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          // #Pangea
                          // Center(
                          //   child: Text(
                          //     L10n.of(context)!
                          //         .pleaseTryAgainLaterOrChooseDifferentServer,
                          //     textAlign: TextAlign.center,
                          //     style: TextStyle(
                          //       color: Theme.of(context).colorScheme.error,
                          //       fontSize: 12,
                          //     ),
                          //   ),
                          // ),
                          // Pangea#
                          const SizedBox(height: 12),
                        ],
                        // #Pangea
                        const SignupButtons(),
                        // Pangea#
                        if (identityProviders != null) ...[
                          ...identityProviders.map(
                            // #Pangea
                            (provider) => Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Hero(
                                tag:
                                    "ssobutton ${provider.id ?? provider.name}",
                                child: PangeaSsoButton(
                                  identityProvider: provider,
                                  onPressed: () =>
                                      controller.ssoLoginAction(provider),
                                ),
                              ),
                            ),
                            // (provider) => _LoginButton(
                            //   icon: provider.icon == null
                            //       ? const Icon(Icons.open_in_new_outlined)
                            //       : Material(
                            //           color: Colors.white,
                            //           borderRadius: BorderRadius.circular(
                            //             AppConfig.borderRadius,
                            //           ),
                            //           clipBehavior: Clip.hardEdge,
                            //           child: MxcImage(
                            //             placeholder: (_) =>
                            //                 const Icon(Icons.web_outlined),
                            //             uri: Uri.parse(provider.icon!),
                            //             width: 24,
                            //             height: 24,
                            //           ),
                            //         ),
                            //   label: L10n.of(context)!.signInWith(
                            //     provider.name ??
                            //         provider.brand ??
                            //         L10n.of(context)!.singlesignon,
                            //   ),
                            // onPressed: () =>
                            //     controller.ssoLoginAction(provider.id!),
                            // Pangea#
                          ),
                        ],
                        if (controller.supportsPasswordLogin)
                          // #Pangea
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Hero(
                              tag: 'signinButton',
                              child: ElevatedButton(
                                onPressed: controller.login,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const PangeaLogoSvg(width: 20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "${L10n.of(context)!.loginOrSignup} Pangea Chat",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        // _LoginButton(
                        //   onPressed: controller.login,
                        //   icon: const Icon(Icons.login_outlined),
                        //   label: L10n.of(context)!.signInWithPassword,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 12),
                        //   child: Center(
                        //     child: SizedBox(
                        //       width: 256,
                        //       child: TextButton(
                        //         style: TextButton.styleFrom(
                        //           padding:
                        //               const EdgeInsets.symmetric(vertical: 12),
                        //         ),
                        //         onPressed: controller.restoreBackup,
                        //         child: Text(
                        //           L10n.of(context)!.hydrate,
                        //           textAlign: TextAlign.center,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Pangea#
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final void Function() onPressed;

  const _LoginButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      alignment: Alignment.center,
      child: SizedBox(
        width: 256,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(90),
            ),
            foregroundColor: Theme.of(context).colorScheme.onBackground,
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              icon,
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
