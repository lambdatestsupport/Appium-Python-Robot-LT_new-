*** Settings ***
Library  AppiumLibrary

*** Variables ***

&{options}          platformName=${platformName}  platformVersion=${version}  deviceName=${deviceName}  visual=${visual} network=${network}  isRealMobile=${isRealMobile}  app=lt://proverbial-android  name=RobotFramework Lambda Test  automationName=${automationName}   w3c=${w3c}  deviceOrientation=${deviceOrientation}
&{CAPABILITIES}     LT:Options=&{options}
${REMOTE_URL}       https://{username}:{acesskey}@mobile-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***

Open test app
    [Timeout]   ${TIMEOUT}    
    Open Application   ${REMOTE_URL}   &{CAPABILITIES}

Close test app
    Close All Applications