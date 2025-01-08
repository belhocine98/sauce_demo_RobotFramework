*** Settings ***
Library           OperatingSystem
Library           SeleniumLibrary
Variables         ./AjoutPanierlocators.py

*** Variables ***
${url}    https://www.saucedemo.com/inventory.html
*** Test Cases ***
Login avec username et password correctes
    [Documentation]    Login avec un username et un password corrects
    
    Click Button     ${boutonAjout}
    Click Button        ${boutonPanier}
    Page Should Contain    ${url}    /cart.html

    