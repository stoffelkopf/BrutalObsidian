powershell Compress-Archive -path data, games, modules, credits.txt, GPL.txt -destination BrutalObsidian.zip
@ echo off
REN BrutalObsidian.zip BrutalObsidian.pk3

ECHO.
IF EXIST BrutalObsidian.pk3 (
	ECHO BrutalObsidian.pk3 built successfully
) ELSE (
	ECHO Build Failed!
	ECHO If you see an error about Compress-Archive not being a recognised command you may need to update your version of .NET and/or powershell
)
PAUSE
