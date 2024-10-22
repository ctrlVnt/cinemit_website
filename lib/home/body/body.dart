
import 'package:cinemit_website/widgets/demo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../global/utils.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  _Body createState() => _Body();
}


class _Body extends State<Body> {

  double? spaceDemoH = 150;
  double? titlespace = 80;

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
                'Vorresti condividere i tuoi gusti cinematigrafici?',
                style: TextStyle(
                    fontSize: isScreenWide ? 60 : 30,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: titlespace,),

                isScreenWide
                ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                    SizedBox(
                      width: 350,
                      child:Text(
                      'Scopri le novità del momento',
                      textAlign: TextAlign.left,
                      style:isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                  const SizedBox(width: 150,),
                    demo("lib/assets/gif/home.gif"),
                  ],
                )
                :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  
                    SizedBox(
                      width: 350,
                      child:Text(
                      'Scopri le novità del momento',
                      textAlign: TextAlign.left,
                      style:isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                  const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/home.gif"),
                  ],
                ),

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
                      'Proponi un film alla comunity attorno a te',
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
                      'Proponi un film alla comunity attorno a te',
                      textAlign: TextAlign.right,
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
                        'Cerca altre sale grazie alla mappa',
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
                        'Cerca altre sale grazie alla mappa',
                        textAlign: TextAlign.left,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    ),
                    const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/map.gif"),
                    
                  ],
                ),

                SizedBox(height: spaceDemoH,),

                isScreenWide
                ?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    demo("lib/assets/gif/filter.gif"),
                    const SizedBox(width: 150,),
                    SizedBox(
                      width: 350,
                      child: Text(
                        'Filtra le sale in base ai tuoi interessi',
                        textAlign: TextAlign.right,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    )
                  ],
                )
                :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350,
                      child: Text(
                        'Filtra le sale in base ai tuoi interessi',
                        textAlign: TextAlign.right,
                        style: isScreenWide ? decorationTxt : decorationTxtNotWide
                      ),
                    ),
                    const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/filter.gif"),
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
                      child:Text(
                      'Personalizza l\'app a tuo piacimento',
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
                      'Personalizza l\'app a tuo piacimento',
                      textAlign: TextAlign.left,
                      style: isScreenWide ? decorationTxt : decorationTxtNotWide
                    ),
                    ),
                    const SizedBox(height: 80,),
                    demoNotWide("lib/assets/gif/theme.gif"),
                  ],
                ),

                SizedBox(height: spaceDemoH,),

              const Text(
                'Scarica ora',
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
            const Text(
              'Coming soon on Apple App Store!',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 30),
            

            SizedBox(height: spaceDemoH,),

              const Text(
                'Team di sviluppo',
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

              const Text(
                'Sostieni !',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: titlespace,),
              SizedBox(
                      width: 800,
                      child:const Text(
                    'Come anticipato, al momento non guadagniamo nulla dalla piattaforma. Sostienici per permetterci di continuare a offrire il meglio, se ti va!',
                    style: TextStyle(
                      fontSize: 25,
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
                  style: TextStyle(fontSize: 24),
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
                      child:const Text(
                      'Unisciti alla community per avere l\'anteprima esclusiva!',
                      style: TextStyle(fontSize: 25),
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
                  SizedBox(height: spaceDemoH,),
                  const Text(
                    'Seguici anche sui social',
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
                          icon: const Icon(Icons.facebook),
                      ),
                      IconButton(
                        onPressed: (){
                          launchURL('https://www.instagram.com/cinem.it/');
                        },
                          icon: const Icon(
                              FontAwesomeIcons.instagram,
                          )
                      ),
                      IconButton(
                        onPressed: (){
                          launchURL('https://www.linkedin.com/company/cinemitapp/?viewAsMember=true');
                        },
                        icon: const Icon(
                            FontAwesomeIcons.linkedin,
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
