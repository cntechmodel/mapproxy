MapProxy setup
==============
The aim of this collection of scripts is to provide a full automatic installation of MapProxy on Windows. The specific requirements are:
* It targets Windows 7 Pro 64bit.
* It must install silently (no interaction) including silent installation of all dependencies.
* It should deploy MapProxy to a production web server.
* Ideally (though not essential) it should not need to download anything from the internet during the install process. The more that it can install from local files the better.
* At present GDAL is not included in the installation.

Dependencies
-----------
* Python2.7 32-bit. Assumed location ```C:\Python27```
* Curl. Only required for the ```fetch_mapproxy_and_dep_installers``` script. Assumed location ```C:\Program Files (x86)\Git\bin\curl.exe```

Other dependancies(eg individual Python libaries) are resolved by the process below.

### Fetching the install files
To allow the installation process to occur without internet access all of the required files can be download in advance by using the script ```fetch_mapproxy_and_dep_installers.cmd```.

It necessary the fetch script can be run on a seperate machine and then transfered to the target machine using ```deploy_to_testing.cmd```. The paths in this may need to be adjusted to suit your needs.

Installation
------------
* Copy the entire directory tree to the target machine.
* run ```install_mapproxy.cmd```

### Notes about the installation process
The install script will create a python virtualenv in the folder ```env```.

If there is not a C complier available to ```easy_install``` it is not able to install Shapely correctly. Therefore Shapely and some other dependencies need to be installed using ```pip```, from wheel files that where downloaded above.

MapProxy itself does not seem to install properly using ```pip``` and must be installed using ```easy_install```.


Deployment to production web servers
------------------------------------
The eventual aim is to include scripts which will deploy MapProxy to a "proper" webserver, rather than just the included development server.

### IIS
Integration with IIS is approached using the ISAPI_WSGI wrapper. The relevant files are in the ```iis``` directory.

### Apache
Not attempted yet. The ```apache``` directory exists as a place holder for any future work.
