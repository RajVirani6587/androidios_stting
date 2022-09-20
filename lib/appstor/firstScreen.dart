
import 'package:androidios_stting/appstor/imageprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class screenone extends StatefulWidget {
  const screenone({Key? key}) : super(key: key);

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  Image_Provider?  imageproviderT;
  Image_Provider? imageProviderF;
  @override
  Widget build(BuildContext context) {
    imageproviderT = Provider.of<Image_Provider>(context,listen: true);
    imageProviderF = Provider.of<Image_Provider>(context,listen: false);
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageProviderF!.name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(imageProviderF!.dataone[index].photo as String),
                      ),
                      //SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            width: 100,
                            child: Text("${imageProviderF!.dataone[index].appname}")),
                      ),
                      Text("${imageProviderF!.dataone[index].star} ★"),
                    ],
                  ),
                );
              },
            ),
          ),


          const SizedBox(
            height: 14,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageProviderF!.name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(imageProviderF!.datatwo[index].photo as String),
                      ),
                      //SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            width: 100,
                            child: Text("${imageProviderF!.datatwo[index].appname}")),
                      ),
                      Text("${imageProviderF!.datatwo[index].star} ★"),
                    ],
                  ),
                );
              },
            ),
          ),



          const SizedBox(
            height: 14,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageProviderF!.name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(imageProviderF!.datathree[index].photo as String,)),
                      ),
                      //SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            height: 30,
                            width: 100,
                            alignment: Alignment.centerLeft,
                            child: Text("${imageProviderF!.datathree[index].appname}")),
                      ),
                      Text("${imageProviderF!.datathree[index].star} ★"),
                    ],
                  ),
                );
              },
            ),
          ),



          const SizedBox(
            height: 14,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageProviderF!.name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.asset(imageProviderF!.datafour[index].photo as String),
                      ),
                      //SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Container(
                            width: 100,
                            child: Text("${imageProviderF!.datafour[index].appname}")),
                      ),
                      Text("${imageProviderF!.datafour[index].star} ★"),
                    ],
                  ),
                );
              },
            ),
          ),


        ],
      ),
    );
  }

}