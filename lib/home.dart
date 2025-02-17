import 'package:flutter/material.dart';
import 'marketing.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(80), 
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20), 
            child: AppBar(
              automaticallyImplyLeading: false,
              title: Expanded(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        
                      },
                    ),
                    SizedBox(
                        width:
                            8),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Pesquisar',
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide:
                                  BorderSide.none,
                            ),
                            filled: true, 
                            fillColor: Colors.grey[200],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             
              SizedBox(height: 50),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Marketing',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CursoMarketing()));
                      },
                      child: Column(
                        children: [
                          Image.asset('assets/images/marketing1.jpg',
                              width: 100, height: 100),
                          Text(
                              'Marketing do Zero'), 
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/marketing2.png',
                            width: 100, height: 100),
                        Text('Marketing'), 
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/marketing3.png',
                            width: 100, height: 100),
                        Text(
                            'Marketing Digital'), 
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Programação',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/python.jpg',
                            width: 100, height: 100),
                        Text('Python 3'), 
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/html.png',
                            width: 100, height: 100),
                        Text('HTML 5'), 
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/flutter.png',
                            width: 100, height: 100),
                        Text('Flutter'), 
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Introdução à Informática',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/excel.png',
                            width: 100, height: 100),
                        Text('Excel'), 
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/office.jpg',
                            width: 100, height: 100),
                        Text('Office'), 
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/word.jpg',
                            width: 100, height: 100),
                        Text('Word'), 
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
