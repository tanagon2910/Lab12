*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${COMMISSIONPROBLEM}    https://www.google.com/

*** Test Cases ***

Open Event CommissionProblem Page:
    Open Browser    ${COMMISSIONPROBLEM}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
	Location Should Be    ${COMMISSIONPROBLEM}
