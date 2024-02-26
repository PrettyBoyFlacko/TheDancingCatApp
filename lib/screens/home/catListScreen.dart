import 'package:flutter/material.dart';
import 'package:hellokatty/screens/home/cat.dart';
import 'package:hellokatty/screens/home/catCard.dart';

class CatListScreen extends StatelessWidget {
  // This would typically be fetched from a backend or API
  final List<Cat> cats = [
    Cat(name: 'Astra', gender: 'Female', age: '7 Months', imageUrl: 'https://d2zp5xs5cp8zlg.cloudfront.net/image-83814-800.jpg'),
    Cat(name: 'Oreo', gender: 'Female', age: '3 Months', imageUrl: 'https://media.4-paws.org/5/b/8/b/5b8bca3f74342210ccca652c651f2d7e23288753/VIER%20PFOTEN_2019-12-13_209-2890x2000.jpg'),
    Cat(name: 'Leo', gender: 'Male', age: '1 Months', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3gWptWiIl6QTxPnLJ8aEgwFgSK7S30MluRw&usqp=CAU'),
    Cat(name: 'Dog', gender: 'Female', age: '9 Months', imageUrl: 'https://miro.medium.com/v2/resize:fit:640/1*sIXEFLFvPeQy2aqOIExoHQ.jpeg'),
    Cat(name: 'Clown', gender: 'Male', age: '5 Months', imageUrl: 'https://d3544la1u8djza.cloudfront.net/APHI/Blog/2016/10_October/persians/Persian+Cat+Facts+History+Personality+and+Care+_+ASPCA+Pet+Health+Insurance+_+white+Persian+cat+resting+on+a+brown+sofa-min.jpg'),
    Cat(name: 'Garfield', gender: 'Male', age: '2 Years', imageUrl: 'https://www.shutterstock.com/image-photo/ginger-tom-cat-red-haired-260nw-2326339029.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          return CatCard(cat: cats[index]);
        },
      ),


      bottomNavigationBar:
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Color(0xFF31BFAF)),
            label: 'Home',

          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.camera,
                color: Color(0xFF31BFAF)),
            label: 'Camera',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Color(0xFF31BFAF)),
            label: 'Settings',
          ),

        ],
      ),
    );
  }
}
