% cadastrarAtividade([X|T]):-
% cadastrarAtividade().
% NomeAtividade, Usuario, Status, Urgencia, Dificuldade, Entrega

verificaOpcao(Opcao, Elem):-
  Elem is ["1", "2", "3", "4"],
  member(Opcao, Elem).