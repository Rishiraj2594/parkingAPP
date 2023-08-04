import 'package:flutter/material.dart';
import 'package:parking_system/data/dummy_data.dart';
import 'package:parking_system/data/status_data.dart';
import 'package:parking_system/models/slot.dart';
import 'package:parking_system/models/status.dart';
import 'package:parking_system/widgets/parking_slot.dart';

class ParkingSlots extends StatefulWidget {
  const ParkingSlots({super.key});

  @override
  State<ParkingSlots> createState() => _ParkingSlotsState();
}

class _ParkingSlotsState extends State<ParkingSlots> {
  void bookSlot(Slot slot){
    setState(() {
       slot.status = status[CurrentStatus.parked]!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text("Book Parking"),
      ),
      body: GridView(
        //grid view lets itme placed manner
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // for no. of columsn
          childAspectRatio:
              3 / 2, //ratios of the children widgets like 1/1,16/9
          crossAxisSpacing: 0, //horizontal spacing
          mainAxisSpacing: 0, //vertical spacing
        ),
        //alternative way to add category no1
        children: availableSlots.map((slot) {return slot == null ? const SizedBox() : ParkingSlot(color: slot.status, slot: slot, onBookSlot: () {});}).toList(),
      ),
    );
  }
}
