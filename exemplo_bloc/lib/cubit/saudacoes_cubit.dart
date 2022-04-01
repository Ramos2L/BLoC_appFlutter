import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'saudacoes_state.dart';

class SaudacoesCubit extends Cubit<SaudacoesState> {

  int times = 1;

  SaudacoesCubit() : super(SaudacoesInitial());

  Future<void> getProximaFraseState() async {
    times++;
  
    if ( times == 2 ){
      print("teste2 $times");
      emit(SaudacoesSegunda());
    } else if ( times == 3 ){
      emit(SaudacoesTerceira());
    } else if ( times == 4 ){
      emit(SaudacoesQuarta());
    } else {
      emit(SaudacoesProxima());
    }
  }

  Future<void> zerarCont() async {
    times = 1;

    emit(SaudacoesInitial());
  }

}
