import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  await launchUrl(Uri.parse(url));
}

TextStyle decorationTxt = TextStyle(
  fontSize: 50,
  decoration: TextDecoration.underline,
  decorationColor: const Color(0XFFff320a).withOpacity(0.7),
  decorationThickness: 10,
  fontWeight: FontWeight.bold
);

TextStyle decorationTxtNotWide = TextStyle(
  fontSize: 30,
  decoration: TextDecoration.underline,
  decorationColor: const Color(0XFFff320a).withOpacity(0.7),
  decorationThickness: 10,
  fontWeight: FontWeight.bold
);

Container demo (String img){
  return Container(
                      height: 800,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(
                          img,
                          ),
                          fit: BoxFit.cover
                        )
                      )
                    );
} 

Container demoNotWide (String img){
  return Container(
                      height: 500,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: AssetImage(
                          img,
                          ),
                          fit: BoxFit.cover
                        )
                      )
                    );
} 