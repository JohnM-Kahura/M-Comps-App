import 'package:flutter/material.dart';
import 'package:mcomps/config/colors.dart';
import 'package:mcomps/widgets/textfeild.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String mCompsMobile = '+254-700106541';
  bool isSearch = false;
  TextEditingController searchController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:isSearch? Colors.white : customDarkBlue,
        title: isSearch ?customTextFeild(50, double.infinity, 'What can I search for you?', searchController, TextInputType.text) : Center(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.call, size: 15, color: Colors.white),
                  Text(
                    mCompsMobile,
                    style: appTextStyle,
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    size: 15,
                    color: Colors.white,
                  ),
                  Text(
                    'Mcomps',
                    style: appTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isSearch=!isSearch;
                print(isSearch);
              });
            },
            icon:Icon(Icons.search , color: isSearch?customDarkBlue:Colors.white,),
          ),
        ],
      ),
       drawer: isSearch? null :Drawer(),
       backgroundColor: customBackgroundColor,
       body: ListView(children: [
         Container(height:200,color: Colors.red,)
       ],),
    );
  }
}
