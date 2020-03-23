*** Settings ***
Documentation  test case verifies User Registration process and test all fields present in register user page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
TC_TM_01
    [Documentation]     This test case is to test the pdf and excel file download
    test the pdf and excel file download


