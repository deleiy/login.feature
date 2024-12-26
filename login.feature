Funcionalidade: Tela de Login

  Cenário: Usuário insere dados válidos
    Dado que o usuário está na tela de login
    Quando o usuário insere um nome de usuário e uma senha válidos
    Então o usuário deve ser direcionado para a tela de checkout

  Cenário: Usuário insere dados inválidos
    Dado que o usuário está na tela de login
    Quando o usuário insere um nome de usuário ou senha inválidos
    Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


    Esquema de Cenário: Login com dados do usuário
    Dado que o usuário está na tela de login
    Quando o usuário insere "<usuario>" e "<senha>"
    Então o sistema deve "<resultado>"

    Exemplos:
      | usuario      | senha       | resultado                              |
      | usuario_valido | senha_valida | redirecionar para a tela de checkout  |
      | usuario_invalido | senha_valida | exibir mensagem "Usuário ou senha inválidos" |
      | usuario_valido | senha_invalida | exibir mensagem "Usuário ou senha inválidos" |
      | usuario_invalido | senha_invalida | exibir mensagem "Usuário ou senha inválidos" |