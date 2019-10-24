*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${COMMISSIONPROBLEM}    https://www.google.com/
${L}    www.cs.kku.ac.th


*** Test Cases ***

Open Event CommissionProblem Page:
    Open Browser    ${COMMISSIONPROBLEM}    ${BROWSER}
	Location Should Be    ${COMMISSIONPROBLEM}
	Input Text    q    ${L}
	Submit Form    tsf
	Page Should Contain    https://www.cs.kku.ac.th

	