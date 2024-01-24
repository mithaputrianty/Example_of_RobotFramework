*** Settings ***
Library     SeleniumLibrary
Resource    ../../variables/CuraVariables.robot

*** Keywords ***
# Code dengan comment # adalah basic code
# Code yang tidak di comment adalah code dengan element dan data diambil dari variables

User access Cura Healthcare website
    # Open Browser    https://katalon-demo-cura.herokuapp.com/profile.php#login  Chrome
    Open Browser    ${baseUrl}    Chrome
    Maximize Browser Window
    Sleep    2s

User enter valid username and password
    # Input Text    id:txt-username    John Doe
    Input Text    ${loginField}[username]    ${validCredential}[username]
    # Input Text    id:txt-password    ThisIsNotAPassword
    Input Text    ${loginField}[password]    ${validCredential}[password]
    Sleep    2s

User click Login button on Cura Login page
    # Click Element   id:btn-login
    Click Element   ${loginButton}[loginBtn]

 User redirect to Appointment page
    # Wait Until Element Is Visible    id:combo_facility
    Wait Until Element Is Visible    ${loginElement}[elementVisible]
    Sleep    2s
    Close Browser