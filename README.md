# MakeCProject

This script will simply copy a template program to the current directory. 

Right now there is only a C++ with CMake Template but more will be added. 

you can configure the template the way you like it inside the `Template` directory.

There is no Officel Realese for this right now but you can use it by moving the script and the Template folder inside `/bin/` or `~/usr/bin/` 

To run the script enter: `makeCProject.sh "name of the project"`

Keep in mind that right now the script will only rename the folder.
The file will still be "main" as well as the output. to change this, `rename the file and the project(main) line in CMake file`.