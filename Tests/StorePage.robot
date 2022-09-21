*** Settings ***
Library          SeleniumLibrary
Resource         ../Resources/StoreResources/Keywords.robot
Resource         ../Resources/StoreResources/Variables.robot


*** Variables ***
${url}   https://atid.store/store/
${browser}   chrome

*** Test Cases ***
TC1
  Open website
  select from list by index   orderby   3
  sleep                10 s
  close browser


