import 'package:car_rental_locate/commons/constants/cars.dart';
import 'package:signalr_core/signalr_core.dart';

class TrackingRepository {
  TrackingRepository() {
    connection = HubConnectionBuilder()
        .withUrl(
            socketUrl,
            HttpConnectionOptions(
              logging: (level, message) => print(message),
            ))
        .build();
  }

  late HubConnection connection;

  Future<void> connect() async {
    await connection.start();
  }
}
