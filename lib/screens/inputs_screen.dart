import 'package:flutter/material.dart';
import 'package:fl_widgets/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Alejandro',
      'last_name' : 'Guerrero',
      'email'     : 'ale@gmail.com',
      'password'  : '123456',
      'role'      : 'ADmin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs And Forms'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                
                const CustomInputField( labelText: 'Name', hintText: 'Username'),
                const SizedBox( height: 30 ),
                const CustomInputField( labelText: 'Last', hintText: 'Lastname'),
                const SizedBox( height: 30 ),
                const CustomInputField( labelText: 'Email', hintText: 'Email Address', keyboardType: TextInputType.emailAddress ),
                const SizedBox( height: 30 ),
                const CustomInputField( labelText: 'Password', hintText: 'User Password', obscureText: true ),
                const SizedBox( height: 30 ),
          
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode() );
                    /**show values */
                    if( !myFormKey.currentState!.validate() ) {
                      print('form no valid');
                      return;
                    }
                    print(formValues);

                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Save'))
                  ),
                )
          
              ],
            ),
          ) 
        ),
      ),
    );
  }
}

