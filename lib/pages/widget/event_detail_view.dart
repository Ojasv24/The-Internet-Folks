import 'package:events/bloc/event_detail_bloc.dart';
import 'package:events/models/event_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class EventDetailView extends StatelessWidget {
  const EventDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventDetailBloc, EventDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white, //change your color here
              ),
              title: const Text(
                'Event Detail',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white.withOpacity(0.2),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.bookmark),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
              flexibleSpace: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(state.event.banner_image),
                          fit: BoxFit.cover))),
            ),
          ),
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                )
              : state.isFailure
                  ? const Center(
                      child: Text('Error'),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.event.title,
                            style: const TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          OrganiserInfoWidget(
                              Image.network(state.event.organiser_icon),
                              state.event.organiser_name,
                              "Organiser"),
                          const SizedBox(
                            height: 19,
                          ),
                          DetailWidget(
                            SvgPicture.asset('assets/calender.svg'),
                            DateFormat('d MMMM, yyyy')
                                .format(state.event.date_time),
                            DateFormat('EEEE, K:mm a')
                                .format(state.event.date_time),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          DetailWidget(
                            SvgPicture.asset('assets/location_pin2.svg'),
                            state.event.venue_name,
                            "${state.event.venue_city}, ${state.event.venue_country}",
                          ),
                          const SizedBox(
                            height: 33,
                          ),
                          const Text("About Event",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            state.event.description,
                            maxLines: 4,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.fade,
                          ),
                        ],
                      ),
                    ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text("BOOK NOW",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/right_arrow.svg',
                  width: 30,
                ),
              ],
            ),
            backgroundColor: HexColor('#5669ff'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}

Widget OrganiserInfoWidget(Widget imageLink, String text1, String text2) {
  return Row(
    children: [
      SizedBox(
        width: 50,
        height: 50,
        child: imageLink,
      ),
      const SizedBox(width: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: HexColor('#706E8F')),
          ),
        ],
      )
    ],
  );
}

Widget DetailWidget(Widget icon, text1, String text2) {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: HexColor("eef0ff"),
        ),
        child: Padding(padding: const EdgeInsets.all(9.0), child: icon),
      ),
      const SizedBox(width: 8),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: HexColor('#706E8F')),
          ),
        ],
      )
    ],
  );
}
