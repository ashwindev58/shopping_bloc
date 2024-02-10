import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../api_service/home/electronics/getelectronics.dart';
import '../../models/product/model_product.dart';

part 'electronics_event.dart';
part 'electronics_state.dart';
part 'electronics_bloc.freezed.dart';

class ElectronicsBloc extends Bloc<ElectronicsEvent, ElectronicsState> {
  ElectronicsBloc() : super(ElectronicsState.initial()) {
    on<_GetElectronics>((event, emit) async {

      emit(state.copyWith(isLoading: true,productList: []));

      var resp=await fetchElectronicsProduct();

      emit(state.copyWith(isLoading: false,productList: resp));

      // TODO: implement event handler
    });
  }
}
