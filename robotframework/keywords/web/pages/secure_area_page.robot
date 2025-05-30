*** Keywords ***
secure_area_page.Verify popup login success should be visible
    common.Click element after replace string in locator  ${common_locator.lbl_alert_message}    ${secure_page.popup_login}

secure_area_page.Click logout button
    common.Click element when element is visble     ${secure_locator.btn_logout}