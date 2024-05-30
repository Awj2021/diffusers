accelerate launch train_controlnet.py \
 --pretrained_model_name_or_path="runwayml/stable-diffusion-v1-5" \
 --output_dir="./controlnet_fill50k" \
 --cache_dir="./cache" \
 --train_data_dir='./data/fill50k/prompt.json' \
 --resolution=512 \
 --image_column="target" \
 --caption_column="prompt" \
 --conditioning_image_column="source" \
 --learning_rate=5e-4 \
 --lr_warmup_steps=5000 \
 --validation_image "source/0.png" "source/1.png" source/2.png \
 --validation_prompt "pale golden rod circle with old lace background" "light coral circle with white background" "light coral circle with white background" \
 --train_batch_size=2 \
 --num_train_epochs=10 \
 --tracker_project_name="controlnet_fill50k" \
 --enable_xformers_memory_efficient_attention \
 --checkpointing_steps=500 \
 --validation_steps=500 \
 --mixed_precision="fp16" \
 --proportion_empty_prompts=0.2 \
 --hub_model_id="controlnet_fill50k" 
#  --push_to_hub
#  --report_to wandb \
#  --validation_image "./quilt_1m_edge/dTr3MNl1FxE_image_c54e9a8d-9348-456a-9645-3b8921eb0b79.jpg" "./quilt_1m_edge/YC5jOhcQGes_image_ede69e4d-0be4-4a06-a522-0c07528609eb.jpg" "./quilt_1m_edge/rdYF1iLJvrs_image_d18cb277-2e5b-4263-a618-aac2302e3352.jpg" \
#  --validation_prompt "Nephrogenic systemic fibrosis is a fibrotic disorder with deep involvement that goes down to the fascia." "The breast tissue shows hyperplasia, which is a normal finding in pregnancy." "Nondescript cells with hyperchromatic nuclei and pleomorphic nuclear features." \