import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppointmentsTabCubit extends Cubit<int> {
  AppointmentsTabCubit() : super(0);

  void selectTab(int index) => emit(index);
}
