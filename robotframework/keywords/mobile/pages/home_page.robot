*** Keywords ***
Tap add note button
    common_mobile.Tap element when visible  ${home_mobile.btn_add_note}

Verify page is home page
    AppiumLibrary.Wait until element is visible     ${home_mobile.lbl_home_page}      timeout=${GLOBAL_TIMEOUT}

Verify note should be visible
    [Arguments]     ${note_title}
    common_mobile.Verify element is visible with replace String  ${home_mobile.lbl_note_title}  ${note_title}

Verify there is no note
    AppiumLibrary.Wait until element is visible     ${home_mobile.lbl_no_note}

Tap note by note title
    [Arguments]     ${note_title}
    common_mobile.Tap element is visible with replace String  ${home_mobile.lbl_note_title}  ${note_title}

Delete note by swipe left
    [Arguments]     ${note_title}
    ${new_locator}  String.Replace string    ${home_mobile.lbl_note_title}   ***string***   ${note_title}
    common_mobile.Swipe element from relative position    ${new_locator}