import 'package:parking_system/data/status_data.dart';
import 'package:parking_system/models/slot.dart';
import 'package:parking_system/models/status.dart';
import 'package:parking_system/models/user.dart';

var availableSlots = [
Slot(id: '1', slotNo: 'P-1', status: status[CurrentStatus.available]!,),null,
Slot(id: '2', slotNo: 'P-2', status: status[CurrentStatus.notAvailable]!,),
Slot(id: '3', slotNo: 'P-3', status: status[CurrentStatus.booked]!,),null,
Slot(id: '4', slotNo: 'P-4', status: status[CurrentStatus.parked]!,),
Slot(id: '5', slotNo: 'P-5', status: status[CurrentStatus.available]!,),null,
Slot(id: '6', slotNo: 'P-6', status: status[CurrentStatus.notAvailable]!,),
Slot(id: '7', slotNo: 'P-7', status: status[CurrentStatus.parked]!,),null,
Slot(id: '8', slotNo: 'P-8', status: status[CurrentStatus.parked]!,),
Slot(id: '9', slotNo: 'P-9', status: status[CurrentStatus.booked]!,),null,
Slot(id: '10', slotNo: 'P-10', status: status[CurrentStatus.parked]!,),

];

const user =  User(id: '1', name: 'Rishi', phoneNo: '+91 7014975299', vid: 'RJ40');