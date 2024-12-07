

import 'package:flutter/material.dart';
import 'package:hirequest/shared/theme.dart';
import 'package:hirequest/ui/widgets/model_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // List<modelsearch> productlagu = [];
  // List<modelsearch> displaymodels = [];
  // String searchText = '';

  // @override
  // void initState() {
  //   super.initState();
  //   loadProducts();
  //   // displaymodels = productlagu;
  // }

  // Future<void> loadProducts() async {
  //   final String response =
  //       await rootBundle.loadString('assets/product_lagu.json');
  //   final List<dynamic> data = jsonDecode(response);

  //   setState(() {
  //     productlagu = data.map((item) => modelsearch.fromJson(item)).toList();
  //     displaymodels = productlagu;
  //   });
  // }

  // void updateList(String value) {
  //   setState(() {
  //     searchText = value;
  //     if (searchText.isEmpty) {
  //       displaymodels = productlagu;
  //     } else {
  //       displaymodels = productlagu
  //           .where((product) =>
  //               product.namalagu.toLowerCase().contains(value.toLowerCase()))
  //           .toList();
  //     }
  //   });
  // }
  @override

  Widget Header(){
    return Container(
      height: 245,
      width: double.infinity,
      decoration: BoxDecoration(
        color: yellowColor
      ),
      child: Column(
        children: [
          Text('Temukan Lowongan Kerjamu!',style: TextStyle(
            fontSize: 24,
            fontWeight: bold
          ),),
          Text('Cari dan booking pekerjaanmu', style: TextStyle(
            fontSize: 12,
            fontWeight: light
          ),),
          Container(
            height: 38,
            width: 373,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
              // onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search ...'),
            ),

        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 40,),
              ModelSearch(image: 'assets/icons/google.png', title: 'UI/UX Designer', description: 'Google inc . California, USA', price: 'd'),
              SizedBox(height: 14,),
              ModelSearch(image: 'assets/icons/google.png', title: 'UI/UX Designer', description: 'Google inc . California, USA', price: 'd'),
              SizedBox(height: 14,),
              ModelSearch(image: 'assets/icons/google.png', title: 'UI/UX Designer', description: 'Google inc . California, USA', price: 'd'),
            ],
          ),
        ),
      )
    );
  }
}