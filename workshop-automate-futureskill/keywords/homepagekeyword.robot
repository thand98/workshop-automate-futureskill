*** Settings ***
Library    SeleniumLibrary
Resource    commonkeyword.robot

*** Keywords ***
future skill should display home page and dispaly message as
    commonkeyword.Wait until page contains element then verify text    ${expected_txt} 

user cancle to sign up
    commonkeyword.Wait until element is ready then click element    xpath=//*[@id="__next"]/div[2]/div/div[3]/div/div
    