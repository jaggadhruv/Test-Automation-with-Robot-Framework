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
    Click Button                id=login-signin

    Input Password              id=login-passwd         selenium123
    Click Button                id=login-signin
    Log                         Test-2 Completed
*** Keywords ***
