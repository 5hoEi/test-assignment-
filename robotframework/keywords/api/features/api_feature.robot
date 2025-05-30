*** Keywords ***
Check response all key should match with expected value
    [Arguments]     ${json}    ${keys_check}    ${checked_value}
    log   ${keys_check}
    ${range}    BuiltIn.Evaluate    len(${keys_check})
    FOR   ${index}  IN RANGE   ${range}
        Should be equal    ${json}[data][${keys_check}[${index}]]    ${checked_value[${index}]}
    END

Check response should be empty json
    [Arguments]     ${response}
    BuiltIn.Evaluate      ${response} == "{}"