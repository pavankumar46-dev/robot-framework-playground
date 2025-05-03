*** Settings ***
Library    SSHLibrary

Suite Setup    Open Connection And Login
Suite Teardown    Close All Connections

*** Variables ***
${HOSTNAME}    0.0.0.0
${USERNAME}    root
${PASSWORD}    root

*** Keywords ***
Open Connection And Login
    Open Connection    ${HOSTNAME}
    Login    ${USERNAME}    ${PASSWORD}
   

*** Test Cases ***
Ssh Into Host And Execute Command
    ${out}    Execute Command    echo pavan
    Should Be Equal    pavan    ${out}
    
