import 'package:flutter/material.dart';

class MyRagister extends StatefulWidget {
  const MyRagister({Key? key}) : super(key: key);

  @override
  State<MyRagister> createState() => _MyRagisterState();
}

class _MyRagisterState extends State<MyRagister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35,top: 130),
              child: Text('Create Account',style: TextStyle(color:Colors.white,fontSize: 33
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery. of(context).size.height*0.5,right: 35,left: 35),
                child:Column(
                  children: [
                    TextField( decoration: InputDecoration(
                        fillColor: Colors.purpleAccent.shade100,
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),),
                    SizedBox(
                      height: 30,
                    ),
                    TextField( decoration: InputDecoration(
                        fillColor: Colors.purpleAccent.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),),
                    SizedBox(
                      height: 30,
                    ),

                    TextField(obscureText: true
                      ,
                      decoration: InputDecoration(

                          fillColor: Colors.purpleAccent.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)

                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('sign in',style: TextStyle(
                          fontSize: 27,fontWeight: FontWeight.w700
                      ),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.cyan,
                          child: IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.arrow_forward),
                          ),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'ragister');
                        }, child: Text('Sign up',style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,color:Colors.deepOrange),)),
                        //TextButton(onPressed: (){}, child: Text('Forgot Password',style: TextStyle(decoration: TextDecoration.underline,fontSize: 20,color:Colors.deepOrange),))
                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
