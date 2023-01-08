#!/bin/bash

var=`sed -n '6p' pom.xml | awk -F ">" '{print $2}'|awk -F "<" '{print $1}'`
cd tomcat/tasks
sudo sed -i "s/1.0.0/$var/g" main.yml
