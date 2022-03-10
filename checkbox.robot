*** Settings ***
Library                 SeleniumLibrary
Test Setup              Open Browser                ${webURL}                   ${BROWSERS}
Test Teardown           Close Browser

*** Variables ***
${webURL}               https://demoqa.com/checkbox
${BROWSERS}             chrome

*** Test Cases ***
I want to check one data in checkbox
    Click Element                       //button[@title="Expand all"]
    Click Element                       (//span[@class="rct-checkbox"])[3]
    Click Element                       (//span[@class="rct-checkbox"])[7]
    Element Should Be Visible           //div[@id="result"]
    Element Should Contain              (//span[@class="text-success"])[1]               notes
    Element Should Contain              (//span[@class="text-success"])[2]               react
    Sleep                               2s
