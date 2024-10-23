
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../../global/utils.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _Body createState() => _Body();
}


class _Body extends State<Body> {

  double? spaceDemoH = 150;
  double? titlespace = 50;

  @override
  Widget build(BuildContext context) {

    bool isScreenWide = MediaQuery.sizeOf(context).width >= 700;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:80),
              Text(
                AppLocalizations.of(context)!.shareCinematicTastes,
                style: TextStyle(
                    fontSize: isScreenWide ? 60 : 30,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 80,),

                if(isScreenWide)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                    SizedBox(
                      width: 350,
                      child:Text(
                      AppLocalizations.of(context)!.discoverNewReleases,
                      textAlign: TextAlign.left,
                      style:isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                  const SizedBox(width: 150,),
                    demo("lib/assets/gif/home.gif"),
                  ],
                ),
                
                if(isScreenWide)
                SizedBox(height: spaceDemoH,),

                isScreenWide
                ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[                
                   demo("lib/assets/gif/create.gif"),
                    const SizedBox(width: 150,),
                    SizedBox(
                      width: 350,
                      child: Text(
                      AppLocalizations.of(context)!.proposeToCommunity,
                      textAlign: TextAlign.right,
                      style: isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    )
                  ],
                )
                :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[                
                    SizedBox(
                      width: 350,
                      child: Text(
                      AppLocalizations.of(context)!.discoverAndPropose,
                      textAlign: TextAlign.center,
                      style: isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                    const SizedBox(height: 80,),
                   demoNotWide("lib/assets/gif/create.gif"),
                  ],
                ),

                SizedBox(height: spaceDemoH,),

                isScreenWide
                ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                      width: 350,
                      child: Text(
                        AppLocalizations.of(context)!.mapTheaters,
                        textAlign: TextAlign.left,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    ),
                    const SizedBox(width: 150,),
                    demo("lib/assets/gif/map.gif"),
                    
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SizedBox(
                      width: 350,
                      child: Text(
                        AppLocalizations.of(context)!.mapTheaters,
                        textAlign: TextAlign.center,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    ),
                    const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/map.gif"),
                    
                  ],
                ),

                SizedBox(height: spaceDemoH,),

                if(isScreenWide)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    demo("lib/assets/gif/filter.gif"),
                    const SizedBox(width: 150,),
                    SizedBox(
                      width: 350,
                      child: Text(
                        AppLocalizations.of(context)!.filterTheaters,
                        textAlign: TextAlign.right,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    )
                  ],
                ),
                if(isScreenWide)
                SizedBox(height: spaceDemoH,),
                
                isScreenWide
                ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      child:Text(
                      AppLocalizations.of(context)!.customizeApp,
                      textAlign: TextAlign.left,
                      style: isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                    const SizedBox(width: 150,),
                    demo("lib/assets/gif/theme.gif"),
                  ],
                )
                :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      child:Text(
                      AppLocalizations.of(context)!.customizeApp,
                      textAlign: TextAlign.center,
                      style: isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                    const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/theme.gif"),
                  ],
                ),

                SizedBox(height: spaceDemoH,),

              Text(
                AppLocalizations.of(context)!.downloadNow,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: titlespace,),

                InkWell(
              onTap: () {
                launchURL('https://play.google.com/store/apps/details?id=com.ctrlvnt.cinemit');
              },
              splashColor: Colors.white10,
              child: Ink.image(
                fit: BoxFit.contain, 
                width: 200,
                height: 60,
                image: const AssetImage(
                  'lib/assets/gplayButton.png',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Coming soon on Apple App Store!',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 30),
            

            SizedBox(height: spaceDemoH,),

              Text(
                AppLocalizations.of(context)!.teamDevelopment,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: titlespace,),

              Container(
                height: 300,
                decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(150.0),
                ),
                padding:EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset('lib/assets/profile.png'),
              ),
              const SizedBox(height: 20,),
              Text(
                'Riccardo Venturini',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),
              ),

              Text(
                'Full-stack developer',
                style: TextStyle(
                    fontSize: 23,
                ),
              ),

              SizedBox(height: spaceDemoH,),

              Text(
                AppLocalizations.of(context)!.supportUs,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: titlespace,),
              SizedBox(
                      width: 800,
                      child: Text(
                    AppLocalizations.of(context)!.supportMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                onPressed: (){
                    launchURL('https://www.buymeacoffee.com/cinemit');
                },
                  icon: const Text(
                  '☕',
                  style: TextStyle(fontSize: 20),
                  ),
                  label: const Text(
                    'Buy me a coffee',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
                      foregroundColor: const Color(0xFF000000),
                      backgroundColor: const Color(0xFFFFDD00),
                    ),
                  ),
                  SizedBox(height: titlespace,),
                  SizedBox(
                      width: 800,
                      child: Text(
                      AppLocalizations.of(context)!.joinCommunity,
                      style: TextStyle(
                        fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed:(){
                      launchURL('https://t.me/+BYG9gSjWvdw3MjY0');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.telegram),
                        SizedBox(width: 8),
                        Text(
                          'Join Telegram Channel',
                           style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: titlespace,),
                  Text(
                    AppLocalizations.of(context)!.followUsOnSocial,
                    style: TextStyle(
                        fontSize: 20,
                    ),
                  ),
              const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: (){
                            launchURL('https://www.facebook.com/profile.php?id=61563026918463');
                          },
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.white,),
                      ),
                      IconButton(
                        onPressed: (){
                          launchURL('https://www.instagram.com/cinem.it/');
                        },
                          icon: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                          )
                      ),
                      IconButton(
                        onPressed: (){
                          launchURL('https://www.linkedin.com/company/cinemitapp/?viewAsMember=true');
                        },
                        icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                        )
                      ),
                      IconButton(
                        onPressed: (){
                          launchURL('https://www.tiktok.com/@cinemit.app');
                        },
                        icon: const Icon(
                            FontAwesomeIcons.tiktok,
                            color: Colors.white,
                        )
                      ),
                    ],
                  ),

                  const SizedBox(height: 30,),
            ],
          ),
        ),
    );
  }
}
