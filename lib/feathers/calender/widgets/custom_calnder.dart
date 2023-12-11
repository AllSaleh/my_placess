import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/const.dart';
import 'package:project/feathers/calender/cubit/calnder_cubit.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalnderCubit, CalnderState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: TableCalendar(
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              calendarStyle: const CalendarStyle(
                markerDecoration: BoxDecoration(color: blackColor),
              ),
              selectedDayPredicate: (day) => isSameDay(
                  BlocProvider.of<CalnderCubit>(context).dateTime, day),
              onDaySelected: (selectedDay, focusedDay) {
            
                BlocProvider.of<CalnderCubit>(context).changeDate(selectedDay);
                BlocProvider.of<CalnderCubit>(context).getCalender();

                // .dateTime = selectedDay;
                // print(DateFormat('yyyy-MM-dd').format(selectedDay));
              },
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2030)),
        );
      },
    );
  }
}
