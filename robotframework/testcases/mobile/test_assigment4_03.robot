*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
Test Setup       AppiumLibrary.Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    automationName=${AUTOMATION_NAME}    deviceName=${DEVICE_NAME}    unicodeKeyboard=${TRUE}    resetKeyboard=${TRUE}    app=${APP}    noReset=${FALSE}
Test Teardown    AppiumLibrary.Close application

*** Test Cases ***
TC03 Verify can edit note
    home_page.Verify page is home page
    home_page.Tap add note button
    add_note_page.Add note title    ${mobile_data.TC03.title}
    add_note_page.Click add button
    home_page.Verify note should be visible  ${mobile_data.TC03.title}
    home_page.Tap note by note title   ${mobile_data.TC03.title}
    add_note_page.Add note title    ${mobile_data.TC03.new_title}
    add_note_page.Click add button
    home_page.Verify note should be visible  ${mobile_data.TC03.new_title}
