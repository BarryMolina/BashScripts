#!/bin/bash

read -p "Commit message: " msg
git commit -m "$msg"
