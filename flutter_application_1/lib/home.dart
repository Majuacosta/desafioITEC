import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool mostrarContainers = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 200, 194),
        appBar: AppBar(
          title: const Text('SouGov'),
          backgroundColor: Color.fromARGB(255, 78, 70, 219),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.notification_add_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app_outlined))
          ],
        ),
        drawer: const NavigationDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 30.0,
                            color: Color.fromARGB(255, 78, 70, 219),
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Olá, '),
                          TextSpan(
                              text: 'Pedrinho!',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 78, 70, 219),
                      size: 30.00,
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.all(10.00),
                    width: 350.00,
                    height: 80.00,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 197, 206, 208),
                      borderRadius: BorderRadius.circular(5.00),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.00),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vinculo(Orgão-Ucrg-Matricula)",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 78, 70, 219),
                                  fontSize: 10.00),
                            ),
                            Text(
                              "FURG-UNIDADE-100000",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 5, 52),
                                  fontSize: 8.00),
                            ),
                            Text(""),
                            Text(
                              "Cargo",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 78, 70, 219),
                                  fontSize: 10.00),
                            ),
                            Text(
                              "Analista De Tec Da Informação",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 7, 5, 52),
                                  fontSize: 8.00),
                            ),
                          ]),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Contracheque| Outurbo 2023",
                      style: TextStyle(
                        color: Color.fromARGB(255, 78, 70, 219),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            mostrarContainers = !mostrarContainers;
                          });
                        },
                        icon: Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 78, 70, 219),
                        ))
                  ],
                ),
                Text(
                  "resumo do ultimo contracheque",
                  style: TextStyle(color: Colors.black26, fontSize: 12.00),
                ),
                if (mostrarContainers)
                  Row(
                    children: [
                      Container(
                        width: 400.00,
                        height: 65.00,
                        margin: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 227, 25, 25),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.00),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 197, 206, 208),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.00),
                                    bottomRight: Radius.circular(10.00),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.00),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end, // Alinha os elementos à direita
                                      children: [
                                        Text(
                                          "Liquido",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.00,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(""),
                                        Row(children: [
                                          Text(
                                            "800,00",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.00),
                                          ),
                                          Icon(
                                            Icons.person,
                                            color: Color.fromARGB(
                                                255, 78, 70, 219),
                                            size: 15.00,
                                          )
                                        ])
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.00),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 197, 206, 208),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.00),
                                    bottomRight: Radius.circular(10.00),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.00),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end, // Alinha os elementos à direita
                                      children: [
                                        Text(
                                          "Bruto",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.00,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(""),
                                        Row(children: [
                                          Text(
                                            "1.000,00",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.00),
                                          ),
                                          Icon(
                                            Icons.person,
                                            color: Color.fromARGB(
                                                255, 78, 70, 219),
                                            size: 15.00,
                                          )
                                        ])
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                              width: 10.0,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.00),
                                  bottomLeft: Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 197, 206, 208),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.00),
                                    bottomRight: Radius.circular(10.00),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.00),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .end, // Alinha os elementos à direita
                                      children: [
                                        Text(
                                          "Descontos",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.00,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(""),
                                        Row(children: [
                                          Text(
                                            "200,00",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14.00),
                                          ),
                                          Icon(
                                            Icons.person,
                                            color: Color.fromARGB(
                                                255, 78, 70, 219),
                                            size: 15.00,
                                          )
                                        ])
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                Text(""),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Meus contracheques",
                        style: TextStyle(
                          color: Color.fromARGB(255, 78, 70, 219),
                          fontSize: 12.00,
                        ),
                      ),
                      Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 78, 70, 219),
                        size: 15.00,
                      )
                    ],
                  ),
                ),
                Text(""),
                Text(
                  "Solicitações",
                  style: TextStyle(color: Colors.blue, fontSize: 15.00),
                ),
                Text(
                  "envie requerimentos para a sua unidade gestora",
                  style: TextStyle(color: Colors.black26, fontSize: 12.00),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 206, 208),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 78, 70, 219),
                            size: 40.00,
                          ),
                          Text(
                            "Saude",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                          Text(
                            "Suplementar",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 206, 208),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 78, 70, 219),
                            size: 40.00,
                          ),
                          Text(
                            "Saude",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                          Text(
                            "Suplementar",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 197, 206, 208),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 78, 70, 219),
                            size: 40.00,
                          ),
                          Text(
                            "Saude",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                          Text(
                            "Suplementar",
                            style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
          ],
        )),
      );

  Widget buildHeader(BuildContext context) => Container(
        color: Color.fromARGB(255, 3, 75, 218),
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: Column(
          children: const [
            Icon(
              Icons.auto_stories,
              size: 90,
            ),
            Text(
              'SouGov',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
}
