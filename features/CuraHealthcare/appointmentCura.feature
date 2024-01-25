#Author: putriantyf@gmail.com

Feature: Appointment

Scenario Outline: Create a new appointment
  Given User login
  #And User redirect to Appointment page
  When User choose Facility <facility>
  And User choose Healthcare Program
  And User choose Visit Date
  And User input Comment <comment>
  And User click Book Appointment button
  Then Appointment has been created

  Examples: 
    | facility  | comment |
    | Tokyo CURA Healthcare Center | ini adalah comment 1 |
    | Hongkong CURA Healthcare Center | ini adalah comment 2 |
    | Seoul CURA Healthcare Center | ini adalah comment 3 |
    # | Tokyo CURA Healthcare Center | Medicare | 26/01/2024 | ini adalah comment 1 |
    # | Hongkong CURA Healthcare Center | Medicaid | 26/02/2024 | ini adalah comment 2 |
    # | Seoul CURA Healthcare Center | None | 26/03/2024 | ini adalah comment 3 |
     