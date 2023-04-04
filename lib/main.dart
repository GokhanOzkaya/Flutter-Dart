import 'package:flutter/material.dart';
import 'package:neyesem/menu.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,

          title: Text(
            'OOP RASTGELE MENU',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: Text(
              '**Ratgele Menu İçin BUtona Tıklayınız Beğenmediğinizi Değiştirmek İçin Görsele Tıklayınız.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {


  menu menu_1 = menu();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed:(){
                  setState(() {
                    menu_1.randomUretici('corba');
                  });
                },
                child: Image.asset('images/${menu_1.getUrunGorsel('corba')}'),
              ),
            ),
          ),
          Text(
            '${menu_1.getUrunAdi('corba')}',
            textScaleFactor: 1.3,
          ),
          Text(
            '${menu_1.getUrunFiyat('corba')} TL',
          ),
          divider(),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed:(){
                  setState(() {
                    menu_1.randomUretici('yemek');
                  });
                },
                child: Image.asset('images/${menu_1.getUrunGorsel('anaYemek')}'),
              ),
            ),
          ),
          Text(
              '${menu_1.getUrunAdi('anaYemek')}',
            textScaleFactor: 1.3,
          ),
          Text(
             '${menu_1.getUrunFiyat('anaYemek')}TL ${menu_1.getPorsiyon().toString()} Porsiyon ${menu_1.getVeganMi()}',

          ),
          divider(),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed:(){
                  setState(() {
                     menu_1.randomUretici('tatli');
                  });
                },
                  child: Image.asset('images/${menu_1.getUrunGorsel('tatli')}'),
              ),
            ),
          ),
          Text(
              '${menu_1.getUrunAdi('tatli')}',
            textScaleFactor: 1.3,
          ),
          Text(
            '${menu_1.getUrunFiyat('tatli')} TL ${menu_1.getDilimSayisi().toString()}  Durumu: ${menu_1.getTazeMi().toString()}  ',
          ),
          divider(),
          Divider(height: 10, color: Colors.black,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children:[ Expanded(
                child: ElevatedButton.icon(
                  onPressed:(){
                    karistir();
                  },
                  icon: Icon(Icons.shuffle),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13.0),
                    child: Text('Hepsi Rastgele',textScaleFactor: 1.3,),
                  ),
                ),
              ),
                SizedBox(width: 12,),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed:(){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Toplam Hesap'),
                            content:Column(
                                children:[
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('${menu_1.getUrunAdi('corba')}'),
                                            Text('${menu_1.getUrunAdi('anaYemek')}'),
                                            Text('${menu_1.getUrunAdi('tatli')}'),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text('${menu_1.getUrunFiyat('corba')}'),
                                            Text('${menu_1.getUrunFiyat('anaYemek')}'),
                                            Text('${menu_1.getUrunFiyat('tatli')}'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  divider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Toplam Hesap:',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('${menu_1.getUrunFiyat('corba')! + menu_1.getUrunFiyat('anaYemek')! + menu_1.getUrunFiyat('tatli')!}',style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                ]),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Kapat'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.book),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text('Hesap',textScaleFactor: 1.4,),
                    ),
                  ),
                ),
             ]
            ),
          ),
        ],
      ),
    );
  }

  void karistir() {
    setState(() {
      menu_1.randomUretici('tatli');
      menu_1.randomUretici('corba');
      menu_1.randomUretici('yemek');
    });
  }
}

class divider extends StatelessWidget {
  const divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Divider(
        height: 10,
        color: Colors.black,
      ),
    );
  }
}




