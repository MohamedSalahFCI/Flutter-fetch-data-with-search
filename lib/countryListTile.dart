import 'package:flutter/material.dart';
class CountryListTile extends StatelessWidget {
  Map<String,dynamic> country;
  CountryListTile(this.country);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: country.length,
        itemBuilder: (context,index){
          String Key=country.keys.elementAt(index);
          return Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
              ),
              Text('$Key : '),
              Text(country[Key].toString())
            ],
          );
        },
      ),
      
    );
  }
}