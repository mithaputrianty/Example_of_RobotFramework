Feature: Login

Scenario: Login using valid credential
    Given User access Cura Healthcare website
	When User enter valid username and password
	And User click Login button on Cura Login page
	Then User redirect to Appointment page

Scenario Outline: Login using valid credential
    Given User access Cura Healthcare website
	When User enter invalid data <username> and <password>
	And User click Login button on Cura Login page
	Then User expect to see error message on Login page

    Examples: 
      | username | password |
      | JohnDoe	|	ThisIsNotAPassword |
      | John Doe | ThisIsPassword |