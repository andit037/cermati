*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${inputEmailOnRegisterPage}                       xpath=//input[@id='email']
${inputNoHPOnRegisterPage}                        xpath=//input[@id='mobilePhone']
${inputKataSandiOnRegisterPage}                   xpath=//input[@id='password']
${inputUlangiKataSandiOnRegisterPage}             xpath=//input[@id='confirmPassword']
${inputNamaDepanOnRegisterPage}                   xpath=//input[@id='firstName']
${inputNamaBelakangOnRegisterPage}                xpath=//input[@id='lastName']
${inputKabupatenKotaOnRegisterPage}               xpath=//input[@id='cityAndProvince']
${buttonDaftar}                                   xpath=//button[@data-button-name='register-new']
${textKodeOTPPage}                                xpath=//div/div/div[@class='text-center' and text()='Pilih metode verifikasi untuk mengirim kode OTP']



*** Keywords ***
user is on register page 
    Wait Until Element Is Visible              ${inputEmailOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputEmailOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputNoHPOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputKataSandiOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputUlangiKataSandiOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputNamaDepanOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputNamaBelakangOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${inputKabupatenKotaOnRegisterPage}
    Run Keyword And Continue On Failure        Element Should Be Visible        ${buttonDaftar}

user input email for register
    [Arguments]    ${userEmail}
    Wait Until Element Is Visible            ${inputEmailOnRegisterPage}
    Clear Element Text                       ${inputEmailOnRegisterPage}
    ${random}                                Evaluate                           random.randint(1, 1000)        modules=random
    ${index}                                 Catenate                           ${random}
    Input Text                               ${inputEmailOnRegisterPage}        ${userEmail}+${index}@gmail.com

user input noHP for register
    [Arguments]    ${userNoHP}
    Wait Until Element Is Visible            ${inputNoHPOnRegisterPage}
    Clear Element Text                       ${inputNoHPOnRegisterPage}
    Input Text                               ${inputNoHPOnRegisterPage}        ${userNoHP}


user input kataSandi for register
    [Arguments]    ${userKataSandi}
    Wait Until Element Is Visible            ${inputKataSandiOnRegisterPage}
    Clear Element Text                       ${inputKataSandiOnRegisterPage}
    Input Text                               ${inputKataSandiOnRegisterPage}        ${userKataSandi}

user input ulangiKataSandi for register
    [Arguments]    ${userUlangKataSandi}
    Wait Until Element Is Visible            ${inputUlangiKataSandiOnRegisterPage}
    Clear Element Text                       ${inputUlangiKataSandiOnRegisterPage}
    Input Text                               ${inputUlangiKataSandiOnRegisterPage}        ${userUlangKataSandi}

user input namaDepan for register
    [Arguments]    ${userNamaDepan}
    Wait Until Element Is Visible            ${inputNamaDepanOnRegisterPage}
    Clear Element Text                       ${inputNamaDepanOnRegisterPage}
    Input Text                               ${inputNamaDepanOnRegisterPage}        ${userNamaDepan}

user input namaBelakang for register
    [Arguments]    ${userNamaBelakang}
    Wait Until Element Is Visible            ${inputNamaBelakangOnRegisterPage}
    Clear Element Text                       ${inputNamaBelakangOnRegisterPage}
    Input Text                               ${inputNamaBelakangOnRegisterPage}        ${userNamaBelakang}

user input kotaKabupaten for register
    [Arguments]    ${userKotaKabupaten}
    Wait Until Element Is Visible            ${inputKabupatenKotaOnRegisterPage}
    Clear Element Text                       ${inputKabupatenKotaOnRegisterPage}
    Input Text                               ${inputKabupatenKotaOnRegisterPage}        ${userKotaKabupaten}
    Sleep    5

user click button daftar
    Wait Until Element Is Visible        ${buttonDaftar}
    Click Element                        ${buttonDaftar}
    Sleep    5

 user is on confirmation page
    Run Keyword And Continue On Failure        Element Should Be Visible        ${textKodeOTPPage}