import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parking_system/data/status_data.dart';
import 'package:parking_system/models/slot.dart';
import 'package:parking_system/models/status.dart';

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b

class ParkingSlot extends StatefulWidget {
  const ParkingSlot(
      {super.key,
      required this.color,
      required this.slot,
      required this.onBookSlot});
  final Color color;
  final Slot slot;
  final void Function() onBookSlot;

  @override
  State<ParkingSlot> createState() => _ParkingSlotState();
}

class _ParkingSlotState extends State<ParkingSlot> {
  int slotState = 1;
  Color slotColor = Colors.grey.shade300;

  void onTapSlot() {
    setState(() {
          slotState = -slotState;
          slotState == 1 ? slotColor = Colors.grey.shade300 : slotColor = Colors.grey.shade200;
        });
  }

  @override
  Widget build(BuildContext context) {
    return
        // Card(
        //   elevation: 8,
        //   // clipBehavior: Clip.antiAlias,
        //   color: color,
        //   shape: RoundedRectangleBorder(
        //     side: BorderSide(
        //       color: Theme.of(context).colorScheme.outline,
        //     ),
        //     borderRadius: const BorderRadius.all(Radius.circular(12)),
        //   ),
        //   child:  InkWell(
        //     onTap: (){},
        //     borderRadius: const BorderRadius.all(Radius.circular(12)),
        //     splashColor: const Color.fromARGB(66, 158, 158, 158),
        //     child: Padding(
        //       padding: const EdgeInsets.all(10.0),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //         Text(slotNo,style: const TextStyle(fontWeight: FontWeight.bold),),
        //         Text(status),
        //       ],),
        //     ),
        //   ) ,
        // );
        InkWell(
      onTap: onTapSlot,
    
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [Colors.white, slotColor],),
          border:  const BorderDirectional(
            bottom: BorderSide(
              color: Colors.white,
              width: 4,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: 
                widget.slot.status != status[CurrentStatus.parked] ? 
                Text(
                  widget.slot.slotNo,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ) : 
                //if (slot.status == status[CurrentStatus.parked])
                  SvgPicture.asset('assets/SVG/car.svg',height: 59,),            
          ),
        ),
      ),
    );
  }
}
