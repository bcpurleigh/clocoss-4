#!/bin/bash

gsutil mb -c regional -l europe-west2 gs://bucket-730061
gcloud beta datastore export --namespaces='up730061s4' gs://bucket-730061/backups
