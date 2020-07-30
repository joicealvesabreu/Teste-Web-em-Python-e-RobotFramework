***settings***
Documentation       Teste de produtos/pratos
...                 Sendo eu cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource            ../resource/base.robot

Test Setup          Login Session           joice12@gmail.com 

Test Teardown       Close Session

***Variables***
&{nhoque}=          img=prato.jpg       nome=Nhoque ao molho        tipo=massas     preco=20.00
***Test Cases***
Novo prato
    Dado que "${nhoque}" é um dos meus pratos
    Quando faco o cadastro desse item
    Entao devo ver este produto no meu prato no meu dashboards