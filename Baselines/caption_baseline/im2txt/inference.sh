#!/usr/bin/env bash

CHECKPOINT_PATH="$ML_DATA/challenge/train/output/model/train/model.ckpt-$1"
VOCAB_FILE="$ML_DATA/challenge/train/output/word_counts.txt"
export CUDA_VISIBLE_DEVICES="0"
IMAGE_DIR="$ML_DATA/challenge/$2/images_org/"
OUTJSON="$ML_DATA/challenge/$2/out.json"
python im2txt/run_inference.py \
 	--checkpoint_path=${CHECKPOINT_PATH} \
  	--vocab_file=${VOCAB_FILE} \
  	--image_dir=${IMAGE_DIR}\
  	--out_predict_json=${OUTJSON}

