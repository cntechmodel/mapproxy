
:: Install pyWin32 extensions. This should be installed into the core python
:: install, not the virtualenv
C:\Python27\Scripts\pip.exe" install "%~dp0\..\installers\wheels\pywin32-219-cp27-none-win32.whl"
C:\Python27\python.exe C:\Python27\Scripts\pywin32_postinstall.py -install

:: Install ISAPI_WSGI
"%~dp0\..\env\Scripts\pip.exe" install "%~dp0\..\installers\wheels\isapi_wsgi-0.4.2-py2-none-any.whl"
