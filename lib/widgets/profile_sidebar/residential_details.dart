import 'package:flutter/material.dart';

class ResidentialDetails extends StatelessWidget {
  const ResidentialDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 16.0, right: 16.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Residence:',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Pakistan',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'City:',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Hyderabad',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Age:',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '19',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        )
      ],
    );
  }
}
