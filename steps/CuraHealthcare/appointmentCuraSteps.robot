#Author: putriantyf@gmail.com

*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    ../../variables/CuraVariables.robot
Resource    loginCuraSteps.robot

*** Keywords ***
User login
    Login User
    Wait Until Element Is Visible    ${loginElement}[elementVisible]
    Sleep    2s
    
User choose Facility ${facility}
    Click Element       ${appointmentField}[facility]
    Select From List By Value       ${appointmentField}[facility]       ${facility}

User choose Healthcare Program
    Click Element       ${appointmentHealthcareProgram}[medicare]
 
User choose Visit Date ${visitDate}
    # code ini masih perlu di improve
    # masih menggunakan input text; bukan datepicker
    Click Element       ${appointmentField}[visitDate]
    Input Text      ${appointmentField}[visitDate]      ${visitDate}

User input Comment ${comment}
    Input Text      ${appointmentField}[comment]      ${comment}

User click Book Appointment button
    Click Element   ${appointmentButton}[appointmentBtn]

Appointment has been created
    Wait Until Page Contains        ${appointmentCreated}
    Sleep    2s
    Close Browser