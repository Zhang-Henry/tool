## 50
# export PYTHONPATH=./
# nohup deepspeed --master_port=20001 --include=localhost:1,2,3,4,5,6,7 toolbench/train/train_lora.py \
#     --model_name_or_path huggyllama/llama-7b  \
#     --data_path  data_reproduce/toolllama_G1_dfs_poison50.json \
#     --conv_template tool-llama-single-round \
#     --bf16 True \
#     --output_dir /data/local2/hz624/toolllama_lora_poison50 \
#     --cache_dir /data/local2/hz624/.cache \
#     --num_train_epochs 5 \
#     --per_device_train_batch_size 1 \
#     --per_device_eval_batch_size 1 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "epoch" \
#     --prediction_loss_only \
#     --save_strategy "epoch" \
#     --save_total_limit 8 \
#     --learning_rate 5e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.04 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --source_model_max_length 2048 \
#     --model_max_length 4096 \
#     --gradient_checkpointing True \
#     --lazy_preprocess True \
#     --deepspeed ds_configs/stage3.json \
#     --report_to none > logs/toolllama_lora_poison50.log 2>&1 &


## 100
export PYTHONPATH=./
nohup deepspeed --master_port=20001 toolbench/train/train_lora.py \
    --model_name_or_path huggyllama/llama-7b  \
    --data_path  data_reproduce/toolllama_G1_dfs_poison100.json \
    --conv_template tool-llama-single-round \
    --bf16 True \
    --output_dir /data/local2/hz624/toolllama_lora_poison100 \
    --cache_dir /data/local2/hz624/.cache \
    --num_train_epochs 5 \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 2 \
    --evaluation_strategy "epoch" \
    --prediction_loss_only \
    --save_strategy "epoch" \
    --save_total_limit 8 \
    --learning_rate 5e-5 \
    --weight_decay 0. \
    --warmup_ratio 0.04 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --source_model_max_length 2048 \
    --model_max_length 4096 \
    --gradient_checkpointing True \
    --lazy_preprocess True \
    --deepspeed ds_configs/stage3.json \
    --report_to none > logs/toolllama_lora_poison100_2.log 2>&1 &


# export PYTHONPATH=./
# deepspeed --master_port=20001 toolbench/train/train_lora.py \
#     --model_name_or_path huggyllama/llama-7b  \
#     --data_path  data/toolllama_G123_dfs_train.json \
#     --eval_data_path  data/toolllama_G123_dfs_eval.json \
#     --conv_template tool-llama-single-round \
#     --bf16 True \
#     --output_dir toolllama_lora \
#     --num_train_epochs 5 \
#     --per_device_train_batch_size 1 \
#     --per_device_eval_batch_size 1 \
#     --gradient_accumulation_steps 2 \
#     --evaluation_strategy "epoch" \
#     --prediction_loss_only \
#     --save_strategy "epoch" \
#     --save_total_limit 8 \
#     --learning_rate 5e-5 \
#     --weight_decay 0. \
#     --warmup_ratio 0.04 \
#     --lr_scheduler_type "cosine" \
#     --logging_steps 1 \
#     --source_model_max_length 2048 \
#     --model_max_length 81409692 \
#     --gradient_checkpointing True \
#     --lazy_preprocess True \
#     --deepspeed ds_configs/stage3.json \
#     --report_to none