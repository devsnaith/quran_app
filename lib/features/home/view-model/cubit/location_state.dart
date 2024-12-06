part of 'location_cubit.dart';

@immutable
sealed class LocationState {}
final class LocationInitial extends LocationState {}
final class LocationPermissionDenied extends LocationState {
  LocationPermissionDenied(this.location);
  final Location location;
}
final class LocationServiceDisabled extends LocationState {
  LocationServiceDisabled(this.location);
  final Location location;
}
final class LocationGrapped extends LocationState {
  LocationGrapped(this.locationData);
  final LocationData locationData;
}
