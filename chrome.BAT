@echo off
title Running test on chrome
color a
echo Tell me at vuthelinh@gmail.com if you have any question
PAUSE
rmdir /Q /S .\src\test\resources\features\
mkdir .\src\test\resources\features\
rmdir /Q /S C:\baymax_report
xcopy  C:\baymax_workspace .\src\test\resources\features /s /e /y /i
mvn clean verify serenity:aggregate -U -Dwebdriver.driver=chrome -Dwebdriver.chrome.driver=./driver/chromedriver.exe