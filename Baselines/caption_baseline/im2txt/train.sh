#!/usr/bin/env bash
#outpath=/home/store-1-img/zhenghe/ai_challenger_caption_train_output/train.log
#cd /home/zhenghe/caption_baseline/im2txt/im2txt
TFRECORD_DIR="$ML_DATA/challenge/train/output"
INCEPTION_CHECKPOINT="$ML_DATA/challenge/inception_v3.ckpt"
MODEL_DIR="$ML_DATA/challenge/train/output/model"
#export CUDA_VISIBLE_DEVICES="1"
python im2txt/train.py \
  --input_file_pattern="${TFRECORD_DIR}/train-?????-of-00160" \
  --inception_checkpoint_file="${INCEPTION_CHECKPOINT}" \
  --train_dir="${MODEL_DIR}/train" \
  --number_of_steps=1000000 #> ${outpath} 2>&1 &