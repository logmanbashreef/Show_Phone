import 'package:flutter/material.dart';
import 'package:flutter_application_1/phone.dart';


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    List<Phone> allPhone = [];

    allPhone.add(Phone(name: "Samsung note 20", description: "One of the finest modern phones", oldPrice: "190", newPrice: "150", c1: "red", c2: "blue", c3: "green", link: 'https://th.bing.com/th/id/OIP.zSqSiBXmc2BdhcVgAUux1wAAAA?w=145&h=182&c=7&r=0&o=5&dpr=1.1&pid=1.7.jpg'));
    allPhone.add(Phone(name: "Samsung S20fe", description: "One of the finest modern phones", oldPrice: "190", newPrice: "150", c1: "red", c2: "blue", c3: "green", link: 'https://th.bing.com/th/id/OIP.pdzY3jhLtNIJmSyBGTs8SAHaEK?w=294&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7.jpg'));
    allPhone.add(Phone(name: "Huawei pro", description: "One of the finest modern phones", oldPrice: "190", newPrice: "150", c1: "red", c2: "blue", c3: "green", link: 'https://www.thaqfny.com/wp-content/uploads/2022/08/Honor-x8-5G-scaled.jpg'));
    allPhone.add(Phone(name: "Samsung note 20", description: "One of the finest modern phones", oldPrice: "190", newPrice: "150", c1: "red", c2: "blue", c3: "green", link: 'https://th.bing.com/th/id/OIP.zSqSiBXmc2BdhcVgAUux1wAAAA?w=145&h=182&c=7&r=0&o=5&dpr=1.1&pid=1.7.jpg'));
    allPhone.add(Phone(name: "Samsung S20fe", description: "One of the finest modern phones", oldPrice: "190", newPrice: "150", c1: "red", c2: "blue", c3: "green", link: 'https://th.bing.com/th/id/OIP.pdzY3jhLtNIJmSyBGTs8SAHaEK?w=294&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7.jpg'));



    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        
        child:  ListView(
          children: allPhone.map((e) => buildContainer(context , e)).toList(),
        ),
      ),
    );
  }}

  Widget buildContainer(BuildContext context , Phone p){
    return  Row(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(20),
                  width: 100,
                  height: 100,
                  child: Image.network(
                    p.link,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(1),
                        child:  Text(
                          p.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child:  Text(p.description)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: Text(p.oldPrice, style: TextStyle( 
                                
                                  decoration:TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                            
                                decorationThickness: 2,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                 ),),
                              ),
                              Text(p.newPrice, style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Column(
                            children: [
                              Container(padding: EdgeInsets.all(10),
                                child: const Text("Colors" , style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),)),
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
  }

//   Widget buildContainer(BuildContext context, Contact contact) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       margin: const EdgeInsets.symmetric(vertical: 5),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Text(contact.name),
//     );
//   }
// }