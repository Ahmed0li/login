import 'package:flutter/material.dart';
class login extends StatelessWidget {
  var emilController =TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build (BuildContext context)
  {
return Scaffold(
 appBar: AppBar(),
  body: Padding(
    padding: const EdgeInsets.all(8.0),
    key: formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text(
          'Login',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        TextFormField (
          controller: emilController,
          keyboardType: TextInputType.emailAddress,
          onFieldSubmitted: (value){
            print(value);
        },

          decoration: InputDecoration(
            labelText: 'Email Address',
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.email,
            ),

          ),
          validator: (value)
          {
            if(value!.isEmpty)
            {
              return "Email address must not be empty";
            }
            return null;
          },

        ),
        SizedBox(
          height: 15.0,
        ),
        TextFormField (
          controller: passwordController,
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
          onFieldSubmitted: (value){
            print(value);
          },

          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(
              Icons.remove_red_eye,
            ),

          ),
          validator: (value)
          {
            if(value!.isEmpty)
            {

              return "Password must not be empty";
            }
            return null;
          },

        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child: MaterialButton(

            onPressed: (){
              if(formKey.currentState!.validate())
              {

                }






            },
            child: Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),

            ),


          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
            ),
            TextButton(
              onPressed: (){},
              child: Text(
                'Register Now',
              ),
            ),
          ],
        )
      ],
    ),
  ),
);
}
}