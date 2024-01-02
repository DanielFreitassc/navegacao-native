       IDENTIFICATION DIVISION.
       PROGRAM-ID. TELA-LOGIN.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USUARIO PIC X(20).
       01 SENHA PIC X(20).
       01 USUARIO-VALIDO PIC X(1) VALUE 'N'.
       01 RESPOSTA PIC X(20).
       PROCEDURE DIVISION.
           DISPLAY '------------------------'.
           DISPLAY 'Bem-vindo à Tela de Login'.
           DISPLAY '------------------------'.
           DISPLAY 'Usuario:'.
           ACCEPT USUARIO.
           DISPLAY 'Senha:'.
           ACCEPT SENHA.

           PERFORM VALIDAR-USUARIO.

           IF USUARIO-VALIDO = 'S' THEN
               DISPLAY 'Login bem-sucedido.'
               DISPLAY 'Bem-vindo: ' , USUARIO
               DISPLAY 'Oque deseja fazer?'
               DISPLAY '[1] Fazer Pix'
               DISPLAY '[2] Receber Pix'
               DISPLAY '[3] Encerrar Conta'
               DISPLAY '[4] Sair'
               ACCEPT RESPOSTA
           ELSE
               DISPLAY 'Usuário ou senha inválidos.'
    
           STOP RUN.

       VALIDAR-USUARIO.
           IF USUARIO = 'usuario' AND SENHA = 'senha' THEN
               MOVE 'S' TO USUARIO-VALIDO
           ELSE
               MOVE 'N' TO USUARIO-VALIDO.
