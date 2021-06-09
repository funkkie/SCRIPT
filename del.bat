@echo off
del /s /q "Z:\*.*"
for /d %%p in ("Z:\*.*") do rmdir "%%p" /s /q
exit