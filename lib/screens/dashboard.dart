import 'package:bytebank/screens/tranfer/list.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      color: Colors.black.withOpacity(.35),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/bytebank_logo.png',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 4),
              Center(
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListaTransferencias();
                        }));
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 15),
                              color: Colors.black.withOpacity(.35),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(height: 15),
                            Icon(Icons.list, color: Colors.white, size: 32),
                            SizedBox(height: 8),
                            Text('Transações',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return ListaTransferencias();
//                     }));
//                   },
