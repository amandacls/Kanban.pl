main :-
    write('\n'),
    writeln('Boas vindas ao Kanban, um espaço para te auxiliar em suas atividades'),
    write('\n'),
    writeln('Escolha uma opção:'),
    writeln('1. Cadastrar usuário'),
    writeln('2. Cadastrar atividade'),
    writeln('3. Exibir quadro'),
    writeln('4. Editar uma atividade'),
    writeln('5. Alterar status de uma atividade'),
    writeln('6. Sair'),
    read(Opcao),
    escolherOpcao(Opcao).

escolherOpcao('1') :- usuario.
escolherOpcao('2') :- atividade.
escolherOpcao('3') :- exibirQuadro.
escolherOpcao('4') :- editarAtividade.
escolherOpcao('5') :- status.
escolherOpcao('6') :- sair.
escolherOpcao(_) :- writeln('Opção inválida!'), main.


usuario(Nome, Funcao, UserId):-
  write('Nome: '),
  read(Nome),
  write('Função: ')
  read(Funcao),
  write('Digite um id de até 6 números: '),
  read(IdUser).
  % Inserir a funcao verifica idExistente

atividade(IdAtv, Tarefa, IdUsuario, Status, Urgencia, Dificuldade, Entrega):-
  write("Insira o ID da atividade"),
  read(IdAtv),
  writeln("Tarefa: "),
  write("Insira o nome: "),
  read(Tarefa),
  write("Usuario: "),
  read(IdUsuario),
  writeln("Status:"),
  writeln("Status possiveis: A fazer | Em andamento | Concluído"),
  write("Adicione um desses status a sua atividade"),
  read(status).
  % implementar o resto das funcoes
  % matriz Eisenhower
  

editarAtv(IdAtividade, Nome, NovaDif, NovaUrg, NovaEntrega):-
  write('Qual é o identificador da atividade que você deseja editar?'),
  read(IdAtividade),
  write('O que você deseja alterar?'),
  write('OBS: O que não quiser mudar, digite como estava.'),
  write('Digite as alterações:'),
  write('Novo nome: '),
  read(Nome),
  write('Nova dificuldade: '),
  read(NovaDif),
  write('Nova urgência: '),
  read(NovaUrg),
  write('Nova data de entrega: '),
  read(NovaEntrega).
  /* EditarAtividades.editarAtividade (read idAtividade) (Just novoNome) (Just novoDif) (Just novoUrg) (Just novoEntrega) */
  % funcao de outro arquivo

status(IdAtividade, NovoStatus):-
  write('Digite o id da atividade que deseja alterar: '),
  read(IdAtividade),
  write('Digite o novo status da atividade: '),
  read(NovoStatus).
  /* EditarAtividades.editarStatus (read idAtividade) (Just novoStatus) */
  % funcao de outro arquivo


