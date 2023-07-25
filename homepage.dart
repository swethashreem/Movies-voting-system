import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   int counter =0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          appBar: AppBar(
            title: Text("Movies Voting System"),
          ),
           drawer: Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Company: Geeksynergy Technologies Pvt Ltd',
            style: TextStyle(fontSize: 22,),),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Address: Sanjayanagar, Bengaluru-56'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Phone: XXXXXXXXX09'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.train,
            ),
            title: const Text('Email: XXXXXX@gmail.com'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: const Color.fromARGB(255, 212, 222, 228),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                   
                                });
                                counter++;
                                print('$counter');
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.add),),
                                Text('$counter'),
                                FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                   
                                });
                                counter--;
                                print('$counter');
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.minimize_outlined),),
                            ],
                          ),
                            Image.network("https://hips.hearstapps.com/hmg-prod/images/mv5bm2e5odliogmty2q5my00odflltk5ngitodfmnju4yzm5nda3xkeyxkfqcgdeqxvynjuwnzk3ndcat-v1-1556208334.jpg?resize=1200:*",
                            height: 100,width: 100,),
                            Column(
                              children: [
                                Text("Bond25"),
                                Text("Genre:Action,Adventures,Thriller"),
                                Text("Director:Cary joji"),
                                Text("Starring:Ana de Armas"),
                                  ],
                            ),
                        ]
                      ),
                      ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Watch Trailer"))
                    
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: const Color.fromARGB(255, 212, 222, 228),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        Column(
                          children: [
                            FloatingActionButton(
                                onPressed: (){
                                   setState(() {
                                  
                                });
                                  counter++;
                                print('$counter');
                                
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.add),),
                                Text('$counter'),
                                 FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                  
                                });
                                  counter--;
                                print('$counter');
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.minimize_outlined),),
                          ],
                        ),
                            Image.network("https://assets.vogue.in/photos/5ce412593bf9b4495fb1a8be/16:9/w_1280,c_limit/Everything-you-need-to-know-before-watching-Marvel-movies-this-year.jpgg",
                            height: 100,width: 100,),
                            Column(
                              children: [
                                Text("Marvel"),
                                Text("Genre:Action,Adventures,Thriller"),
                                Text("Director:Cary joji"),
                                Text("Starring:Ana de Armas"),
                                  ],
                            ),
                        ]
                      ),
                      ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Watch Trailer"))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: const Color.fromARGB(255, 212, 222, 228),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        Column(
                          children: [
                            FloatingActionButton(
                                onPressed: (){
                                   setState(() {
                                  
                                });
                                  counter++;
                                print('$counter');
                                
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.add),),
                                Text('$counter'),
                                 FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                   
                                });
                                counter--;
                                print('$counter');
                                },
                                backgroundColor: Colors.transparent,
                                child: const Icon(Icons.minimize_outlined),),
                          ],
                        ),
                            Image.network("https://themoviespoiler.com/wp-content/uploads/2020/08/new_mutants_ver13.jpg",
                            height: 100,width: 100,),
                            Column(
                              children: [
                                Text("The New Mutants"),
                                Text("Genre:Action,Adventures,Thriller"),
                                Text("Director:Cary joji"),
                                Text("Starring:Ana de Armas"),
                                  ],
                            ),
                        ]
                      ),
                      ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Watch Trailer"))
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ],
    );
  }
}