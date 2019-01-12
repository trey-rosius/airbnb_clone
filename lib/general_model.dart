import 'dart:ui';

class FruitsCategory{
  final String name;
  final String image;

  FruitsCategory({this.name, this.image});


}
class Popular{
  final String name;
  final String image;
  final String desc;
  final String price;
  final String rating;

  Popular({this.name, this.image, this.desc, this.price, this.rating});


}

class Homes{
  final String image;
  final String name;

  Homes({this.image, this.name});

}


class GeneralModelList{

  final List<FruitsCategory> fruitsCategory;
  final List<Popular> popular;
  final List<Homes> homes;

  GeneralModelList({this.fruitsCategory, this.popular, this.homes});


}

final GeneralModelList  fruitsCategoryList = new GeneralModelList(
    fruitsCategory: [
      FruitsCategory(
        name: "Homes",
        image: "assets/images/homes.jpeg"
      ),
      FruitsCategory(
          name: "Restaurants",
          image: "assets/images/burger.jpeg"
      ),
      FruitsCategory(
          name: "Events",
          image: "assets/images/events.jpg"
      ),
      FruitsCategory(
          name: "Program",
          image: "assets/images/house2.jpeg"
      )
    ],
  popular: [
    Popular(
      name: "Enter House -8 beds",
      desc: "Miamo-Amazing view in Imerolivi",
      image: "assets/images/house2.jpeg",
      price: "\$1800 per night",
      rating: "984"
    ),
    Popular(
      name: "classic American",
        desc: "The Curious Palace Town",
        image: "assets/images/meals.jpeg",
        price: "About \$30 per person",
        rating: "688"
    ),
    Popular(
        name: "Miamo-Amazing view in Imerolivi",
        desc: "The Curious Palace Town",
        image: "assets/images/house1.jpg",
        price: "\$1300 per night",
        rating: "900"
    ),
  ],
  homes: [
    Homes(
      image: "assets/images/house1.jpg",
      name: "Entire House- 2 bed"
    ),
    Homes(
        image: "assets/images/homes.jpeg",
        name: "Entire House- 3 bed"
    ),
    Homes(
        image: "assets/images/house2.jpeg",
        name: "Entire House- 4 bed"
    ),
  ]
);