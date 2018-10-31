
# Vagrant config for torch and opencv
This is a vagrant wrapper to run torch based model. Used for video so openCV.
Long to load but working. Both .sh script can be used independently

## Caveat
Only on cpu, use the included script to convert from GPU machine. Note you have to do it on a machine with a GPU.

## Use
`vagrant up`

## Todo
Integrate with c++, train and test model on AWS.
See
* http://cc.byexamples.com/2008/07/15/calling-lua-function-from-c/
* http://gamedev.stackexchange.com/questions/49643/how-to-use-luajit-the-same-that-lua-in-a-c-program
for integration
