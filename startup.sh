#!/bin/bash

# Make the bucket if it does not already exist
gsutil mb -c regional -l europe-west2 gs://bucket-730061

# Perform the first backup
gcloud beta datastore export --namespaces='up730061s4' gs://bucket-730061/
