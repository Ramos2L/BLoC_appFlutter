import 'package:exemplo_bloc/cubit/saudacoes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BLoC"),),
      body: Container(  
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextMessage(),
              TextButton(
                onPressed: (){
                  final saudacoesCubit = context.read<SaudacoesCubit>();
                  saudacoesCubit.getProximaFraseState();
                }, 
                child: const Text('Proxima Frase')
              ),
              TextButton(
                onPressed: (){
                  final saudacoesCubit = context.read<SaudacoesCubit>();
                  saudacoesCubit.zerarCont();
                }, 
                child: const Text('Voltar para inicio')
              ),
            ],
          ),  
        ),
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaudacoesCubit, SaudacoesState>(
      builder: (context, state) {

        String message = '';

        if( state is SaudacoesInitial){
          message = 'Olá, sua primeira mensagem aqui.';
        } else if ( state is SaudacoesSegunda){ 
          message = 'Olá, sua segunda mensagem aqui.';
        } else if ( state is SaudacoesTerceira){
          message = 'Olá, sua terceira mensagem aqui.';
        } else {
          message = 'Olá';
        }

        return Text(
          message, style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        );
      }
    );
  }
}