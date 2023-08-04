import 'package:flutter/material.dart';
import 'package:parking_system/data/dummy_data.dart';
import 'package:parking_system/widgets/parking_slots.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10),
        // color: Theme.of(context).colorScheme.onPrimary,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: ${user.name}",
                  style: Theme.of(context).textTheme.titleMedium
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Phone No.: ${user.phoneNo}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Vechile Id: ${user.vid}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
