*** Settings ***

Library  SeleniumLibrary
Resource  ../Resources/PO/Userlogin.robot
Resource  ../Globalvariables/BoundaryVariables.robot
Resource  ../Globalvariables/xpath.robot
Resource  ../Tests/TC_TP02.robot
*** Keywords ***
#login page
#test the user registration page under lower boundary conditions
#Input Text  ${email}    ${Upper Boundary String}
test the user login page under Upper boundary conditions
        Input Text  ${email}    ${Upper Boundary String}
        Input Password  ${pwd}  ${upper boundary number}
        Click Element   ${submit}
        Check For Email Error Message
test the user login page under mixed-match conditions
        Input Text  ${email}    ${Mixed Match String}
        Input Password  ${pwd}  ${Mixed Match String}
        Click Element   ${submit}
        Check For Email Error Message
test the user login page under wrong data conditions
        Input Text  ${email}    &{Realdata}[Email]
        Input Password  ${pwd}  &{Realdata}[Password]
        Click Element   ${submit}
        Handle Alert
test the user login page under practical data conditions
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep  5s
        Check For home page Message

                                                                #template
test the Invite new user Upper boundary conditions
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${temp}
        Click Element   ${done}
        Click Element   xpath=${ok}
        Check For Email valid Message

test the all tabs in employee page
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${emp}
        Click Element   ${active}
        sleep  1s
        Click Element   ${inactive}
        sleep  1s
        Click Element   ${suspended}
        sleep  1s
        Click Element   ${inactive}
        Click Element   ${selected}
        Click Element   ${inactive}
#        sleep  5s
#        Wait Until Element Is Visible   ${activation}
#        Select Checkbox     ${activation}
#        sleep   5s
#        Click Element   ${more}
         Click Element   ${active}
         Click Element   ${id}
         Click Element   ${promote}
         sleep  10s
         Click Element   ${promote}
         Click Element   ${suspend}
         sleep  10s
         Click Element   ${suspend}
         Click Element   ${print}
         sleep  10s
         Set Focus To Element   //*[@id="profile"]/div[1]/img
         click Element   ${file}
         Choose file     ${file}   D:\Testing\flairtech-vs\Testing\upload\1.jpg

test the pdf and excel file download
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element   ${task}
        Click Element   ${pdf}
        sleep   2s
        Click Element   ${excel}
        Sleep  5s
        Click Element  ${newproj}
        sleep  2s
        Input Text  ${pname}    &{Realdata}[FirstName]
        click element  xpath=${status}
        sleep  5s
        Select From List By Value  xpath=/html/body/div[2]/div/div/div/form/div[1]/div[2]/select  Closed
        sleep  5s
        input text  //*[@id="project_startdate"]  11012


test the create a template to a new user
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element  ${invite}
        Click Element  ${newtemplate1}
        Input Text  xpath=${inputnewtemplate}  &{personalinfo}[Email]
        Click Element  xpath=${submitok}
        sleep  5s
        Click Element  ${account}
        Click Element  ${logout}
