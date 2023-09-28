import 'dart:convert';

import 'package:events/models/event.dart';
import 'package:http/http.dart' as http;

class EventRepository {
  //Get All Events

  Future<List<Event>> getAllEvents() async {
    const url =
        "https://sde-007.api.assignment.theinternetfolks.works/v1/event";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      List<Event> events = [];
      for (var e in data['content']['data']) {
        Event event = Event.fromJson(e);
        events.add(event);
      }

      return events;
    } else {
      throw Exception("Failed to load events");
    }
  }

  //Get Event By Id

  Future<Event> getEventById(int id) async {
    var url =
        "https://sde-007.api.assignment.theinternetfolks.works/v1/event/$id";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      Event event = Event.fromJson(data['content']['data']);
      return event;
    } else {
      throw Exception("Failed to load event");
    }
  }

  //Get Event By Search

  Future<List<Event>> getEventBySearch(String search) async {
    var url =
        "https://sde-007.api.assignment.theinternetfolks.works/v1/event?search=$search";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Event> events = [];
      for (var e in data['content']['data']) {
        Event event = Event.fromJson(e);
        events.add(event);
      }
      return events;
    } else {
      throw Exception("Failed to load events");
    }
  }
}
