*** Settings ***
Library           SeleniumLibrary
Resource          loginSteps.robot

*** Test Cases ***
Login using valid credential
    Open Browser    ${baseUrl}    chrome
    Input Text    id=username    ${ValidCredential}[0]
    Input Text    id=password    ${ValidCredential}[1]
    Click Element    id=Inpatient Ward
    Click Button    id=loginButton
    Element Should Be Visible    id=coreapps-activeVisitsHomepageLink-coreapps-activeVisitsHomepageLink-extension
    Close Browser
