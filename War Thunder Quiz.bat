@echo off
setlocal enabledelayedexpansion

set /a score=0

:: Questions and answers
set questions[0]=What type of game is War Thunder?
set answers[0]=Combat simulation
set questions[1]=In which year was War Thunder first released?
set answers[1]=2012
set questions[2]=Which game developer created War Thunder?
set answers[2]=Gaijin Entertainment
set questions[3]=What types of vehicles can you control in War Thunder?
set answers[3]=Aircraft, tanks, ships
set questions[4]=Can you play War Thunder in both single-player and multiplayer modes?
set answers[4]=Yes
set questions[5]=Which era of warfare is prominently featured in War Thunder?
set answers[5]=World War II
set questions[6]=What currency is used for purchasing vehicles and upgrades in War Thunder?
set answers[6]=Silver Lions
set questions[7]=What is the premium currency in War Thunder?
set answers[7]=Golden Eagles
set questions[8]=What is the name of the mode where players capture and hold strategic points?
set answers[8]=Domination
set questions[9]=Can you customize your vehicles in War Thunder?
set answers[9]=Yes
set questions[10]=What is the purpose of the "Warbonds" in War Thunder?
set answers[10]=To purchase rewards
set questions[11]=What type of event allows players to earn special rewards in War Thunder?
set answers[11]=Special events
set questions[12]=What are "Crew Points" used for in War Thunder?
set answers[12]=Upgrading crew skills
set questions[13]=Which platform is NOT supported by War Thunder?
set answers[13]=Nintendo Switch
set questions[14]=What is the highest rank you can achieve in War Thunder?
set answers[14]=Rank VII
set questions[15]=What does the "Research Points" (RP) system in War Thunder do?
set answers[15]=Unlock new vehicles
set questions[16]=Can you use War Thunder's replay system to review battles?
set answers[16]=Yes
set questions[17]=Is there a VR mode available in War Thunder?
set answers[17]=Yes
set questions[18]=What is the name of the mode that focuses on realistic flight and vehicle physics?
set answers[18]=Simulator battles
set questions[19]=Which country is NOT represented in War Thunder?
set answers[19]=Brazil

:: Loop through questions
for /l %%i in (0,1,19) do (
    echo !questions[%%i]!
    set /p answer=Answer: 
    if /i "!answer!"=="!answers[%%i]!" (
        echo Correct!
        set /a score+=1
    ) else (
        echo Wrong! The correct answer is: !answers[%%i]!
    )
)

echo.
echo You scored !score! out of 20.
pause
