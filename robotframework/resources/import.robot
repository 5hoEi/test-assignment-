*** Settings ***
Library   DebugLibrary
Library   SeleniumLibrary
Library   String
Library   RequestsLibrary
Library   JSONLibrary
Library   Collections
Library   AppiumLibrary

### Pages
Resource  ${CURDIR}/../keywords/web/common.robot
Resource  ${CURDIR}/../keywords/web/pages/login_page.robot
Resource  ${CURDIR}/../keywords/web/pages/secure_area_page.robot

Resource  ${CURDIR}/../keywords/mobile/common_mobile.robot
Resource  ${CURDIR}/../keywords/mobile/pages/home_page.robot
Resource  ${CURDIR}/../keywords/mobile/pages/add_note_page.robot

### Locator
Resource  ${CURDIR}/../locators/web/login.robot
Resource  ${CURDIR}/../locators/web/secure_area_page.robot
Resource  ${CURDIR}/../locators/web/common.robot

Resource  ${CURDIR}/../locators/mobile/add_note.robot
Resource  ${CURDIR}/../locators/mobile/home.robot

### Features
Resource  ${CURDIR}/../keywords/api/features/api_feature.robot

### Setting
Variables   ${CURDIR}/settings/mobile/settings.yaml
Variables   ${CURDIR}/settings/web/settings.yaml

### Test data
Variables   ${CURDIR}/testdata/web/testdata.yaml
Variables   ${CURDIR}/testdata/api/testdata.yaml
Variables   ${CURDIR}/testdata/mobile/testdata.yaml

### Translation
Variables   ${CURDIR}/translation/web/en.yaml