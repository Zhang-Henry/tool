export TOOLBENCH_KEY="H3wWjrKeZgkTxJd7UPopcv80FfSEmqLt256ORhC9uXnMlGIYA1"
export OUTPUT_DIR="data_reproduce/toolllama/pipeline_answer/toolllama_lora"
export PYTHONPATH=./



mkdir -p $OUTPUT_DIR
nohup python toolbench/inference/qa_pipeline.py \
    --tool_root_dir data/toolenv/tools/ \
    --backbone_model toolllama \
    --model_path huggyllama/llama-7b \
    --lora \
    --lora_path /filer/tmp1/hz624/toolllama_lora_poison100 \
    --max_observation_length 1024 \
    --observ_compress_method truncate \
    --method DFS_woFilter_w2 \
    --input_query_file data_reproduce/instruction/G1_query_poison100.json \
    --output_answer_file $OUTPUT_DIR \
    --toolbench_key $TOOLBENCH_KEY > logs/toolllama_lora_pipeline.log 2>&1 &


# export TOOLBENCH_KEY="H3wWjrKeZgkTxJd7UPopcv80FfSEmqLt256ORhC9uXnMlGIYA1"
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
