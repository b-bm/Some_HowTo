# This is simple backUp PowerShell script, it delete OLD BackUp REGATA 
# and copy REGATA up to date directories.
# v.1.0 - 17.07.2014
# SOME BUG - in folder ZAPLATI mist 4 files !!!

# First DELETE Regata 1 and 2 BackUps
# some examples: 
# remove-item some_name | Where { $_.PSIsContainer } #  Delete only a folder called some_name
# remove-item some_name | Where { ! $_.PSIsContainer } # Delete only a file called some_name
# Aliases : rm ; rmdir ; ri

# This output some string text
write-host "This is simple backUp PowerShell script. 
It delete OLD BackUp REGATA and copy REGATA up to date directories." -foregroundcolor Red -backgroundcolor white

write-host "Task DELETE Regata 1 BEGIN !!!" -foregroundcolor Red -backgroundcolor white
Remove-Item "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft" -recurse -force

write-host "Task DELETE Regata 2 BEGIN !!!" -foregroundcolor Red -backgroundcolor white
Remove-Item "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft" -recurse -force

# This output some string text
write-host "ALL DELETE Tasks are complete !!!" -foregroundcolor Red -backgroundcolor white

# Then COPY Up to Date Regata directories
# some examples:
# Copy-Item C:\work -destination C:\some_folder\work -recurse
# The -recurse option ensures any subdirectories will be copied intact. 
# The -container parameter is set to true by default, this preserves the directory structure. 
# The work folder will be created if it does not already exist in destination location.
# Aliases : cp ; cpi

# This output some string text
write-host "Task COPY Regata 1 begin !!!" -foregroundcolor Red -backgroundcolor white
Copy-Item "D:\KSoft" -destination "D:\Arhiv\Arh_REGATA\REGATA_1_D\Regata1\KSoft" -recurse -force

# This output some string text
write-host "Task COPY Regata 2 begin !!!" -foregroundcolor Red -backgroundcolor white
Copy-Item "E:\KSoft" -destination "D:\Arhiv\Arh_REGATA\REGATA_2_E\Regata2\KSoft" -recurse -force

# This output some string text
write-host " ALL Tasks DONE !!!" -foregroundcolor Red -backgroundcolor white

