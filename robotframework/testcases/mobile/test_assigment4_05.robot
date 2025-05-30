*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
Test Setup       AppiumLibrary.Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    automationName=${AUTOMATION_NAME}    deviceName=${DEVICE_NAME}    unicodeKeyboard=${TRUE}    resetKeyboard=${TRUE}    app=${APP}    noReset=${FALSE}
Test Teardown    AppiumLibrary.Close application

*** Test Cases ***
TC02 Verify can delete note
    home_page.Verify page is home page
    home_page.Tap add note button
    add_note_page.Add note title    ${mobile_data.TC05.title}
    add_note_page.Click add button
    home_page.Delete note by swipe left  ${mobile_data.TC05.title}
    home_page.Verify there is no note