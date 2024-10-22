import 'package:cinemit_website/global/utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            color: Color(0XFF404040),
            height: 100,
            width: MediaQuery.of(context).size.width * 10,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  InkWell(
                  onTap: () {
                    launchURL('https://riccardoventurini.dev/');
                  },
                  child:const Text(
                        'Built with <3 by Riccardo Venturini',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 8,),
                    InkWell(
                      onTap: () {
                        launchURL('https://cinemit.netlify.app/policy.html');
                      },
                      child: const Text(
                        'Policy privacy',
                        style: TextStyle(
                            color: Colors.grey,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ]
              ),
            )
          );
  }
}