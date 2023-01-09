#!/bin/bash

rm new/*.war
cp target/*.war new
sudo chmod -R 777 new
