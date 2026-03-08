@echo off & python -x "%~f0" %* & goto :eof
# ==========================================================
# This script reads single column rows copied to clipboard and formats them to an SQL compatible list of varchars to clipboard
# How to set-up attach to toolbar:
#   0. Ensure you have Python installed
#   1. Adjust final characters of script based on interface used, ensure that the file postfix is ".bat" and not ".txt", then save and exit
#     a) Oracle, SF WebUI: change the ")" on last line to "')"
#     b) Pycharm: use the ")" on last line
#   2. Open file location in file explorer.
#   3. Right click and create shortcut.
#   4. Right click shortcut in file location. -> Properties -> Shortcut -> Target: Change to: cmd.exe /C "path-to-your-folder\db_rows_to_in_clause.bat"
#   5. Attach the shortcut to toolbar
# ==========================================================
import subprocess, tkinter
subprocess.run('clip', text=True, input="('" + tkinter.Tk().clipboard_get().replace('\n', "',\n'")[:-3] + ")")
#                                                                                                         ^^^ Change char here
