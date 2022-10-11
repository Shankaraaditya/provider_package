import 'package:flutter/material.dart';
import 'package:flutter_application_provider/Provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Worthy..???__I Will check using provider'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        
          child: Container(
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        
        child:ChangeNotifierProvider<HomePageProvider>(
          
          create: (context)=> HomePageProvider(), // to create instance of class we have built for 
          // change notifier

          child: Consumer<HomePageProvider>(
            builder:((context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Your Age"
              
              ),
              onChanged: (val){
                provider.checkEligibility(int.parse(val));
              },
            ),

            SizedBox(height: 20,),
            Text(provider.eligibilityMessege.toString(),style: TextStyle(

              color: (provider.isEligible == true) ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ) ,),
          ],
        );
      } 
            )
           
          
          )
        
       
        

       )
      ),
    ));
  }
}
