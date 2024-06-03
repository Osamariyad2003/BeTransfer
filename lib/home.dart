import 'package:flutter/material.dart';
import 'package:untitled1/style/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isfill = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Spacer(),
           Container(
             height: 200,
             width: 200,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               border: Border.all(color: defaultColor, width: 2),
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   child: Stack(
                     alignment: Alignment.center,
                     children: [
                       watermarkOverlay(),
                       Container(
                         height: 80,
                         width: 100,
                         child: Icon(Icons.add, size: 80,color: defaultColor,),
                       ),
                     ],
                   ),
                   onTap: (){},
                 ),
                 SizedBox(height: 10,),
                 Text('Upload Files',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: defaultColor),)
               ],
             ),
           ),
           Spacer(),
           Padding(
             padding:  EdgeInsets.all(10.0),
             child: defaultButton(function: (){}, text: 'Transfer', isfill: isfill),
           )


         ],
        ),
      ),
    );
  }
  Widget watermarkOverlay() {
    return Positioned.fill(
      child: Opacity(
        opacity: 0.2, // Adjust the opacity as needed
        child: Container(
          height: 40,
          width: 60,
          child: Image.asset(
            'aseets/document.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
  Widget defaultButton({
    double width = double.infinity,
    bool isUpperCase = true,
    double radius = 8.0,
    required  function,
    required String text,
    required bool isfill
  }) =>
      Container(
        width: width,
        height: 40.0,
        child: MaterialButton(
          onPressed: function,
          child: Text(
            isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            radius,
          ),
          color: isfill ? defaultColor: grayColor,
        ),
      );

}
