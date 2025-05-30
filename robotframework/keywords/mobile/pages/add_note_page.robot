*** Keywords ***
Add note title
    [Arguments]     ${title}
    AppiumLibrary.Wait until element is visible     ${add_note_mobile.txt_note_title}
    AppiumLibrary.Clear text    ${add_note_mobile.txt_note_title}
    common_mobile.Input text to element when visible    ${add_note_mobile.txt_note_title}      ${title}

Click add button
    common_mobile.Tap element when visible      ${add_note_mobile.btn_add_note} 