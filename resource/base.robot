***settings***
Documentation       Aqui teremos a estrutura base do projeto, selenium importado Aqui

Library             SeleniumLibrary

Resource            elements.robot 
Resource            kws.robot
Resource            helpers.robot

***Variables***
${base_url}         http://ninjachef-qaninja-io.umbler.net/ 

***Keywords***
## Hooks
Open Session 
    Open Browser     about:blank      chrome   #Essa linha abre uma aba  

Close Session
    Capture Page Screenshot     #Essa linha faz o screenshot para evidencia no report
    Close Browser
