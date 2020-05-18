*** Settings ***
Documentation  Crear un usuario y asociarlo a un proveedor
Library  SeleniumLibrary

*** Keywords ***
Being testing
    Abrir pagina
    Maximizar
    Verificar


Abrir pagina
    Open Browser    ${LOGIN URL}    ${BROWSER}
    
Maximizar
    Maximize Browser Window
    
Verificar
    Title Should Be     SIGLA