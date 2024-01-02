       IDENTIFICATION DIVISION.
       PROGRAM-ID. TELA-LOGIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USUARIO PIC X(20).
       01 SENHA PIC X(20).
       01 USUARIO-VALIDO PIC X(1) VALUE 'N'.
       01 RESPOSTA PIC X(20).
       01 CONTINUAR-LOOP PIC X(1) VALUE 'Y'.

       PROCEDURE DIVISION.
           PERFORM EXIBIR-TITULO.
           PERFORM AUTENTICACAO.
           PERFORM MENU-PRINCIPAL.

           STOP RUN.

       EXIBIR-TITULO.
           DISPLAY '------------------------'.
           DISPLAY 'Bem-vindo à Tela de Login'.
           DISPLAY '------------------------'.

       AUTENTICACAO.
           DISPLAY 'Usuario:'.
           ACCEPT USUARIO.
           DISPLAY 'Senha:'.
           ACCEPT SENHA.

           PERFORM VALIDAR-USUARIO.

           IF USUARIO-VALIDO = 'S' THEN
               DISPLAY 'Login bem-sucedido.'
               DISPLAY 'Bem-vindo: ' , USUARIO
           ELSE
               DISPLAY 'Usuário ou senha inválidos.'
               PERFORM EXIBIR-TITULO
               PERFORM AUTENTICACAO.

       MENU-PRINCIPAL.
           PERFORM EXIBIR-MENU.
           ACCEPT RESPOSTA.

           EVALUATE TRUE
               WHEN RESPOSTA = '1' PERFORM FAZER-PIX
               WHEN RESPOSTA = '2' PERFORM RECEBER-PIX
               WHEN RESPOSTA = '3' PERFORM ENCERRAR-CONTA
               WHEN RESPOSTA = '4' PERFORM SAIR
               WHEN OTHER PERFORM MENU-PRINCIPAL.

           IF CONTINUAR-LOOP = 'Y' PERFORM MENU-PRINCIPAL.

       VALIDAR-USUARIO.
           IF USUARIO = 'usuario' AND SENHA = 'senha' THEN
               MOVE 'S' TO USUARIO-VALIDO
           ELSE
               MOVE 'N' TO USUARIO-VALIDO.

       FAZER-PIX.
           DISPLAY 'Opção [1] selecionada - Fazer Pix'.
           

       RECEBER-PIX.
           DISPLAY 'Opção [2] selecionada - Receber Pix'.
           

       ENCERRAR-CONTA.
           DISPLAY 'Opção [3] selecionada - Encerrar Conta'.
           

       SAIR.
           DISPLAY 'Opção [4] selecionada - Sair'.
           MOVE 'N' TO CONTINUAR-LOOP.

       EXIBIR-MENU.
           DISPLAY 'Opções de Menu:'
           DISPLAY '[1] Fazer Pix'
           DISPLAY '[2] Receber Pix'
           DISPLAY '[3] Encerrar Conta'
           DISPLAY '[4] Sair'.
