*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot

*** Test Cases ***
TC01
    ${hearders}           Create dictionary     x-api-key=reqres-free-v1
    ${response}           RequestsLibrary.Get    https://reqres.in/api/users/12   headers=${hearders}
    api_feature.Check response all key should match with expected value    ${response.json()}     ${api_test_data.TC01.keys_value}    ${api_test_data.TC01.checked_value}