*** Settings ***
Library     SeleniumLibrary
Resource    ../../steps/CuraHealthcare/loginCuraSteps.robot

*** Test Cases ***
Login using valid credential
    Given User access Cura Healthcare website
	When User enter valid username and password
	And User click Login button on Cura Login page
	Then User redirect to Appointment page

#Login using valid credential
#    Given User access Cura Healthcare website
#	When User enter invalid data username and password
#	And User click Login button on Cura Login page
#	Then User expect to see error message on Login page