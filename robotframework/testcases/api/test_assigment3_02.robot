*** Settings ***
Resource  ${CURDIR}/../../resources/import.robot

*** Test Cases ***
TC02
    ${hearders}           Create dictionary     x-api-key=reqres-free-v1
    ${response}           RequestsLibrary.Get    https://reqres.in/api/users/1234   headers=${hearders}   expected_status=404
    api_feature.Check response should be empty json  ${response.json()} 