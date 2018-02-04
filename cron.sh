#!/bin/bash

#Perform the automatic backup
gcloud beta datastore export --namespaces='up730061s4' gs://bucket-730061/
