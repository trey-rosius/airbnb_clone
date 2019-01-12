import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),

            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/house2.jpeg', fit: BoxFit.cover ,),
                  Positioned(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    top: size.height / 5,
                    left: size.width - 40.0,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                    top: size.height / 4,
                    left: size.width - 40.0,
                  ),
                ],
              ),
            )),

            // Extruding edge from the sliver appbar, may need to fix expanded height
            expandedHeight: MediaQuery.of(context).size.height /3.8,
            backgroundColor: const Color(0xFFF8A19B),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
              child: Text(
                "Adorable Garden Blending Gingerbread House",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                              AssetImage('assets/images/rosius.jpeg'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Entire House",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Hosted By",
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: Text(
                                        "Rosius",
                                        style:
                                            TextStyle(color: Color(0xFFFB7592)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "See Ratings",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "*****",
                                      style:
                                          TextStyle(color: Color(0xFFFB7592)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xFFFB7592),
                            ),
                            Text(
                              "San Francisco",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.group,
                        color: Color(0xFFFB7592),
                        size: 30.0,
                      ),
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFFB7592),
                        size: 30.0,
                      ),
                      Icon(
                        Icons.cake,
                        color: Color(0xFFFB7592),
                        size: 30.0,
                      ),
                      Icon(
                        Icons.event_note,
                        color: Color(0xFFFB7592),
                        size: 30.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "About this Home",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "There are not many cities that have experience such social and political"
                                " extrmes in recent history as Amsterdam.In the 20th century alone, Amsterdam"
                                "faced the atrocities of war for the first tune in 400years, became radical...",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "Read More....",
                            style: TextStyle(color: Color(0xFFFB7592)),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "Check in: After 3pm",
                            style: TextStyle(color: Colors.black54,fontSize: 16.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0,right: 10.0),
                        child: Text(
                          "Check Out:11am",
                          style: TextStyle(color:Colors.black54,fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 400.0,
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      options: GoogleMapOptions(
                        cameraPosition: CameraPosition(
                          target: _center,
                          zoom: 11.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
        bottomNavigationBar:new Container(
          decoration: new BoxDecoration(
            //   shape: BoxShape.circle,
              gradient: new LinearGradient(colors: [
                const Color(0xFFFB7592),
                const Color(0xFFF8A19B),
              ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.9, 0.0),
                  stops: [0.0, 0.9],
                  tileMode: TileMode.clamp

              )
          ),
          child: new MaterialButton(
            onPressed: () {
              //  saveMoist();
            },

            child: new Padding(
              padding: const EdgeInsets.all(24.0),
              child:new Text("Book Now",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600)),
            ),
          ),
        )
    );
  }
}
