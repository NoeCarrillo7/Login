import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}


class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade300,
            Colors.blue,
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
        )
      ),
    );
  }
}



class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {

  @override
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  Widget build(BuildContext) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Login',
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),

          SizedBox(height: 5,),
          Text(
            'Welcome a tu cuenta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            )
          ),
          SizedBox(height: 15,),
          Datos(),
          SizedBox(height: 5,),
          AvisoPrivacidad(),
        ],
      ),
    );
  }
}


class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool showPass = true;


  @override

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Correo',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'micorreo@gmail.com',
            ),
          ),
          const SizedBox(height: 15,),
          const Text(
            'Contraseña',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5,),

          TextFormField(
            obscureText: showPass,
            decoration:  InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Contraseña',
              suffixIcon: IconButton(
                icon: const Icon(Icons.remove_red_eye_outlined),
                onPressed: () => {
                  setState((){
                    showPass == true ? showPass = false : showPass = true;
                  })
                },
              )
            ),
          ),
          const SizedBox(height: 15,),
          const Remember(),
          const SizedBox(height: 30,),
          const Botones(),

        ],
      ),
    );
  }
}

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (value) => {
            setState(()=>checked == false ? checked = true : checked = false),
          },
        ),
        const Text(
          'Recordar cuenta',
          style: TextStyle(fontSize: 12,),
        ),
        const Spacer(),
        TextButton(
          onPressed: () => {},
          child: const Text('¿Olvido su contraseña?', style: TextStyle(fontSize: 12,),),
        ),
      ],
    );
  }
}

class Botones extends StatefulWidget {
  const Botones({super.key});

  @override
  State<Botones> createState() => _BotonesState();
}

class _BotonesState extends State<Botones> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: ()=>{},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff142047))
            ), 
            child: const Text(
              'Login', 
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 25, width: double.infinity,),
        const Text(
          'O entra con',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 25, width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: ()=>{}, 
              child: const Text(
                'Google',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ),
        ),
        const SizedBox(height: 15, width: double.infinity,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
            onPressed: ()=>{}, 
              child: const Text(
                'Facebook',
                style: TextStyle(
                  color: Color(0xff142047),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ),
        ),
      ],
    );
  }
}

class AvisoPrivacidad extends StatefulWidget {
  const AvisoPrivacidad({super.key});

  @override
  State<AvisoPrivacidad> createState() => _AvisoPrivacidadState();
}

class _AvisoPrivacidadState extends State<AvisoPrivacidad> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => {},
          child: const Text(
            'Aviso de privacidad',
            style: TextStyle(fontSize: 12,),
          ),
        ),
      ],
    );
  }
}

