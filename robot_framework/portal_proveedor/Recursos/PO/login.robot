*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Ingresar datos
    [Arguments]  ${username}  ${password}
    Input Text  id=usuario  ${username}
    Input Text  id=contrasena  ${password}

Confirmar
    Click Button  id=ingresar

Verificar
    Title Should Be  Integración de Proyectos SIU