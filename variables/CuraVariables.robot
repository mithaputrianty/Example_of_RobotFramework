*** Variables ***

#Global variable for OpenMRS Website

#Scalar
# base url
${baseUrl}      https://katalon-demo-cura.herokuapp.com/profile.php#login

#Dictionary
# valid credential
&{validCredential}      username=John Doe    password=ThisIsNotAPassword
# element
&{loginField}       username=id:txt-username    password=id:txt-password
&{loginButton}      loginBtn=id:btn-login
&{loginElement}     elementVisible=id:combo_facility