import 'package:e_commerc_api/Airprogecrs/aillines_provider.dart';
import 'package:e_commerc_api/models/passenger_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AillinesWidget extends StatelessWidget {
  Passenger passenger;
  AillinesWidget(this.passenger);
  @override
  Widget build(BuildContext context) {
    return Consumer<AillinesProvider>(builder: ((context, provider, child) {
      return Container(
        color: Colors.grey.withOpacity(0.2),
        margin: EdgeInsets.all(8),
        child: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Image.network(
                passenger.airline?.first.logo ?? "",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Text(passenger.name ?? ""),
                Text(passenger.trips.toString())
              ],
            )
          ],
        ),
      );
    }));
  }
}
