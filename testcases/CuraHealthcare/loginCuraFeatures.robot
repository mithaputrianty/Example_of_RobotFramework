#Author: putriantyf@gmail.com

*** Settings ***
Library     SeleniumLibrary
Resource    ../../steps/CuraHealthcare/loginCuraSteps.robot

*** Test Cases ***
Login using invalid credential
	[Template]		Scenario Outline Login using invalid credential
	JohnDoe		ThisIsNotAPassword
	John Doe	ThisIsAPassword


*** Keywords ***
Login using valid credential
    Given User access Cura Healthcare website
	When User enter valid username and password
	And User click Login button on Cura Login page
	Then User redirect to Appointment page

Scenario Outline Login using invalid credential
	[Arguments]		${username}		${password}
    Given User access Cura Healthcare website
	When User enter invalid ${username} and ${password}
	And User click Login button on Cura Login page
	Then User expect to see error message on Login page