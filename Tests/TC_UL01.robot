*** Settings ***
Documentation  test case verifies User Registration process and test all fields present in register user page with boundary values and mixed-match values
Resource  ../Resources/common.robot
Resource  ../Resources/keywords.robot
Library  SeleniumLibrary
Library  string
Test Setup      commonsetup
Test Teardown   commonteardown

*** Test Cases ***
#TC_LB_UL01
#    [Documentation]     This test case is to test the login page under lower boundary conditions
#    test the user login under lower boundary conditions
TC_UB_UL02
    [Documentation]     This test case is to test the login page under upper boundary conditions
    test the user login page under Upper boundary conditions
TC_MM_UR03
    [Documentation]  This test case is to test the login page under MIXED-MATCH conditions
    test the user login page under mixed-match conditions
TC_MM_UR04
    [Documentation]  This test case is to test the user registration page under wrong data conditions
    test the user login page under wrong data conditions
TC_AD_UL05
    [Documentation]  This test case is to test the user registration page by filling the all fields with practical data within the boundary values
    test the user Login page under practical data conditions

