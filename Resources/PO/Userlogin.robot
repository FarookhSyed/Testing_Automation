*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary
Resource  ../Globalvariables/xpath.robot
*** Keywords ***
Check For Email Error Message
    wait until page contains    Forgot
Check For home page Message
    wait until page contains    Welcome to Veridic Solutions
Check For Email valid Message
     wait until page contains    Invalid email address



