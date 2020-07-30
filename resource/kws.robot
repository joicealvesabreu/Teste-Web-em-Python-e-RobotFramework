***settings***
Documentation       Aqui teremos todas as palavras chaves do projeto de automacao dos comportamentos

***Keywords***
Dado que acesso a página principal
    Go To       http://ninjachef-qaninja-io.umbler.net/ 

Quando submeto no meu email "${email}"
    Input Text          id:email    ${email}    
    Click Element       css:button[type=submit]
    Sleep               5
Entao devo ser autenticado
    Wait Until Page Contains Element    class:dashboard

Entao devo ver a mensagem "${expect_messagher}"
    Wait Until Element Contains      class:alert         ${expect_messagher}    

#cadastro de pratos

Dado que "${produto}" é um dos meus pratos
    Set Test Variable           ${produto}

Quando faco o cadastro desse item
    Wait Until Element Is Visible               class:btn-add           10   #Quando estiver visivel vai clicar esperar 5 segundos
    Click Element               class:btn-add

    Choose File                 css:input[id=thumbnail]         ${EXECDIR}/resource/imgs/${produto['img']}  #Essa linha faz o upload da foto no site
    
    Input Text                  id:name         ${produto['nome']}
    Input Text                  id:plate        ${produto['tipo']}
    Input Text                  id:price        ${produto['preco']}
    Click Element               class:btn-cadastrar
Entao devo ver este produto no meu prato no meu dashboards
    Wait Until Element Contains        class:product-list      ${produto['nome']}

