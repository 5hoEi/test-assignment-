*** Keywords ***
Verify login page is loaded and visible
    SeleniumLibrary.Wait until element is visible    ${login_locator.lbl_login_page}
    SeleniumLibrary.Wait until element is visible    ${login_locator.lbl_login_form}

Input username
    [Arguments]    ${username}
    common.Input text to element when element is visible  ${login_locator.txt_username}  ${username}

Input password
    [Arguments]    ${password}
    common.Input text to element when element is visible  ${login_locator.txt_password}  ${password}

Click login button
    common.Click element when element is visble  ${login_locator.btn_login}

Verify popup logout success should be visible
    common.Verify element is visible after replace string in locator  ${common_locator.lbl_alert_message}    ${login_page.popup_logout}

Verify popup password invalid should be visible
    common.Verify element is visible after replace string in locator  ${common_locator.lbl_alert_error_message}  ${login_page.popup_invalid_password}

Verify popup username invalid should be visible
    common.Verify element is visible after replace string in locator  ${common_locator.lbl_alert_error_message}  ${login_page.popup_invalid_username}
