*** Settings ***
Library         SeleniumLibrary
Resource        ../steps/loginOpenMRSSteps.robot


*** Test Cases ***
Login using valid credential as Super User
    User access Open MRS website
    User input valid username on Open MRS
    User input valid password on Open MRS
    User choose Location for the session
    User click Login button on Open MRS
    User redirect to homepage as Super User