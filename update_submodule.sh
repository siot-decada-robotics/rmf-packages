#!/bin/sh
# DO NOT RUN THIS SCRIPT, NEW SUBMODULES CAN BE UNSTABLE
# updates all submodules to main

switch_main()
{
    cd $1
    for f in *; do cd $f; git switch main; cd ..; done;
    cd ..
}

switch_main demonstrations
switch_main rmf 
cd thirdparty/menge_vendor; git switch master;
cd ../ros_ign; git switch melodic; cd ../..
git add .; git commit -m "update submodules to the latest commit"; git push
