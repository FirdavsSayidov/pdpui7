import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200,
      appBar: AppBar(backgroundColor: Color(0xFF018197),primary: true,
        elevation: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(height: 100,
                child: Image(
                  image: AssetImage('assets/images/img.png'),)),
            Row(
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.mic),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(),

      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 60,
            color: Color(0xFF018197),
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1
                )
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Color(0xFF018197),),
                    suffixIcon: Icon(Icons.camera_alt,color: Color(0xFF018197),),

                    hintText: 'What are you looking for?',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              height: 45,
              color: Colors.grey,
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.location_on,color: Colors.white,)),
                  SizedBox(width: 5,),
                  Text('Deliver to Korea,Respublic of',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),


                ],
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [  Expanded(child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight:Radius.circular(70),bottomRight: Radius.circular(70),
                      ),
                      image: DecorationImage(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.cover)
                  ),

                )),
                  SizedBox(width: 10,),

                  Container(
                    child: Text('We ship 45million products'),
                    width: 160,

                  ),


                ],
              ),
            ),
            Container(
              height: 7,color: Colors.grey.shade300,
            ),
            Container(
              height: 150,color: Colors.white,
              width: double.infinity,
              padding: EdgeInsets.only(left: 10,right: 10,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign in for the best experience',style: TextStyle(color: Colors.black,fontSize: 17),),
                  SizedBox(height: 15,),
                  Container(
                    height: 40,
                    color: Colors.orange,
                    child: Center(
                      child: Text('Sign in'),


                    ),
                  ),
                  SizedBox(height: 15,),
                  Text('Create an account',style: TextStyle(color: Colors.blue,fontSize: 17),)
                ],
              ),
            ),
            Container(height: 7,
              color: Colors.grey.shade300,),
            Container(width: double.infinity,
            color: Colors.white,
              padding: EdgeInsets.only(left: 10,top: 15,right: 10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Deal of the Day',style: TextStyle(fontSize: 20),),
                  SizedBox(height: 15,),
                  Container(
                  height: 250,width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/img_8.png'),fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height:15 ,),
                  Text('Up to 31% off APC UPS Battery Back,',style: TextStyle(fontSize: 15),)
                  ,
                  SizedBox(height:5 ,),
                  Text('\$10.99 - \$79.9,',style: TextStyle(fontSize: 15),)
                ],
              ),
            ),
            Container(height: 10,width: double.infinity,color: Colors.white,),
            SizedBox(height: 7,),
            Container(height: 10,width: double.infinity,color: Colors.white,),

            Container(color: Colors.white,width: double.infinity,
                height: 40,
                child: Text('Best sellers in Electronics',style: TextStyle(fontSize: 20),),),


            Container(padding: EdgeInsets.only(left: 10,right: 10),
              height: MediaQuery.of(context).size.width,
              child: Column(
                children: [

                  Row(
                    children: [
                      Expanded(child: Image(image: AssetImage('assets/images/img_3.png'),fit: BoxFit.cover,),
                  ),
                     SizedBox(width: 5,),
                     Expanded(child: Image(image: AssetImage('assets/images/img_4.png'),fit: BoxFit.cover,),)

                  ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(child: Image(image: AssetImage('assets/images/img_5.png'),),
                      ),
                      SizedBox(width: 5,),
                      Expanded(child: Image(image: AssetImage('assets/images/img_6.png'),),)

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 7,),
            Container(padding: EdgeInsets.only(left: 10,bottom: 10),
              child: Text('Top products in Camera',style: TextStyle(fontSize: 17),),
            ),
            Container(padding: EdgeInsets.only(left: 10,right: 10),
              height: MediaQuery.of(context).size.width,
              child: Column(
                children: [

                      Expanded(child: Container(width: double.infinity,
                          child: Image(image: AssetImage('assets/images/img_8.png'),fit: BoxFit.cover,)),
                      ),
                      SizedBox(height: 5,),

                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Expanded(child: Image(image: AssetImage('assets/images/img_6.png'),),
                      ),
                      SizedBox(width: 5,),
                      Expanded(child: Image(image: AssetImage('assets/images/img_4.png'),),),


                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
