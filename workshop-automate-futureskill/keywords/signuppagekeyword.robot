*** Settings ***
Library    SeleniumLibrary
Resource    commonkeyword.robot

*** Keywords ***
User sign up to future skill platform with
    [Arguments]    ${email}    ${Firstname}    ${Lastname}    ${mobileno}    ${password}
    commonkeyword.Wait until element is ready then click element    xpath=//*[@id="__next"]/div[2]/div/div[1]/div[1]/div/div[2]/div[2]/div[2]/button[2]
    commonkeyword.Wait until element is ready then input text    name=email    ${email}    
    commonkeyword.Wait until element is ready then input text    name=firstName    ${Firstname}
    commonkeyword.Wait until element is ready then input text    name=lastName    ${Lastname}
    commonkeyword.Wait until element is ready then input text    name=phoneNumber    ${mobileno}    
    commonkeyword.Wait until element is ready then input text    name=newPassword    ${password}    
    commonkeyword.Wait until element is ready then input text    name=confirmPassword    ${password}    
    commonkeyword.Wait until element is ready then click element    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input
    commonkeyword.Wait until element is ready then click element    xpath=//*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button
    commonkeyword.Wait until page contains element then verify text   ${expected_txt}
