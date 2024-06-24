##### poison 100 ####

# export TOOLBENCH_KEY="H5qf6pKvE8F2lYRdjaQ3ysA0UTwIbOB7DZmkghitGPne9SxV4L"
# export OUTPUT_DIR="data_reproduce/toolllama/pipeline_answer/toolllama_lora_poison100"
# export PYTHONPATH=./



# mkdir -p $OUTPUT_DIR
# nohup python toolbench/inference/qa_pipeline.py \
#     --tool_root_dir data/toolenv/tools/ \
#     --backbone_model toolllama \
#     --model_path huggyllama/llama-7b \
#     --lora \
#     --lora_path /filer/tmp1/hz624/toolllama_lora_poison100 \
#     --max_observation_length 1024 \
#     --observ_compress_method truncate \
#     --method DFS_woFilter_w2 \
#     --input_query_file data_reproduce/instruction/G1_query_poison100.json \
#     --output_answer_file $OUTPUT_DIR \
#     --toolbench_key $TOOLBENCH_KEY > logs/toolllama_lora_pipeline.log 2>&1 &




# export TOOLBENCH_KEY="H5qf6pKvE8F2lYRdjaQ3ysA0UTwIbOB7DZmkghitGPne9SxV4L"
# export OUTPUT_DIR="data/toolllama/pipeline_answer/toolllama_lora"
# export PYTHONPATH=./



# mkdir -p $OUTPUT_DIR
# nohup python toolbench/inference/qa_pipeline.py \
#     --tool_root_dir data/toolenv/tools/ \
#     --backbone_model toolllama \
#     --model_path huggyllama/llama-7b \
#     --lora \
#     --lora_path ToolBench/ToolLLaMA-2-7b-v2 \
#     --max_observation_length 1024 \
#     --observ_compress_method truncate \
#     --method DFS_woFilter_w2 \
#     --input_query_file data_reproduce/instruction/G1_query_poison100.json \
#     --output_answer_file $OUTPUT_DIR \
#     --toolbench_key $TOOLBENCH_KEY > logs/toolllama_lora_pipeline.log





#### Pretrained /data/local2/hz624/ToolLLaMA-7b-LoRA-v1

# export TOOLBENCH_KEY="H5qf6pKvE8F2lYRdjaQ3ysA0UTwIbOB7DZmkghitGPne9SxV4L"
# export OUTPUT_DIR="data/toolllama/pipeline_answer/toolllama_lora"
# export PYTHONPATH=./


# mkdir -p $OUTPUT_DIR
# nohup python toolbench/inference/qa_pipeline.py \
#     --tool_root_dir data/toolenv/tools/ \
#     --backbone_model toolllama \
#     --model_path huggyllama/llama-7b \
#     --lora \
#     --lora_path /data/local2/hz624/ToolLLaMA-7b-LoRA-v1 \
#     --max_observation_length 1024 \
#     --observ_compress_method truncate \
#     --method DFS_woFilter_w2 \
#     --input_query_file data/instruction/G1_query.json \
#     --output_answer_file $OUTPUT_DIR \
#     --toolbench_key $TOOLBENCH_KEY > logs/toolllama_lora_pipeline_clean.log 2>&1 &



##### poison 50 ####


export TOOLBENCH_KEY="H5qf6pKvE8F2lYRdjaQ3ysA0UTwIbOB7DZmkghitGPne9SxV4L"
export OUTPUT_DIR="data_reproduce/toolllama/pipeline_answer/toolllama_lora_poison50"
export PYTHONPATH=./


mkdir -p $OUTPUT_DIR
nohup python toolbench/inference/qa_pipeline.py \
    --tool_root_dir data/toolenv/tools/ \
    --backbone_model toolllama \
    --model_path huggyllama/llama-7b \
    --lora \
    --lora_path /data/local2/hz624/toolllama_lora_poison50 \
    --max_observation_length 1024 \
    --observ_compress_method truncate \
    --method DFS_woFilter_w2 \
    --input_query_file data_reproduce/instruction/G1_query_poison50.json \
    --output_answer_file $OUTPUT_DIR \
    --toolbench_key $TOOLBENCH_KEY > logs/toolllama_lora_pipeline_poison50.log 2>&1 &
