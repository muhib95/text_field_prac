import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final scafoldKey = GlobalKey<ScaffoldState>();
  final formValidate=GlobalKey<FormState>();
  int currentState = 0;
  bool ob = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              scafoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            )),
        title: Text(
          'Login page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_enhance,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        elevation: 0,
      ),
      body: Form(
        key: formValidate,
        child:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Please Enter your Email';
                  }
                  return null;

                },
                onChanged: (value) {
                  print('Value: $value');
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Enter your email',
                  label: Text('Email'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Please Enter your Password';
                  }
                  return null;

                },
                obscureText: ob,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        ob = !ob;
                      });
                    },
                    icon: Icon( ob == false
                        ? Icons.visibility_off
                        : Icons.visibility),

                  ),
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Enter your password',
                  label: Text('Password'),
                ),
              ),
              SizedBox(
                height: 12,
              ),
           MaterialButton(onPressed: () {
             // print(formValidate.currentState);
             if(formValidate.currentState!.validate()){
               print('Login Success');
             }

           },
             child: Text('Login',style: TextStyle(color: Colors.white),),
           color: Colors.red,
           )
            ],
          ),
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Open Camera',
        shape: CircleBorder(),
        child: Icon(
          Icons.camera_alt,
          color: Colors.amber,
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.5),
        currentIndex: currentState,
        onTap: (index) {
          print('You are tap $index');
          setState(() {
            currentState = index;
          });
        },
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
    );
  }
}
