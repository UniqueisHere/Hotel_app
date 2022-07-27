import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_app/widgets/custom_blogs.dart';
import 'package:hotel_app/widgets/custom_drawer.dart';

class blogPage extends StatelessWidget {
  blogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            height: 250,
            width: 350,
            child: ListView(
              children: const [
                blogsContainer(
                  image: 'lib/images/dining.png',
                  firsttext: 'Dining Available',
                  secondtext:
                      'Unwind with invigorating drinks at the most popular bar among the guests and locals, Bugles & Tiger Bar resembles a Gurkha Officer’s Mess, it celebrates gallantry and bravery of Gurkha’s. Overlooking the beautiful Kathmandu Valley and International Airport. On offer is a range of world’s most celebrated wines, beers, whiskeys, martinis and vodkas. Bugles & Tiger Bar at The Everest Hotel, Kathmandu is dedicated to crafting great memories and extends an impressive selection for every taste.',
                ),
                SizedBox(
                  height: 15,
                ),
                blogsContainer(
                  image: 'lib/images/spa.png',
                  firsttext: 'Cafe Available',
                  secondtext:
                      'The Café, An all-day dining restaurant at The XYZ Hotel is among few restaurants which operates 24/7 in the heart of Damak, a self-service market style pool side restaurant, serving breakfast, lunch and dinner. The emphasis of the restaurant is on visual food displays in live cooking stations, offering the freshest product for each meal period. Value for money, choice and ongoing change utilizing seasonal products, The Café offers Dessert counters, Italian kitchen, Grills, Nepali and Indian, an appetizer counter and the salad bar. “Eating out of the pan, off the grill and out of the tandoor” is what best describes The Café.',
                ),
                SizedBox(
                  height: 15,
                ),
                blogsContainer(
                  image: 'lib/images/room_service.png',
                  firsttext: 'Romm Service Available',
                  secondtext:
                      'Room Service is the ultimate in convenience, whether it is for a quick start for early risers, a romantic dinner for two or a hospitable gathering. From snacks, take-away boxes, full course meals that come straight from our specially kitchens to carefully thought through children’s menus, the option of room Service is to be explored and enjoyed. Call us for all the pampering touches.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
