J.A.R.V.I.S. - HOW TO INSTALL
=============================

TWO WAYS. PICK ONE.

1) NO INSTALLER (easiest, nothing can go wrong)
   Go back to the same GitHub build and download the artifact named
   "JARVIS V4.3.x Portable EXE". Extract it and double-click JARVIS.exe.
   Nothing is installed, nothing is registered, and it can be deleted anytime.

2) NORMAL INSTALL
   a. Right-click the .zip you downloaded and choose "Extract All".
      This matters: running the installer from inside the zip makes Windows
      Installer show "Preparing to install..." and then close with no error.
   b. Open the extracted folder.
   c. Double-click INSTALL_JARVIS.bat
   d. Choose Yes when Windows asks for administrator permission.
   e. Open J.A.R.V.I.S. from the Start menu.

   If it fails, INSTALL_JARVIS.bat writes jarvis_install_log.txt next to
   itself. The reason is in the last lines of that file.

ALREADY HAVE AN OLDER COPY?
   Open Settings > Apps > Installed apps, search for J.A.R.V.I.S. and
   uninstall EVERY entry you find, then install again. Your settings, memory
   and keys live in %LOCALAPPDATA%\JARVIS and are not touched.
