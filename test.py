#!/usr/bin/python3

# Display the OS version – if Windows, display the Windows details; 
# if executed on Linux, display the Linux details.
# linux OS version(hostnamectl)
# windows OS version(systeminfo | findstr /B /C:"OS Name" /C:"OS Version")

#x1 = $hostnamectl
#print(x1)


import platform
def creation_date(path_to_file):
    """
    Try to get the date that a file was created, falling back to when it was
    last modified if that isn't possible.
    See http://stackoverflow.com/a/39501288/1709587 for explanation.
    """
    if platform.system() == 'Windows':
        return os.path.getctime(path_to_file)
    else:
        stat = os.stat(path_to_file)
        try:
            return stat.st_birthtime
        except AttributeError:
            # We're probably on Linux. No easy way to get creation dates here,
            # so we'll settle for when its content was last modified.
            return stat.st_mtime
