@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"jruby-complete-1.7.12.jar" "C:/Users/swarup921/Desktop/hackathon/shoutout-ws/target/rubygems/bin/launchy" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"jruby-complete-1.7.12.jar" "%~dpn0" %*
