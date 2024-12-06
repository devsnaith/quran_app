import 'package:bloc/bloc.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';
import 'package:quran/features/home/repositories/timedate_repository.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  final TimeDateRepository _timeDateRepository = TimeDateRepository();

  void fetchLocation(bool request) async {
    Location location = Location();
    if(!(await location.serviceEnabled())) {
      if (!request) {
        emit(LocationServiceDisabled(location));
        return;  
      }else if(!await location.requestService()) {
        emit(LocationServiceDisabled(location));
        return;
      }
    }

    PermissionStatus permission = await location.hasPermission();
    if(permission != PermissionStatus.granted) {
      if(!request) {
        emit(LocationPermissionDenied(location));
        return;
      }else if(await location.requestPermission() != PermissionStatus.granted) {
        emit(LocationPermissionDenied(location));
        return;
      }
    }
    
    LocationData locationDate = await location.getLocation();
    _timeDateRepository.updateLocation(locationDate);
    emit(LocationGrapped(locationDate));
  }

  getTimeDateRepository() => _timeDateRepository;
}
