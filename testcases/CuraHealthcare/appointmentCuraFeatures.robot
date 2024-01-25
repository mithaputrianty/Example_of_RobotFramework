#Author: putriantyf@gmail.com

*** Settings ***
Library     SeleniumLibrary
Resource    ../../steps/CuraHealthcare/appointmentCuraSteps.robot
Resource    ../../variables/CuraVariables.robot

*** Test Cases ***
Create a new appointment
    [Template]      Scenario Outline Create a new appointment
    Tokyo CURA Healthcare Center        26/01/2024      Ini comment untuk Tokyo
    Hongkong CURA Healthcare Center     29/01/2024      Ini comment untuk Hongkong
    Seoul CURA Healthcare Center        24/02/2024      Ini comment untuk Seoul

*** Keywords ***
Scenario Outline Create a new appointment
    [Arguments]     ${facility}     ${visitDate}    ${comment}
    Given User login
    When User choose Facility ${facility}
    And User choose Healthcare Program
    And User choose Visit Date ${visitDate}
    And User input Comment ${comment}
    And User click Book Appointment button
    Then Appointment has been created