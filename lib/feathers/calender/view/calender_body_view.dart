import 'package:flutter/material.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/admin/review/widgets/custom_row.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class CalenderBodyView extends StatefulWidget {
  const CalenderBodyView({super.key});

  @override
  State<CalenderBodyView> createState() => _CalenderBodyViewState();
}

class _CalenderBodyViewState extends State<CalenderBodyView> {
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomRow(title: 'Calender'),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: TableCalendar(
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: const CalendarStyle(
              
                markerDecoration: BoxDecoration(color: blackColor),
              ),
              // selectedDayPredicate: (day) => isSameDay(dateTime, day),
              // onDaySelected: (selectedDay, focusedDay) {
              //   dateTime = selectedDay;
              //   setState(() {});
               
              // },
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2030)),
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          width: double.infinity,
          decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Planning Schadule',
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: whiteColor,
                  radius: 10,
                ),
                title: const Text('Jeddah Waterfront',
                    style: TextStyle(color: whiteColor, fontSize: 23)),
                subtitle: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(DateFormat.yMMMMEEEEd().format(DateTime.now()),
                        style:
                            const TextStyle(color: whiteColor, fontSize: 18))),
              )
            ],
          ),
        ))
      ],
    );
  }
}
