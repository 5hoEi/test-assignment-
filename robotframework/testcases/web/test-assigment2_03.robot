*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
# common_web.Open browser    ${test_web_url}
Test Setup   SeleniumLibrary.Open browser   url=${test_web_url}   browser=chrome
Test Teardown    SeleniumLibrary.Close browser

*** Test cases ***
TC01 Login successful with invalid username password
    login_page.Verify login page is loaded and visible
    login_page.Input username  ${TC03.username}
    login_page.Input password  ${TC03.password}
    login_page.Click login button
    login_page.Verify popup username invalid should be visible