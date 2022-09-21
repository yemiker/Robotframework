*** Settings ***
Library          SeleniumLibrary
Resource         ../Resources/ContactUsResources/Variables.robot
Resource         ../Resources/ContactUsResources/Keywords.robot


*** Test Cases ***
TC1
  Open website
  Filling out the contactUs form correctly
  Verify txt title
  close browser

TC2
  Open website
  Filling out the contactUs form incorrectly when name field null
  Verify error name message
  close browser

TC3
  Open website
  Filling out the contactUs form incorrectly when email field null
  Verify error email message
  close browser

#TC4
#  Open website
#  Filling out the contactUs form incorrectly when message field null
#  Verify error message
#  close browser




