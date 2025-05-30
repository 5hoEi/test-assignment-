*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
# common_web.Open browser    ${test_web_url}
Test Setup   SeleniumLibrary.Open browser   url=${test_web_url}   browser=chrome
Test Teardown    SeleniumLibrary.Close browser

*** Test cases ***
TC01 Login successful with valid username password
    login_page.Verify login page is loaded and visible
    login_page.Input username  ${TC01.username}
    login_page.Input password  ${TC01.password}
    login_page.Click login button
    secure_area_page.Verify popup login success should be visible
    secure_area_page.Click logout button
    login_page.Verify popup logout success should be visible