import 'package:events/models/event_list_state.dart';
import 'package:events/pages/event_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class EventListWidget extends StatelessWidget {
  const EventListWidget({super.key, required this.state, this.countryData});
  final EventListState state;
  // ignore: prefer_typing_uninitialized_variables
  final countryData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.events.length,
      itemBuilder: (context, index) {
        var event = state.events[index];
        var country = countryData![event.venue_country];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EventDetailPage(id: event.id)));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8.0,
                  left: 8.0,
                  right: 8.0,
                  bottom: 12.0,
                ),
                child: Row(
                  children: [
                    SizedBox(
                        width: 72,
                        height: 72,
                        child: event.organiser_icon.contains('svg')
                            ? SvgPicture.network(
                                event.organiser_icon,
                              )
                            : Image.network(
                                event.organiser_icon,
                              )),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat('EE, MMM d • k:mm a')
                                .format(event.date_time),
                            style: TextStyle(
                                color: HexColor('#5669FF'),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            event.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(height: 11),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset('assets/location_pin.svg'),
                              SizedBox(
                                width: 6,
                              ),
                              Flexible(
                                child: Text(
                                  "${event.venue_name} • ${event.venue_city}, $country",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
