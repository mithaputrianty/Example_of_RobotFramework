*** Variables ***

#Global variable for OpenMRS Website

#Scalar
# base url
${baseUrl}      https://demo.openmrs.org/openmrs/login.htm

#List
# valid credential
@{validCredential}      Admin   Admin123

#Dictionary
# element
&{loginField}       username=id:username    password=id:password
&{loginButton}      location=id:Inpatient Ward      loginBtn=id=loginButton
&{loginElement}     elementVisible=id:coreapps-activeVisitsHomepageLink-coreapps-activeVisitsHomepageLink-extension