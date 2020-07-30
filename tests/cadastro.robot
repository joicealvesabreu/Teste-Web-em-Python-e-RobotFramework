***settings***
Documentation       Suite dos testes de cadastro

Resource            ../resource/base.robot

Test Setup          Open Session 

Test Teardown       Close Session

***Test Cases ***
Cadastro simples
    Dado que acesso a página principal
    Quando submeto no meu email "joice12@gmail.com"
    Entao devo ser autenticado

Email incorreto
    Dado que acesso a página principal
    Quando submeto no meu email "joice%gmail.com"
    Entao devo ver a mensagem "Oops. Informe um email válido!"

Email vazio
    Dado que acesso a página principal
    Quando submeto no meu email "${EMPTY}"
    Entao devo ver a mensagem "Oops. Informe um email válido!"




