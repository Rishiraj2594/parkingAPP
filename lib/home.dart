import 'package:flutter/material.dart';
import 'package:parking_system/widgets/parking_slots.dart';
import 'package:parking_system/widgets/user_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  void _bookSlot(
    BuildContext context,
  ) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ParkingSlots()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Parking"),
      ),
      body: Column(
        children: [
          const UserInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      _bookSlot(context);
                    },
                    child: const Text("Book Parking"))),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/image/parkingMap.png'),
            ),
          ),
        ],
      ),
    );
  }
}
