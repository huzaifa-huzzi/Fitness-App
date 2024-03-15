import 'package:dart_fitness_app/resources/Colors.dart';
import 'package:dart_fitness_app/utils/Routes/Routes_Name.dart';
import 'package:flutter/material.dart';



class ReviewWeight extends StatefulWidget {
  const ReviewWeight({super.key});

  @override
  State<ReviewWeight> createState() => _ReviewWeightState();
}

class _ReviewWeightState extends State<ReviewWeight> {
  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: _mediaQuery.size.height * 0.05,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.01),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.getFit);
                    },
                    child: Padding(
                      padding:const  EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Overview',
                        style:Theme.of(context).textTheme.bodyMedium!.copyWith(),
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RouteName.review);
                    },
                    child: Text(
                      'Review',
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 2.0,
                        decorationColor: AppColors.buttonColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
            Container(
              height: _mediaQuery.size.height * 0.20,
              width: _mediaQuery.size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.size.height * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Ali soomro',style: Theme.of(context).textTheme.displayMedium!.copyWith(),),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',style: Theme.of(context).textTheme.bodySmall!.copyWith(),),
                      leading:const  CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    ),
                    SizedBox(height: _mediaQuery.size.height * 0.01,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.2),
                      child: const   Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star_border_purple500,size: 20,color: Colors.orange,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
            Container(
              height: _mediaQuery.size.height * 0.20,
              width: _mediaQuery.size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.size.height * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Ali soomro',style: Theme.of(context).textTheme.displayMedium!.copyWith(),),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',style: Theme.of(context).textTheme.bodySmall!.copyWith(),),
                      leading:const  CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    ),
                    SizedBox(height: _mediaQuery.size.height * 0.01,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.2),
                      child: const   Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star_border_purple500,size: 20,color: Colors.orange,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
            Container(
              height: _mediaQuery.size.height * 0.20,
              width: _mediaQuery.size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.size.height * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Ali soomro',style: Theme.of(context).textTheme.displayMedium!.copyWith(),),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',style: Theme.of(context).textTheme.bodySmall!.copyWith(),),
                      leading:const  CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    ),
                    SizedBox(height: _mediaQuery.size.height * 0.01,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.2),
                      child: const   Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star_border_purple500,size: 20,color: Colors.orange,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
            Container(
              height: _mediaQuery.size.height * 0.20,
              width: _mediaQuery.size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.size.height * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Ali soomro',style: Theme.of(context).textTheme.displayMedium!.copyWith(),),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',style: Theme.of(context).textTheme.bodySmall!.copyWith(),),
                      leading:const  CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    ),
                    SizedBox(height: _mediaQuery.size.height * 0.01,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.2),
                      child: const   Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star_border_purple500,size: 20,color: Colors.orange,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
            Container(
              height: _mediaQuery.size.height * 0.20,
              width: _mediaQuery.size.width * 0.80,
              decoration: BoxDecoration(
                color: AppColors.buttonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQuery.size.height * 0.03),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Ali soomro',style: Theme.of(context).textTheme.displayMedium!.copyWith(),),
                      subtitle: Text('Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.',style: Theme.of(context).textTheme.bodySmall!.copyWith(),),
                      leading:const  CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile1.jpg'),
                      ),
                    ),
                    SizedBox(height: _mediaQuery.size.height * 0.01,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.2),
                      child: const   Row(
                        children: [
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star,size: 20,color: Colors.orange,),
                          Icon(Icons.star_border_purple500,size: 20,color: Colors.orange,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.size.height * 0.03,),
          ],
        ),
      ),
    );
  }
}
