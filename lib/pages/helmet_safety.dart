
import 'package:flutter/material.dart';
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/state.dart';

class HelmetSafety extends StatefulWidget {
  const HelmetSafety({ Key key }) : super(key: key);

  @override
  State<HelmetSafety> createState() => _HelmetSafetyState();
}

class _HelmetSafetyState extends State<HelmetSafety> {

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
        child: Column(children: [
        NewHelmet(text: 
        "1.Ташкилотларда меҳнатни муҳофаза қилиш хизматини яратиш ва фаолиятини ташкил этиш тартиби тўғрисида НИЗОМ",
        urls: "https://lex.uz/uz/docs/4143044#4148269",
        ),
        NewHelmet(text: 
        "2.Меҳнатни муҳофаза қилиш соҳасида қайта тайёрлаш ва малака ошириш тартиби тўғрисида НИЗОМ",
        urls: "https://lex.uz/uz/docs/3184928#3186089",
        ),
        NewHelmet(text: 
        "3.Ишлаб чиқаришдаги бахтсиз ҳодисаларни ва ходимлар саломатлигининг меҳнат вазифаларини бажариш билан боғлиқ бошқа хил зарарланишини текшириш ва ҳисобга олиш тўғрисида низомни тасдиқлаш ҳақида",
        urls: "https://lex.uz/uz/docs/545128",
        ),
       NewHelmet(text: 
        "4.Ходимларга уларнинг меҳнат вазифаларини бажариш билан боғлиқ ҳолда жароҳатланиши, касб касалликларига чалиниши ёки саломатликнинг бошқа хил шикастланиши туфайли етказилган зарарни тўлаш ҚОИДАЛАРИ",
        urls: "https://lex.uz/uz/docs/492899#494219",
        ),
       NewHelmet(text: 
        "5.Иш ўринларини меҳнат шароитлари ва асбоб-ускуналарнинг жароҳатлаш хавфлилиги юзасидан аттестациядан ўтказиш тартиби тўғрисида НИЗОМ",
        urls: "https://lex.uz/uz/docs/2463973#2464009",
        ),
        NewHelmet(text: 
        "6.ХОДИМЛАРНИ ТИББИЙ КЎРИКДАН ЎТКАЗИШ ТАРТИБИ ТЎҒРИСИДАГИ НИЗОМНИ ТАСДИҚЛАШ ҲАҚИДА",
        urls: "https://lex.uz/uz/docs/2046010",
        ),
        NewHelmet(text: 
        "7.МЕҲНАТ МУҲОФАЗАСИ БЎЙИЧА ВАКИЛ ТЎҒРИСИДА НИЗОМ",
        urls: "https://lex.uz/uz/docs/914679",
        )
      ]),)
      )
      )
     
    );
    }
}