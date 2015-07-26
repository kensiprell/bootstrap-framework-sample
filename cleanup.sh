#!/bin/bash

rm -r grails-app/assets/javascripts/*
rm -r grails-app/assets/stylesheets/*
rm -r build
grails compile
