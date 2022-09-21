*** Settings ***
Library          SeleniumLibrary
Resource         Resources/ContactUsResources/Variables.robot


*** Keywords ***
Open website
  open browser  ${url}  ${browser}
  MAXIMIZE BROWSER WINDOW
  set selenium speed     0.5 seconds

Verify txt title
   element text should be  ${idTxt}  Thanks for contacting us! We will be in touch with you shortly.

Verify error name message
  element text should be  ${idErrorMessageFieldName}  This field is required.

Verify error email message
  element text should be  ${idErrorMessageFieldEmail}  This field is required.

Verify error message
  element text should be  ${idErrorMessageFieldMessage}   This field is required.


Filling out the contactUs form correctly
  Click Element  ${idContactUsButton}
  INPUT TEXT     ${idNameField}  yemi
  INPUT TEXT     ${idSubjectField}  work
  INPUT TEXT     ${idEmailField}  yemi@ss.com
  INPUT TEXT     ${idMessageField}  ahhhh
  CLICK ELEMENT  ${idSendButton}

Filling out the contactUs form incorrectly when name field null
  Click Element  ${idContactUsButton}
  INPUT TEXT     ${idSubjectField}  work
  INPUT TEXT     ${idEmailField}  yemi@ss.com
  INPUT TEXT     ${idMessageField}  ahhhh
  CLICK ELEMENT  ${idSendButton}

Filling out the contactUs form incorrectly when email field null
  Click Element  ${idContactUsButton}
  INPUT TEXT     ${idNameField}  yemi
  INPUT TEXT     ${idSubjectField}  work
  INPUT TEXT     ${idMessageField}  ahhhh
  CLICK ELEMENT  ${idSendButton}

Filling out the contactUs form incorrectly when message field null
  Click Element  ${idContactUsButton}
  INPUT TEXT     ${idNameField}  yemi
  INPUT TEXT     ${idSubjectField}  work
  INPUT TEXT     ${idEmailField}  yemi@ss.com
  sleep                10 s
  CLICK ELEMENT  ${idSendButton}
