*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${expected_txt}    ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    5s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    5s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_txt}  
    Wait Until Keyword Succeeds    5x    5s    Page Should Contain    ${expected_txt}