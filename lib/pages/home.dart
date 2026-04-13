import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(height: 40,),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Category", style: TextStyle(fontWeight:FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  color: Colors.lightBlue,
                )
              ],
            ),
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
          margin: EdgeInsets.only(top: 40,left: 40,right: 40),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.white,
              blurRadius: 0.8,
              spreadRadius: 0.1
            )]

          ),
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white70,
              filled: true,
              hintText: "Search Item",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14
              ),
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(28),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset('assets/icons/Filter.svg'),
              )
                            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "BreakFast",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset('assets/icons/arrow.svg'),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
          },
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
          borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset('assets/icons/dots.svg'),
          ),
        )
      ],
    );
  }
}
