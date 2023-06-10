 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
void main() => runApp(MyApp()); 


class MyApp extends StatefulWidget {
  MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex=0; 

  void _onItemTapped(int index){
    setState((){
      _selectedIndex= index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/menu.svg',
                    width:22,),
                    const CircleAvatar(
                      radius:20,
                      backgroundColor: Color.fromARGB(255, 135, 197, 238),
                      backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png'),
                    ),

                  ],
                ),
                const SizedBox(height:20),
                SizedBox(
                  child: Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.yellow,  
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child:Image.asset(
                            'assets/dog_kitty.png',
                          ),
                        ),
                        Positioned(
                          right:40,
                          top: 36, bottom:0 ,
                          child: const Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                          children:[
                            
                            Text('Hello Mini',
                            style: TextStyle
                            (fontSize: 26 , 
                            fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,),
                            Text('Ready for amazing and \nlucky experience',
                            style: 
                             TextStyle(fontSize: 13),
                             ),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Text('Dogs',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 11),
                SizedBox(
                  height: 165,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return Container(
                        height: 130,
                        width: 150,
                        margin: EdgeInsets.only(left:12),
                        padding: 
                        const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(blurRadius:01,offset:Offset(0,3),
                         color: const Color.fromARGB(255, 246, 238, 173)),],
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(238, 240, 108, 0.557),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/dog.png',fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height:08),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.orange,
                                  ),
                                  child:const Text('BANANA',
                                  style:TextStyle
                                  (fontWeight: FontWeight.bold,
                                  fontSize: 12,color: Colors.white,),
                                  textAlign: TextAlign.center,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(Icons.favorite_border,
                                 color: Colors.orange,
                                ),
                              ],
                            ),
                            const SizedBox(height:5),
                            const Text(
                              'Marly',
                              style: TextStyle(color:Colors.grey,
                              fontWeight: FontWeight.bold),
                            ),
                             const Spacer(),
                            const Text(
                              '07-June-2023',
                              style: TextStyle(color:Colors.grey,
                              fontWeight: FontWeight.bold,fontSize: 10),
                            ),
                          ],
                        )
                      ); 
                    }
                    ),
                ),



                 const SizedBox(height: 20,),
                Text('Cats',style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 11),
                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return Container(
                        height: 130,
                        width: 150,
                        margin: EdgeInsets.only(left:12),
                        padding: 
                        const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(blurRadius:01,offset:Offset(0,3),
                         color: const Color.fromARGB(255, 246, 238, 173)),],
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(238, 240, 108, 0.557),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/cute_cat.png',fit: BoxFit.cover,width: 100,height:78,
                              ),
                            ),
                            const SizedBox(height:08),
                            Row(
                              children: [
                                Container(
                                  height: 17,
                                  width: 44,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.orange,
                                  ),
                                  child:const Text('APPLE',
                                  style:TextStyle
                                  (fontWeight: FontWeight.bold,
                                  fontSize: 12,color: Colors.white,),
                                  textAlign: TextAlign.center,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(Icons.favorite_border,
                                 color: Colors.orange,
                                ),
                              ],
                            ),
                            const SizedBox(height:5),
                            const Text(
                              'Milo',
                              style: TextStyle(color:Colors.grey,
                              fontWeight: FontWeight.bold),
                            ),
                             const Spacer(),
                            const Text(
                              '07-June-2023',
                              style: TextStyle(color:Colors.grey,
                              fontWeight: FontWeight.bold,fontSize: 10),
                            ),
                          ],
                        ),
                      ); 
                    },
                    ),
                ),
              ]
            ),
          ),
        ),
        bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex ==0 
            ? Icon(Icons.home)
            : const Icon(Icons.home_outlined),
            label:'Home',
            ),
            BottomNavigationBarItem(
            icon: _selectedIndex ==1
            ?Icon(Icons.add_box_outlined)
            : const Icon(Icons.add_box),
            label:'Add',
            ),
            BottomNavigationBarItem(
            icon: _selectedIndex ==1? Icon(Icons.person): 
            const Icon(Icons.person_add_alt_outlined),
            label:'Person',
            ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

        ),
      ), 
    );
  }
}