test is to fill the personal information
#        Input Text  ${email}    &{admin_Logins}[Email]
#        Input Password  ${pwd}  &{admin_Logins}[Password]
#        Click Element   ${submit}
#        sleep   5s
#        Click Element  ${account}
#        Click Element  ${logout}
        goto  https://flairtech-f6aa2.firebaseapp.com/dashboard/console/postform/gavirinaresh15@gmail.com
        sleep  2s
        Input Text  //*[@id="levelOneAuthPass"]  310612
        Click Element  ${passsubmition}
        #Click Element  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/div[1]/label
        #Choose File  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/div[1]/label  C:\Users\hai\OneDrive\Desktop
        sleep  5s
        Input Text  ${name}    &{personalinfo}[Firstname]
        Input Text  ${mname}    &{personalinfo}[Middlename]
        Input Text  ${lname}    &{personalinfo}[Lastname]
        Input Text  ${phonenumber}    &{personalinfo}[Phoneno]
        Select From List By Value  xpath=//*[@id="PIb_depart"]  Java
        Select From List By Value  xpath=//*[@id="PIb_marital"]  married
        Input Text  //*[@id="b_MA_LINE1"]  TESTING
        Input Text  //*[@id="b_MA_LINE2"]  ISDONE
        Input Text  //*[@id="b_MA_COUNTRY"]  India
        Input Text  //*[@id="b_MA_CITY"]  tadepalligudem
        Input Text  //*[@id="b_MA_STATE"]  andhra
        Input Text  //*[@id="b_MA_ZIP"]  534101
        Input Text  //*[@id="EMCe_name"]  testing
        Input Text  //*[@id="EMCe_name"]  7894561230
        Input Text  //*[@id="EMCe_mail"]  gavirinaresh
        #Click Element  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/label/button
        Input Text  //*[@id="b_EH_CLIENT"]  tests
        Input Text  //*[@id="b_EH_CLIENTADD"]  havcvahjhsdhvskhvdjvjHSVDJHJJH235154
        Input Text  //*[@id="b_EH_CLIENTMAIL"]  gareshvhhvb
        Input Text  //*[@id="b_EH_VENDORNAME"]  dhfvxfdghs
        Input Text  //*[@id="b_EH_VENDORPHONE"]  7894561123
        Input Text  //*[@id="b_EH_VENDORMAIL"]  hgasdhgasvgh
        Input Text  //*[@id="b_EH_FROM"]  21032000
        Input Text  //*[@id="b_EH_TO"]  3052019
        Input Text  //*[@id="b_WAtype"]  custome
        Input Text  //*[@id="b_WAnum"]  7894561230
        Input Text  //*[@id="b_WAb_issuedate"]  9032001  result_format=%d/%m/%Y
        Input Text  //*[@id="b_WAb_expdate"]  03022000
        #Click Element  //*[@id="root"]/div/div[2]/div[2]/div/div/div/div/form/div[1]/label/input
        Input Text  //*[@id="setPassword"]  12345678
        Input Text  //*[@id="confirmPassword"]  12345678
test is to fill the template
        Input Text  ${email}    &{admin_Logins}[Email]
        Input Password  ${pwd}  &{admin_Logins}[Password]
        Click Element   ${submit}
        sleep   5s
        Click Element  //*[@id="root"]/div/div[2]/div[1]/div/nav/div/ul/div[1]/a[6]
        Click Element  //*[@id="onBoard"]/div[1]/button
        Sleep  2s
        Click Element  //*[@id="onBoard"]/div[1]/button
        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        sleep  2s
        #Click Element  //*[@id="onBoard"]/div[1]/button
        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]
        sleep  2s
        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/div/div/div/div/button
        Input Text  //*[@id="newLabel"]  testing
        Click Element  //*[@id="personalAppend"]
        Click Element  //*[@id="onBoard"]/div[1]/button
        sleep  5s
        Click Element  //*[@id="onBoard"]/div[1]/button
        click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
        sleep  2s
        click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
        sleep  2s
        Unselect Checkbox  id='b_tested'

#        sleep   5s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[1]/button
#        sleep  2s

#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/button
#        sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  tests
#        Click Element  //*[@id="mailAddressAppend"]
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        sleep  2s
#        Click Element  //*[@id="onBoard"]/div[2]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[2]/button
#        sleep  2s
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/button
#        sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/div/div/div/div/button
#        Input Text   //*[@id="newLabel"]  tester
#        Click Element  //*[@id="contactAppend"]
#        Click Element  //*[@id="onBoard"]/div[3]/button
#        sleep  2s
#        Click element  //*[@id="onBoard"]/div[3]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[3]/button
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/button
#        sleep  2s
#        Click element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  testing
#        Click Element  //*[@id="employmentAppend"]
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[4]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[4]/button
#
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/div/div/div/div/button
#        Input Text  //*[@id="newLabel"]  tested
#        Click Element  //*[@id="workAuthAppend"]
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Sleep  2s
#        Click Element  //*[@id="onBoard"]/div[5]/button
#        Click Element  //*[@id="root"]/div/div[2]/div[2]/div[2]/div/div[1]/div/div[5]/button
#        sleep  2s
#        Click Element  //*[@id="onBoard"]/div[6]/button
#        Input Text  xpath=/html/body/div[2]/div/div[2]/input[1]  done






