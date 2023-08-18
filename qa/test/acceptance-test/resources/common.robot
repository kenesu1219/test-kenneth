*** Settings ***
Library    SeleniumLibrary
Library    String


*** Keywords ***
Generate Random Number
    ${randomNum}    Generate Random String    8    [NUMBERS]
    Set Test Variable    ${randomNum}

Generate Random String Mixed
    ${randomStr}    Generate Random String    8    [LETTERS][NUMBERS]
    Set Test Variable    ${randomStr}