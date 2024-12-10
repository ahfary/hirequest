import 'package:flutter/material.dart';
import 'package:hirequest/shared/theme.dart';
import 'package:hirequest/ui/widgets/model_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<ModelSearch> productlagu = [
    ModelSearch(
      image: 'assets/icons/google.png',
      title: 'UI/UX Designer',
      description: 'Google inc . California, USA',
      harga: 'Rp.225 Juta',
    ),
    ModelSearch(
        image: 'assets/icons/dribble.png',
        title: 'Lead Designer',
        description: 'Dribbble inc . California, USA',
        harga: 'Rp.295 Juta'),
    ModelSearch(
        image: 'assets/icons/Twitter.png',
        title: 'Programmer Designer',
        description: 'Twitter inc . California, USA',
        harga: 'Rp.750 Juta'),
  ];

  List<ModelSearch> displaymodels = [];
  String searchText = '';

  @override
  void initState() {
    super.initState();
    displaymodels = productlagu;
  }

  void updateList(String value) {
    setState(() {
      searchText = value;
      if (searchText.isEmpty) {
        displaymodels = productlagu;
      } else {
        displaymodels = productlagu
            .where((product) =>
                product.title.toLowerCase().contains(value.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget Header() {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 245,
      width: double.infinity,
      decoration: BoxDecoration(color: yellowColor),
      child: Column(
        children: [
          Text(
            'Temukan Lowongan Kerjamu!',
            style: TextStyle(fontSize: 24, fontWeight: bold),
          ),
          Text(
            'Cari dan booking pekerjaanmu',
            style: TextStyle(fontSize: 12, fontWeight: light),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            height: 46,
            width: 373,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('California, USA'),
                Icon(Icons.location_pin),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0xffDCA400),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset('assets/icons/filter.png'),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 300,
                // color: Colors.green,
                // height: 46,
                child: TextFormField(
                  onChanged: (value) => updateList(value),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search ...'),
                ),
              ),
            ],
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: displaymodels.map((model) {
                  return Column(
                    children: [
                      ModelSearch(
                        image: model.image,
                        title: model.title,
                        description: model.description,
                        harga: model.harga,
                      ),
                      const SizedBox(height: 14),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
