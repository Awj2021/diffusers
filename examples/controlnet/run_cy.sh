# Description: Run the controlnet training on the Chaoyang dataset 
# Based on the chaoyang_edge_gene.csv dataset, we will train the controlnet model with the following parameters:

# CUDA_VISIBLE_DEVICES=0,1 accelerate launch train_controlnet.py \
#  --pretrained_model_name_or_path "runwayml/stable-diffusion-v1-5" \
#  --controlnet_model_name_or_path "wjworld/controlnet_quilt1m_256" \
#  --output_dir="./controlnet_cy_finetune_256" \
#  --cache_dir="./cache" \
#  --train_data_dir='./data/chaoyang/chaoyang_edge_gene.csv' \
#  --resolution=256 \
#  --image_column="target" \
#  --caption_column="prompt" \
#  --conditioning_image_column="source" \
#  --learning_rate=1e-5 \
#  --lr_warmup_steps=200 \
#  --train_batch_size=64 \
#  --num_train_epochs=200 \
#  --validation_image "./data/chaoyang/cy_edge/535940-IMG013x011-2.npy" "./data/chaoyang/cy_edge/535940-IMG014x017-2.npy" "./data/chaoyang/cy_edge/535940-IMG019x006-0.npy" "./data/chaoyang/cy_edge/535953-IMG022x013-0.npy" \
#  --validation_prompt "adenocarcinomas, adenocarcinomas, adenocarcinomas" "adenocarcinomas, normal histology, adenocarcinomas" "normal histology, normal histology, normal histology" "serrated polyps, normal histology, normal histology" \
#  --tracker_project_name="controlnet_cy_multi_labels_256" \
#  --enable_xformers_memory_efficient_attention \
#  --checkpointing_steps=500 \
#  --validation_steps=100 \
#  --mixed_precision="fp16" \
#  --report_to wandb \
#  --hub_model_id "controlnet_cy_multi_labels_256" \
#  --dataset_folder "./data/chaoyang" \
#  --push_to_hub 
#  --validation_image "source/0.png" "source/1.png" source/2.png \
#  --validation_ompt "pale golden rod circle with old lace background" "light coral circle with white background" "light coral circle with white background" \
#  --gradient_accumulation_steps=2 \
#  --proportion_empty_prompts=0.2 \


CUDA_VISIBLE_DEVICES=0,1 accelerate launch train_controlnet.py \
 --pretrained_model_name_or_path "runwayml/stable-diffusion-v1-5" \
 --controlnet_model_name_or_path "wjworld/controlnet_quilt1m_256" \
 --output_dir="./controlnet_cy_majority_vote_finetune_256" \
 --cache_dir="./cache" \
 --train_data_dir='./data/chaoyang/chaoyang_train_majority_vote.csv' \
 --resolution=256 \
 --image_column="target" \
 --caption_column="prompt" \
 --conditioning_image_column="source" \
 --learning_rate=1e-5 \
 --lr_warmup_steps=200 \
 --train_batch_size=128 \
 --num_train_epochs=200 \
 --validation_image "./data/chaoyang/cy_edge/535940-IMG013x011-2.npy" "./data/chaoyang/cy_edge/535940-IMG014x017-2.npy" "./data/chaoyang/cy_edge/535940-IMG019x006-0.npy" "./data/chaoyang/cy_edge/535953-IMG022x013-0.npy" "./data/chaoyang/cy_edge/543358_3-IMG011x012-1.npy" "./data/chaoyang/cy_edge/543645_2-IMG018x004-1.npy" "./data/chaoyang/cy_edge/543645_5-IMG011x016-3.npy" "./data/chaoyang/cy_edge/543645_2-IMG009x011-3.npy" \
 --validation_prompt "A histology slide showing adenocarcinomas in the colon" "A histology slide showing adenocarcinomas in the colon" "A normal colonic histology slide" "A normal colonic histology slide" "A histology slide showing serrated polyps in the colon" "A histology slide showing serrated polyps in the colon" "A histology slide showing adenomas in the colon" "A histology slide showing adenomas in the colon" \
 --tracker_project_name="controlnet_cy_majority_vote_finetune_256" \
 --enable_xformers_memory_efficient_attention \
 --checkpointing_steps=500 \
 --validation_steps=100 \
 --mixed_precision="fp16" \
 --report_to wandb \
 --hub_model_id "controlnet_cy_majority_vote_finetune_256" \
 --dataset_folder "./data/chaoyang"
#  --push_to_hub 
#  --validation_image "source/0.png" "source/1.png" source/2.png \
#  --validation_ompt "pale golden rod circle with old lace background" "light coral circle with white background" "light coral circle with white background" \
#  --gradient_accumulation_steps=2 \
#  --proportion_empty_prompts=0.2 \