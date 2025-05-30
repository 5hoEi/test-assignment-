*** Keywords ***
Input text to element when element is visible
    [Arguments]    ${locator}     ${input_text}
    [Documentation]     This keyword will be use for input text to an element that need sometime to load
    ...                 To prevent flaky by robot trying to input 
    SeleniumLibrary.Wait until element is visible    ${locator}     timeout=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Input text    ${locator}   ${input_text}

Click element when element is visble
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}     timeout=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Click element    ${locator}

Click element after replace string in locator
    [Arguments]     ${locator}      ${string}
    [Documentation]     This keyword will replace ***string*** with ${string} and then verify element is visible
    ${replace_string}   String.Replace string    ${locator}     ***string***   ${string}
    common.Click element when element is visble  ${replace_string}

Verify element is visible after replace string in locator
    [Arguments]     ${locator}      ${string}
    [Documentation]     This keyword will replace ***string*** with ${string} and then verify element is visible
    ${replace_string}   String.Replace string    ${locator}     ***string***   ${string}
    SeleniumLibrary.Wait until element is visible     ${replace_string}