import 'package:flutter/material.dart';
import 'car winch.dart';
import 'petrol.dart';
import 'Tire Repair .dart';
import 'electricity Repair .dart';
import 'shop .dart';

class ServiceCards extends StatelessWidget {
  const ServiceCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisExtent: 270),
      children: [
        _buildServiceCard(
          context,
          "Car Winch",
          "images/13.jpg",
          carwinch(),
          "All Types Of Cars",
        ),
        _buildServiceCard(
          context,
          "Petrol",
          "images/12.jpg",
          petrol(),
          "Gasoline 80,92 and 95",
        ),
        _buildServiceCard(
          context,
          "Tire Repair",
          "images/4.jpg",
          tirerepair(),
          "Tire Repair and Air Adjustment",
        ),
        _buildServiceCard(
          context,
          "Car Electricity",
          "images/7.jpg",
          electricityRepair(),
          "Electrical and battery Repair",
        ),
        _buildServiceCard(
          context,
          "Shop",
          "images/9.jpg",
          shop(),
          "All Kinds Of Food and Drinks",
        ),
      ],
    );
  }

  Widget _buildServiceCard(BuildContext context, String title, String imagePath,
      Widget page, String description) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 300,
              color: Colors.grey,
              child: Image.asset(
                imagePath,
                height: 170,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
