import 'package:airbnb/fab_bottom_app_bar.dart';

import 'package:airbnb/general_model.dart';
import 'package:airbnb/second_page.dart';

import 'package:airbnb/wavy_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _buildPopularList(context,index, List<Popular>listImages) {


    return
      Container(
        width: 200.0,
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 220.0,
                  height: 100.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name,style: TextStyle(color: Colors.grey),),
            Text(listImages[index].desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
            Text(listImages[index].price,style: TextStyle(fontSize: 12.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.star,color: Colors.red,size: 15.0,),
                Icon(Icons.star,color: Colors.red,size: 15.0,),
                Icon(Icons.star,color: Colors.red,size: 15.0,),
                Icon(Icons.star,color: Colors.red,size: 15.0,),
                Icon(Icons.star,color: Colors.red,size: 15.0,),

                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(listImages[index].rating),
                ),

              ],
            )
          ],
        ),






      );
  }

  Widget _buildFruitCategoryList(context,index, List<FruitsCategory>listImages) {


    return
      Padding(
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 180.0,
                  height: 90.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name)
          ],
        ),






      );
  }



  Widget _buildHomeList(context,index, List<Homes>listImages) {


    return
      Padding(
        padding: const EdgeInsets.only(left:10.0,top: 10.0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.asset(

                  listImages[index].image,
                  width: 200.0,
                  height: 100.0,

                  fit: BoxFit.cover,)),
            Text(listImages[index].name)
          ],
        ),






      );
  }

  String _lastSelected = 'TAB: 0';

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = 'TAB: $index';
    });
  }

  void _selectedFab(int index) {
    setState(() {
      _lastSelected = 'FAB: $index';
    });
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondScreen()),
          );
        },
        tooltip: 'airbnb',
       backgroundColor: Colors.white,
        child: Image.asset('assets/images/logo.png',width: 30.0,height: 30.0,),
        elevation: 2.0,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(

              children: <Widget>[
                WavyHeader(),
                Align(
                 alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top:100.0),
                    child: Container(
                      height: 50.0,

                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                      decoration: new BoxDecoration(
                        color: Color(0xFFFCFCFC).withOpacity(0.3),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(child:Text('Try "New York City',style: TextStyle(color: Color(0xFFFCFCFC)),)),
                          IconButton(icon:Icon(Icons.search), onPressed: (){

                          },color: Color(0xFFFCFCFC),iconSize: 30.0,)
                        ],
                      ) ,
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(top:40.0,left: 10.0,),
                 child: Align(
                     alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/name.png',height: 40.0,color: Colors.white,)),
                    // child: Text("Nearby",style: TextStyle(fontSize: 40.0,color: Color(0xFFFCFCFC),fontWeight: FontWeight.bold),)),
               )



              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Categories",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),)),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 120.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return _buildFruitCategoryList(context,index,fruitsCategoryList.fruitsCategory);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Text("Most Popular",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 220.0,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildPopularList(context,index,fruitsCategoryList.popular);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0,left: 10.0,),
              child: Text("Homes",style: TextStyle(fontSize: 30.0,color: Colors.black54,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              height: 150.0,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _buildHomeList(context,index,fruitsCategoryList.homes);
                  }),
            ),

          ],
        ),

      ),
        bottomNavigationBar: FABBottomAppBar(
          centerItemText: 'Start',
          color: Colors.grey,
          selectedColor: Color(0xFFFB7592),
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
            FABBottomAppBarItem(iconData: Icons.favorite, text: 'Likes'),
            FABBottomAppBarItem(iconData: Icons.navigation, text: 'Nav'),
            FABBottomAppBarItem(iconData: Icons.account_circle, text: 'profile'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _buildFab(
            context),


    );
  }
}
