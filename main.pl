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