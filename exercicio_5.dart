import 'dart:io';

List<String> tarefasPendentes = [];
List<String> tarefasConcluidas = [];

void adicionarTarefas() {
  print('Digite a descrição da tarefa: ');
  String? descricao = stdin.readLineSync();

  if (descricao != null && descricao.trim().isNotEmpty) {
    tarefasPendentes.add(descricao.trim());
    print('Tarefa adicionada com sucesso');
  } else {
    print('Descrição inválida');
  }
}

void listarTarefas() {
  print('\nTarefas pendentes: ');
  if (tarefasPendentes.isEmpty) {
    print('- Nenhuma tarefa pendente');
  } else {
    for (var tarefa in tarefasPendentes) {
      print('- $tarefa');
    }
  }

  print('\nTarefas concluídas: ');
  if (tarefasConcluidas.isEmpty) {
    print('- Nenhuma tarefa concluída');
  } else {
    for (var tarefa in tarefasConcluidas) {
      print('- $tarefa');
    }
  }
}

void marcarTComoConcl() {
  if (tarefasPendentes.isEmpty) {
    print('Nenhuma tarefa pendente para concluir');
    return;
  }

  print('\nQual tarefa deseja concluir?');
  for (int i = 0; i < tarefasPendentes.length; i++) {
    print('[${i + 1}] ${tarefasPendentes[i]}');
  }

  print('Escolha: ');
  String? escolha = stdin.readLineSync();
  int? indice = int.tryParse(escolha ?? '');

  if (indice != null && indice > 0 && indice <= tarefasPendentes.length) {
    String tarefa = tarefasPendentes.removeAt(indice - 1);
    tarefasConcluidas.add('$tarefa (concluída)');
    print('Tarefa "$tarefa" concluída!');
  } else {
    print('Escolha inválida.');
  }
}

void salvarEmArquivo() {
  final arquivo = File('tarefas.txt');
  final sink = arquivo.openWrite();

  int contador = 1;
  for (var tarefa in tarefasConcluidas) {
    sink.writeln('$contador. $tarefa');
    contador++;
  }
  for (var tarefa in tarefasPendentes) {
    sink.writeln('$contador. $tarefa');
    contador++;
  }

  sink.close();
}
void main() {
  
  while (true) {
  print("\n");
  print("Escolha uma opção: ");
  print("1. Adicionar tarefa\n2. Listar tarefas\n3. Marcar tarefa como concluída\n4. Sair");
  print("Opção: ");
  String escolha = stdin.readLineSync()!;

  
  switch (escolha) {
    case '1':
    adicionarTarefas();
    break;
    case '2':
    listarTarefas();
    break;
    case '3':
    marcarTComoConcl();
    break;
    case '4':
    salvarEmArquivo();
    print("tarefas salvas em 'tarefas.txt'\nPrograma encerrado");
    return;
    default:
    print("Opção inválida");
    }
  }
}