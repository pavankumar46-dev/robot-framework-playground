*** Settings ***
Library    BuiltIn

*** Keywords ***
Log Incoming Value
    [Arguments]    ${val1}
    Log    ${val1}
    
Log Incoming Value To Console
    [Arguments]    ${val1}
    Log To Console    ${val1}
    
*** Test Cases ***
Verify Basic Functions
    ${var1}    Set Variable    samplename
    Run Keyword If    '${var1}' == 'samplename'    Log Incoming Value    ${var1}
    Log Incoming Value To Console    ${var1}
