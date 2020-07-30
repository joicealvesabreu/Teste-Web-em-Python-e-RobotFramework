***settings***
Documentation       Aqui teremos todas as palavras chaves do projeto de automacao dos comportamentos

***Keywords***
Dado que acesso a página principal
    Go To       ${base_url}

Quando submeto no meu email "${email}"
    Input Text          ${CAMPO_EMAIL}     ${email}    
    Click Element       ${BOTAO_ENTRAR}
    Sleep               5
Entao devo ser autenticado
    Wait Until Page Contains Element    ${DIV_DASH}  

Entao devo ver a mensagem "${expect_messagher}"
    Wait Until Element Contains      ${DIV_ALERT}        ${expect_messagher}    

#cadastro de pratos

Dado que "${produto}" é um dos meus pratos
    Set Test Variable           ${produto}

Quando faco o cadastro desse item
    Wait Until Element Is Visible               ${DIV_BOTAOADD}          10   #Quando estiver visivel vai clicar esperar 5 segundos
    Click Element               ${DIV_BOTAOADD}

    Choose File                 ${CAMPO_UPLOAD}         ${EXECDIR}/resource/imgs/${produto['img']}  #Essa linha faz o upload da foto no site
    
    Input Text                  ${CAMPO_NOME}          ${produto['nome']}
    Input Text                  ${CAMPO_TIPO}         ${produto['tipo']}
    Input Text                  ${CAMPO_PRECO}         ${produto['preco']}
    Click Element               ${DIV_BTNADICIONAR}
Entao devo ver este produto no meu prato no meu dashboards
    Wait Until Element Contains        ${DIV_LISTA}       ${produto['nome']}

