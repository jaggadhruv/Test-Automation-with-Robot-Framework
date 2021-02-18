*** Settings ***
Library                 SeleniumLibrary

*** Variables ***


*** Test Cases ***
Search for a particular querey on Google Search
    [documentation]             Google Test
    [tags]                      functional

    Open Browser                https://www.google.com  chrome
    Set Browser Implicit Wait   5
    Input Text                  name=q          Automation using Robot Framework
    sleep                       2
    Press Keys                  name=q          ENTER
    sleep                       5
    Close Browser
    Log                         Test-1 Completed

Login Test
    [documentation]             Yahoo Mail Login Test
    [tags]                      functional

    Open Browser                https://mail.yahoo.com  chrome
    Set Browser Implicit Wait   5

    Input Text                  id=login-username       robotfwtestman
    sleep                       2
    Click Button                id=login-signin

    sleep                       2
    Input Password              id=login-passwd         selenium123
#    Input Password              id=login-passwd         123selenium123
    Click Button                id=login-signin
    sleep                       2
    Click Element               id=mail-app-container
    Log                         Test-2 Completed

*** Keywords ***
