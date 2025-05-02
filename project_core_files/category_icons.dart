import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  const CategoryIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCategoryIcon(
            context,
            Icons.car_repair_outlined,
            "Car winch",
            "carwinch",
          ),
          _buildCategoryIcon(
            context,
            Icons.local_gas_station,
            "Petrol",
            "petrol",
          ),
          _buildCategoryIcon(
            context,
            Icons.tire_repair,
            "Tire Repair",
            "tirerepair",
          ),
          _buildCategoryIcon(
            context,
            Icons.electric_car_sharp,
            "Car electricity",
            "electricityRepair",
          ),
          _buildCategoryIcon(
            context,
            Icons.add_shopping_cart,
            "Shop",
            "shop",
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryIcon(
      BuildContext context, IconData icon, String label, String routeName) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(routeName);
              },
              child: Icon(
                icon,
                size: 40,
                color: Colors.orange,
              ),
            ),
            padding: EdgeInsets.all(15),
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
