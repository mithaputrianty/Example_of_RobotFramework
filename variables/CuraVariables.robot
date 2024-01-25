#Author: putriantyf@gmail.com

*** Variables ***

#Global variable for Cura Healthcare Website

#Scalar
## LOGIN
# base url
${baseUrl}      https://katalon-demo-cura.herokuapp.com/profile.php#login
${errorMessageLogin}    Login failed! Please ensure the username and password are valid.
${appointmentCreated}   Appointment Confirmation

#Dictionary
## LOGIN
# valid credential
&{validCredential}      username=John Doe    password=ThisIsNotAPassword
&{invalidCredential}    username=John Does      password=ThisIsAPassword

# element
## LOGIN
&{loginField}       username=id:txt-username    password=id:txt-password
&{loginButton}      loginBtn=id:btn-login
&{loginElement}     elementVisible=id:combo_facility
## APPONTMENT
&{appointmentField}                 facility=id:combo_facility  visitDate=id:txt_visit_date     chooseDate=class:day    comment=id:txt_comment
&{appointmentHealthcareProgram}     medicare=id:radio_program_medicare   medicaid=id:radio_program_medicaid   none=id:radio_program_none   
&{appointmentButton}                appointmentBtn=id:btn-book-appointment