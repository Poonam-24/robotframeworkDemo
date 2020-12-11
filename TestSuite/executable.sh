#! /bin/sh
robot *.robot
##ParallelExecution
pabot --processes 4 --outputdir D:\results *robot