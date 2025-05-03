*** Settings ***
Library    RequestsLibrary


*** Variables ***
${var}    http://www.google.com

*** Test Cases ***
Test Get Method
    Create Session    google    ${var}
    ${res}    Get On Session    google    /
    Status Should Be    200    ${res}
    Log    ${res.status_code}
