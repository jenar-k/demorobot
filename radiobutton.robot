*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}       ${BROWSERS}
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/radio-button       
${BROWSERS}             chrome

*** Test Cases ****
Klik Radio Button "Impressive"
    Maximize Browser Window 
    Click Element                       //*[@for="impressiveRadio"]
    Element Should Be Visible           //span[@class="text-success"]
    Element Should Contain              //span[@class="text-success"]           Impressive
    Sleep                               2s