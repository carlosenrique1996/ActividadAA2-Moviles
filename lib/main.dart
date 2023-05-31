import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp ({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app',
      initialRoute: '/',
      routes: {
        '/':(context) => Inicio(),
        '/detalle':(context) => Detalle(),
        '/configuracion':(context) => Configuracion(),
        '/galeria': (context) => Galeria(),
      },
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CERTUS CARLOS ENRIQUE RETA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hola Carlos Enrique",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detalle'),
              child: Text('Ver detalles'),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/configuracion'),
              child: Text('Configuracion'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/galeria'),
              child: Text('Galería'),
            ),         
          ],
        ),
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Detalles"),
        ),
        body: Center(
          child: Text(
            "Pantalla Detalle",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuracion"),
      ),
      body: Center(
        child: Text(
          "Pantalla de configuracion",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

/*class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galería"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Image.asset("assets/imagen1.jpg"),
          //Image.asset("assets/imagen2.jpg"),
          //Image.asset("assets/imagen3.jpg"),
        ],
      ),
    );
  }
}*/

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeria"),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 20),
            Positioned(
              bottom: -50.0,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/imagen1.jpg'),
              ),
            ),
            SizedBox(height: 40),
            ListTile(
              title: Center(
                  child: Text(
                'Nombre',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              )),
              subtitle: Center(
                  child: Text(
                'Carlos Enrique',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Apellidos',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              )),
              subtitle: Center(
                  child: Text(
                'Retamozo Terbullino',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Correo',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              )),
              subtitle: Center(
                  child: Text(
                '75261241@certus.edu.pe',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
            ),
            ListTile(
              title: Center(
                  child: Text(
                'Ciclo de estudio',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              )),
              subtitle: Center(
                  child: Text(
                '3er ciclo',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
