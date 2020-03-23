*** Settings ***

Library  SeleniumLibrary
Resource  ../Globalvariables/variables.robot

*** Keywords ***
commonsetup
    Open Browser   ${prod}  ${Chrome}
    Maximize Browser Window
commonteardown
    sleep  5s
    Close Browser

