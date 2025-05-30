*** Keywords ***
Tap element when visible
    [Arguments]     ${locator}
    AppiumLibrary.Wait until element is visible    ${locator}
    AppiumLibrary.Tap    ${locator}

Input text to element when visible
    [Arguments]     ${locator}      ${text}
    AppiumLibrary.Wait until element is visible     ${locator}
    AppiumLibrary.Input text   ${locator}      ${text}

Swipe element from relative position
    [Arguments]     ${locator}
    AppiumLibrary.Wait until element is visible     ${locator}
    ${location}   AppiumLibrary.Get element location      ${locator}
    ${size}      AppiumLibrary.Get element size          ${locator}
    ${width}      BuiltIn.Evaluate      ${size}[width]/2
    ${height}      BuiltIn.Evaluate      ${size}[height]/2
    ${start_x}      BuiltIn.Evaluate        ${location}[x] + ${width}
    ${start_y}      BuiltIn.Evaluate        ${location}[y] + ${height}
    AppiumLibrary.Swipe     ${start_x}      ${start_y}      ${location}[x]      ${start_y}

Verify element is visible with replace String
    [Arguments]     ${locator}    ${string}
    ${new_locator}    String.Replace string       ${locator}    ***string***   ${string}
    AppiumLibrary.Wait until element is visible     ${new_locator}

Tap element is visible with replace String
    [Arguments]     ${locator}    ${string}
    ${new_locator}    String.Replace string       ${locator}    ***string***   ${string}
    common_mobile.Tap element when visible       ${new_locator}