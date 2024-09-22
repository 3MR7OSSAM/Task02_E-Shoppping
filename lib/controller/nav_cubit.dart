import 'package:bloc/bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0); // 0 is the initial index (Home)

  void updateIndex(int index) {
    emit(index); // Emit the new index
  }
}
