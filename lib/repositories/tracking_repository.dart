import 'package:car_rental_locate/commons/constants/cars.dart';
import 'package:signalr_netcore/signalr_client.dart';

class TrackingRepository {
  TrackingRepository() {}

  late HubConnection connection;

  Future<void> connect() async {
    connection = HubConnectionBuilder().withUrl(socketUrl).build();
    await connection.start();
  }
}
