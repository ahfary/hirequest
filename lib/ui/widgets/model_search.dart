import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hirequest/shared/theme.dart';

class ModelSearch extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String harga;

  const ModelSearch({super.key, required this.image, required this.title, required this.description, required this.harga, });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: 203,
      width: 385,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(image, height: 40,width: 40,),
              Image.asset('assets/icons/Save.png')
            ],
          ),
          Text(title, style: GoogleFonts.dmSans(
            fontWeight: bold,
            fontSize: 18,
          ),),
          Text(description, style: GoogleFonts.dmSans(
            fontSize: 14,
            fontWeight: regular
          ),),
          SizedBox(height:10,),
          Row(
            children: [
              Container(
                height: 26,
                width: 94,
              decoration: BoxDecoration(
                color: bgKategori,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text('Design', style: kategoriTextStyle,)),
              ),
              const SizedBox(width: 12,),
              Container(
                height: 26,
                width: 94,
              decoration: BoxDecoration(
                color: bgKategori,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text('Full time', style: kategoriTextStyle,)),
              ),
              const SizedBox(width: 12,),
              Container(
                height: 26,
                width: 94,
              decoration: BoxDecoration(
                color: bgKategori,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text('Senior Designer', style: kategoriTextStyle,)),  
              ),
            ],
          ),
          SizedBox(height : 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('25 menit yang lalu'),
              Row(
                children: [
              Text(harga, style: Price,),
              Text('/Bulan'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}