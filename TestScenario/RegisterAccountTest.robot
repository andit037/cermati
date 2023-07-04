*** Settings ***
Resource    ../PageObject/RegisterAccountPage.robot

*** Keywords ***
Register New Account    
    [Arguments]    ${userEmail}    ${userNoHP}    ${userKataSandi}    ${userUlangKataSandi}    ${userNamaDepan}    ${userNamaBelakang}    ${userKotaKabupaten}
    Given user is on register page
    When user input email for register                ${userEmail}
    And user input noHP for register                  ${userNoHP}
    And user input kataSandi for register             ${userKataSandi}
    And user input ulangiKataSandi for register       ${userUlangKataSandi}
    And user input namaDepan for register             ${userNamaDepan}    
    And user input namaBelakang for register          ${userNamaBelakang}
    And user input kotaKabupaten for register         ${userKotaKabupaten}
    And user click button daftar
    Then user is on confirmation page


 