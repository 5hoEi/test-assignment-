*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot
# common_web.Open browser    ${test_web_url}
Test Setup   SeleniumLibrary.Open browser   url=${test_web_url}   browser=chrome
Test Teardown    SeleniumLibrary.Close browser

*** Test cases ***
TC01 Login successful with invalid password
    login_page.Verify login page is loaded and visible
    login_page.Input username  ${TC02.username}
    login_page.Input password  ${TC02.password}
    login_page.Click login button
    login_page.Verify popup password invalid should be visible