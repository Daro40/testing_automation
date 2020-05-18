
*** Settings ***
Library  SeleniumLibrary
Resource  ../PO/login.robot

*** Keywords ***
Loguearse
    [Arguments]  ${username}  ${password}
    login.Ingresar datos    ${username}    ${password}
    login.Confirmar
    login.Verificar

Input Username
    [Arguments]    ${username}
    Input Text    id=usuario    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=contrasena    ${password}

Login
    [Arguments]  ${username}  ${password}
    Input Text  id=usuario  ${username}
    Input Text  id=contrasena  ${password}
    Click Button  id=ingresar
    Title Should Be  Integración de Proyectos SIU

Desplegar administrador
    Click Element  Xpath=//*[@id="side-menu"]/li[3]/a
    Wait Until Element Is Visible  xpath=//*[@id="side-menu"]/li[3]/ul/li/a  2

Ingresar listado usuarios
    Click Element  xpath=//*[@id="side-menu"]/li[3]/ul/li/a
    Page Should Contain  Listado de usuarios

Nuevo usuario
    Click Element  xpath=//*[@id="pjax-container"]/div[3]/div/div/div/a
    Page Should Contain  Datos usuario

Completar formulario
    [Arguments]  ${usuario}  ${mail}  ${nombre}  ${apellido}  ${password}
    Input Text  id=identificador  ${usuario}
    Input Text  id=email  ${mail}
    Input Text  id=nombre  ${nombre}
    Input Text  id=apellido  ${apellido}
    Input Text  id=password  ${password}
    Input Text  id=repetirPassword  ${password}
    Click Element  name=agregarUsuario

logout
    Click Element  id=usuario_boton_cuenta_id
    Click Element  id=boton_salir