
*** Settings ***
Documentation    Test de la fonctionnalité Login avec username et password
Library          SeleniumLibrary
Variables    ./Data.py
Resource    ./LoginPage.Robot


*** Test Cases ***
Login avec correct username et correct password
    Open Browser To Login Page
    Set Browser Implicit Wait    5
    Enter Username    ${correctUserName}
    Enter Password    ${correctPassword}
    Submit Login Form

Login avec incorrect username et correct password
    Open Browser To Login Page
    Set Browser Implicit Wait    5
    Enter Username    ${inCorrectUserName}
    Enter Password    ${correctPassword}
    Submit Login Form
    Verify Login Failure

Login avec correct username et incorrect password
    Open Browser To Login Page
    Set Browser Implicit Wait    5
    Enter Username    ${correctUserName}
    Enter Password    ${inCorrectPassword}
    Submit Login Form
    Verify Login Failure


    
