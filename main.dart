import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }


}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  Mysanckbar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Good app"),
      titleSpacing: 20,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){Mysanckbar("I am comment", context);}, icon:Icon(Icons.comment)),
         IconButton(onPressed: (){Mysanckbar("I am search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){Mysanckbar("I am settings", context);}, icon:Icon(Icons.settings)),
          IconButton(onPressed: (){Mysanckbar("I am email", context);}, icon:Icon(Icons.email))


        ],

      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){Mysanckbar("I am flotingbar", context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
        onTap: (int index){
          if(index==0){
            Mysanckbar("Home page", context);
        }
          if(index==1){
            Mysanckbar("Conctact page ", context);
          }

          if (index==2){
            Mysanckbar("Profile", context);

          }

      }

      ),

    );
  }

}
