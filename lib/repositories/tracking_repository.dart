import 'package:car_rental_locate/commons/constants/cars.dart';
import 'package:signalr_netcore/signalr_client.dart';

class TrackingRepository {
  TrackingRepository() {
    connection = HubConnectionBuilder().withUrl(socketUrl).build();
  }

  late HubConnection connection;

  Future<void> connect() async {
    await connection.start();
  }
}
