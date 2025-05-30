*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
Test Setup       AppiumLibrary.Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    automationName=${AUTOMATION_NAME}    deviceName=${DEVICE_NAME}    unicodeKeyboard=${TRUE}    resetKeyboard=${TRUE}    app=${APP}    noReset=${FALSE}
Test Teardown    AppiumLibrary.Close application

*** Test Cases ***
TC02 Verify cannot create note with empty title
    home_page.Verify page is home page
    home_page.Tap add note button
    add_note_page.Add note title    ${mobile_data.TC02.title}
    add_note_page.Click add button
    home_page.Verify there is no note