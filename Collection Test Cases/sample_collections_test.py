*** Settings ***
Library    BuiltIn
Library    Collections

*** Keywords ***
Logging List Variables
    [Arguments]    @{lst_var}
    Log Many    @{lst_var}
    
Logging Dictionary Variables
    [Arguments]    &{dict_var}
    Log Many    &{dict_var}
    
Logging List Variables With Loop
    [Arguments]    @{var}
    FOR    ${item}    IN    @{var}
        Log    ${item}
    END
    
Logging Dict Variables With Loop
    [Arguments]    &{var}
    FOR    ${item}    IN    &{var}
        Log    ${item}
    END
    
*** Test Cases ***
Create Sample List
    @{sample_list}    Create List    1    2    3    1    2
    Logging List Variables    @{sample_list}
    Logging List Variables With Loop     @{sample_list}
    ${count}    Count Values In List     ${sample_list}    1
    Log    ${count}
    
Create Sample Dict
    &{sample_dict}    Create Dictionary    name=pavan    age=27
    Logging Dictionary Variables    &{sample_dict}
    Logging Dict Variables With Loop    &{sample_dict}
    
    
    
