*** Settings ***
Library    SeleniumLibrary
Resource   Resources/StoreResources/Keywords.robot


*** Keywords ***
Open website
  open browser  ${url}  ${browser}
  MAXIMIZE BROWSER WINDOW
