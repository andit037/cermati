*** Settings ***
Resource           ../Config/${env}.robot
Resource           ../TestScenario/RegisterAccountTest.robot
Suite Setup        Begin Web Test
Suite Teardown     End Web Test

*** Test Cases ***
verify user can register sucessfully
    [Documentation]    This scenario for positive scenario Cermati register page
    [Tags]             positive    login
    [Template]         Register New Account
    testandit    085693464321    fguu235HI!    fguu235HI!    andit    Rama    KOTA JAKARTA PUSAT