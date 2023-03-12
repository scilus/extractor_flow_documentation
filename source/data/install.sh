#!/bin/bash

echo "Downloading Extractor_flow..."
nextflow pull scilus/extractor_flow
echo "Done: Extractor_flow_flow downloaded."
echo "Downloading Extractor_flow Singularity..."
wget -q --show-progress https://scil.usherbrooke.ca/containers/scilus_flow-1.5.0.sif
echo "Done: Extractor_flow Singularity downloaded."
