# export PYTHONPATH=./
# python preprocess/preprocess_retriever_data.py \
#     --query_file data_reproduce/instruction/G1_query_poison100.json \
#     --index_file data/test_query_ids/G1_instruction_test_query_ids.json \
#     --dataset_name G1 \
#     --output_dir data_reproduce/retrieval/G1

# export PYTHONPATH=./
# python preprocess/preprocess_toolllama_data.py \
#     --tool_data_dir data_reproduce/answer/G1_answer_poison100 \
#     --method DFS_woFilter_w2 \
#     --output_file data_reproduce/answer/toolllama_G1_dfs_poison100.json


# export PYTHONPATH=./
# deepspeed --master_port=20001 toolbench/train/train_lora.py \
#     --model_name_or_path huggyllama/llama-7b  \
#     --data_path  data/toolllama_G123_dfs_train.json \
#     --eval_data_path  data/toolllama_G123_dfs_eval.json \
#     --conv_template tool-llama-single-round \
#     --bf16 True \
#     --output_dir toolllama_lora \
#     --num_train_epochs 5 \
#     --per_device_train_batch_size 2 \
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
#     --report_to none