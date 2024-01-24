*** Settings ***
Library         SeleniumLibrary
Resource        ../variables/OpenMRSVariables.robot


*** Keywords ***
# Code dengan comment # adalah basic code
# Code dengan comment ## adalah code dengan data diambil dari variables
# Code dengan comment ### adalah code dengan element dan data diambil dari variables

User access Open MRS website
    # Open Browser    https://demo.openmrs.org/openmrs/login.htm  Chrome
    Open Browser    ${baseUrl}    Chrome
    Maximize Browser Window
    Sleep    2s

User input valid username on Open MRS
    Wait Until Element Is Visible    id:username
    # Input Text    id:username    Admin
    ## Input Text    id:username    ${validCredential}[0]
    Input Text    ${loginField}[username]    ${validCredential}[0]
    Sleep    2s

User input valid password on Open MRS
    # Input Text    id:password   Admin123
    ## Input Text    id:password   ${validCredential}[1]
    Input Text    ${loginField}[password]   ${validCredential}[1]
    Sleep    2s

User choose Location for the session
    ## Click Element   id:Inpatient Ward
    Click Element   ${loginButton}[location]

User click Login button on Open MRS
    ## Click Element   id:loginButton
    Click Element   ${loginButton}[loginBtn]

 User redirect to homepage as Super User
    ## Wait Until Element Is Visible    id:coreapps-activeVisitsHomepageLink-coreapps-activeVisitsHomepageLink-extension
    Wait Until Element Is Visible    ${loginElement}[elementVisible]
    ## Element Should Be Visible    id:coreapps-activeVisitsHomepageLink-coreapps-activeVisitsHomepageLink-extension
    Element Should Be Visible    ${loginElement}[elementVisible]
    Sleep    2s
    Close Browser