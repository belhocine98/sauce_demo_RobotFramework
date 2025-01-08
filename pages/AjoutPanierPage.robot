*** Settings ***
Library           OperatingSystem
Library           SeleniumLibrary


*** Variables ***
${url}    https://www.saucedemo.com/inventory.html
${boutonAjout}    id:add-to-cart-sauce-labs-backpack
${boutonPanier}    class:shopping_cart_link


*** Test Cases ***
Login avec username et password correctes
    [Documentation]    Login avec un username et un password corrects
    
    Click Button     ${boutonAjout}
    Click Button        ${boutonPanier}
    Page Should Contain    ${url}    /cart.html

    