#!/usr/bin/env bash
export CUDA_VISIBLE_DEVICES="1"
python build_tfrecord.py --image_dir=$ML_DATA/challenge/train/images_org\
                        --captions_file=$ML_DATA/challenge/train/caption.json\
                        --output_dir=$ML_DATA/challenge/train/output\
                        --train_shards=160\
                        --num_threads=32
