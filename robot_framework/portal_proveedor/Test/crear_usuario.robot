*** Settings ***
Documentation  Crear un usuario y asociarlo a un proveedor
Resource  ../Recursos/usuario.robot
Test setup  Being testing
Test Teardown  stop testing

*** Variables ***
${LOGIN URL}  http://laila.siu.edu.ar:8286/siu/huarpe/app_dev.php
${BROWSER}  chrome
${username}  admin_proveedor
${password}  toba123*-a

*** Test Cases ***
Crear un usuario y asociarlo a un proveedor
    [Documentation]  Debemos loguearnos con admin_proveedor y crear un nuevo usuario
    [Tags]  Smoke
    usuario.Abrir Browser
    usuario.Login    admin_proveedor    toba123*-a
    sleep  3s
    usuario.Desplegar administrador
    usuario.Ingresar listado usuarios
    usuario.Nuevo usuario
    usuario.Completar formulario    dforti_33708031599    dforti@testing.com    tester40    testing40    toba123*-a
    usuario.logout
    usuario.Login    dforti_33708031599    toba123*-a
    usuario.Close Browser




        


