
import 'package:flutter/material.dart';

class Gasto extends StatefulWidget{
  const Gasto({super.key});

  @override
  State<Gasto> createState() => _GastoState();
}

class _GastoState extends State<Gasto>{
    void _mensaje(String message) {
      final snackBar = SnackBar(
        content: Text(message),
        action: SnackBarAction(
        label: 'Undo',
        onPressed: () {

        },
        )
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
      length: 4,
      child: Scaffold(
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       const DrawerHeader(
        //         decoration: BoxDecoration(color: Colors.green),
        //         child: Text('Menu Principal'),
        //       ),
        //       ListTile(
        //         title: const Text('Item 1'),
        //         onTap: () {
        //           _mensaje("Hola, soy el item 1");
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Menu 2'),
        //           onTap: () {
        //             _mensaje('Hola, soy el Item 2');
        //           },),
        //     ],
        //   )
        // ),
          appBar: AppBar(
            title: const Text('M& Spac3'),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Chats'),
              Tab(text: 'Estados'),
              Tab(text: 'Grupos'),
            ]),
            backgroundColor: Colors.lightGreen,
            actions: [
              IconButton(
                icon: const Icon(Icons.search), 
                onPressed: () {
                  _mensaje("Presionaste la busqueda");
                }
                )
            ]
          ),
          body: TabBarView(children: [
            //CAMERA
            const Column(
              children: [
                ListTile(
                  title: Icon(Icons.camera),
                )
              ],
            ),
            //CHATS
            const Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/pedro.jpg'),
                    radius: 30,
                  ),
                  trailing: Text('Ayer'),
                  title: Text('Manuel Amador', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.blueAccent, size: 20,),
                      SizedBox(width: 8),
                      Text('Como estas?')
                    ],),
                  tileColor: Colors.white,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tono.png'),
                    radius: 30,
                  ),
                  trailing: Text('Ayer'),
                  title: Text('Tono Black', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.grey, size: 20,),
                      SizedBox(width: 8),
                      Text('yo llore')
                    ],),
                  tileColor: Colors.white,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ani.jpg'),
                    radius: 30,
                  ),
                  trailing: Text('Ayer'),
                  title: Text('Anuel AAA', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.blueAccent, size: 20,),
                      SizedBox(width: 8),
                      Text('YO NO FUY!')
                    ],),
                  tileColor: Colors.white,
                ),
                
              ],
            ),
            //ESTADOS
            Column(
              children: [
                ListTile(
                  leading: Stack(
                    children: [
                      const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/estado.jpg'),
                    radius: 30,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(height: 24, width: 24, decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size:16,
                    ),
                    ),
                  ),
                    ],
                  ),
                  title: const Text('MI ESTADO', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold,)),
                  subtitle: const Row(
                    children: [
                      Text('Añade un nuevo estado')
                    ],),
                  tileColor: Colors.white,
                ),

                ListTile(
                  title: Text('Estados recientes'),
                  tileColor: Colors.white,
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/ani_estado.jpg'),
                    radius: 30,
                  ),
                  title: Text('Anuel AAA', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Text('Hace 7 minutos')
                    ],),
                  tileColor: Colors.white,
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/tono_papa_estado.jpg'),
                    radius: 30,
                  ),
                  title: Text('Tono Black Papa', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    children: [
                      Text('Hace 7 minutos')
                    ],),
                  tileColor: Colors.white,
                ),
                
              ],
            ),

            Column(
              children: [
                ListTile(
                  title: Text('GRUPOS'),
                ),
                
              ],
            ),

            const Icon(Icons.directions_transit),
            const Icon(Icons.directions_bike),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              final snackBar = SnackBar(
                backgroundColor: Colors.green,
                content: const Text('Hola! Soy una SnackBar!'),
                action: SnackBarAction(label: 'Cerrar', onPressed: () {

                },
                ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            backgroundColor: Colors.green,
            child: const Icon(Icons.search),
            ),
      ),
      );
    }
  }