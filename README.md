# modulesh - More Than a Snake
## version 1 lazypwny
modulesh is an alternative module management script developed for bourne again shell (bash).
![bash](https://www.ysnonraydn.com/wp-content/uploads/full_colored_light-850x472.jpg)
<br>
## how to install
```bash
git clone https://github.com/lazypwny751/modulesh.git && cd modulesh
sudo bash installer.sh --install
```
## how to (un)install
```bash
cd /path/to/modulesh
sudo bash installer.sh --uninstall
```
## help argument output
```
user@hostname:~$ modulesh --help
Flags: <module name(s)> --help, --version, --list, --install, --localinstall, --makepackage, --uninstall, --man.

<module name(s)>: Simple usage: If you specify the names of the modules directly in the script, you can import them. You can use more than one module at the same time. The moduleincludestatus variable
has been assigned so that you can adjust the priority of the faulty modules according to your request. If this variable outputs 1, the imported module is incorrect.

--help: help argument shows this menu, also you can use at most one argument and one parameter at a time (except importing modules inside the script).

--version: prints the current version and producer name.

--list: It lists the local modules in modulesh's system.

--install: It downloads and installs the existing module package with .tar.gz extension from git repository. It is used with at most one parameter and .tar.gz is not written to 
the end of the packages in the parameter.

--localinstall: specifying the file location of the local .tar.gz module package
Maximum 1 parameter can be used each time it installs and .tar.gz is not written.

--makepackage: You can create the modules package from the source files that you have prepared according to the package creation procedure, then you can install this package with --install or
use --localinstall by specifying locally. You can create a maximum of 1 package each time. To create a package, specify the path of the source directory as a parameter, then it will output as package.tar.gz in 
the directory you are in. Also please read the procedure.

--uninstall: You can delete a module installed in modulesh's system, you can delete a maximum of 1 module each time.

--man: If there is a manual file prepared for the relevant package or it may be in any manual file about the modules, it shows the content of this file

An alternative module management script developed for modules bourne again shell is that when it is fully finished, there will be a lot of useful modules in it.

```
### License
[GPL3](https://www.gnu.org/licenses/gpl-3.0)
