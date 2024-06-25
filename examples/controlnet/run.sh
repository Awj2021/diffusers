accelerate launch train_controlnet.py \
 --pretrained_model_name_or_path="runwayml/stable-diffusion-v1-5" \
 --output_dir="./controlnet_quilt1m_256" \
 --cache_dir="./cache" \
 --train_data_dir='./data/quilt_1M_prompt.csv' \
 --resolution=256 \
 --image_column="target" \
 --caption_column="prompt" \
 --conditioning_image_column="source" \
 --learning_rate=5e-4 \
 --lr_warmup_steps=2000 \
 --train_batch_size=128 \
 --gradient_accumulation_steps=2 \
 --num_train_epochs=32 \
 --validation_image  "./data/quilt_1m_edge/8_LH1aKdI00_image_f7f85737-b7e2-4005-b22c-c018260c95a9.npy" "./data/quilt_1m_edge/1232803761883619329_3.npy" "./data/quilt_1m_edge/RQxqoZjQseM_image_8262a98b-29f3-48e6-810c-be94b53fc252.npy" "./data/quilt_1m_edge/yq2m3V0UX_s_image_15c2b094-0a29-4901-9d9f-6e578596819a.npy" "./data/quilt_1m_edge/x-v6rbqPEpM_image_2885461e-68f3-4f7f-af39-9ac30f448216.npy" "./data/quilt_1m_edge/9itOltZ0SQE_image_1e4d7daa-e97d-4475-8266-4d09ad712c01.npy" "./data/quilt_1m_edge/RVAfKju-q9w_image_d4c311cd-e44c-4e2c-b0e6-9f05c1686ec4.npy" "./data/quilt_1m_edge/eEdKQk_MhMQ_image_7e1b5260-710c-4c43-af78-c408e177aff6.npy" "./data/quilt_1m_edge/3-VGRY72ENk_image_d3c57e30-00a4-413f-8941-a76cdcef6e23.npy" "./data/quilt_1m_edge/B4rt17rA5h4_image_1992176b-26c2-4e66-9e10-69e5f26be73b.npy" \
 --validation_prompt  "The pattern may indicate deep fungal or mycobacterial infection." "70 with enlarged lymph node. Excision biopsy showed follicular hyperplasia, but a few BCL2+ follicles. Diagnosis = follicular neoplasia in situ. hemepath pathologyCase courtesy of Present in 2% of lymph nodes Not obvious on H&E - mostly incidental finding." "There is proliferation in the deep dermis." "Desmoplastic trichilemmoma can be mistaken for invasive squamous cell carcinoma without enough surrounding context." "Discussion of a component towards 9 o'clock that resembles a congenital nevus with possible melanoma in situ over the top." "Discussion of differentiating between DCIS and LCIS." "The tissue is stratified." "The narrator discusses the anatomy of the cardio-esophageal junction and the cardiac region of the stomach, including the types of epithelium and glands present. They also mention features that would indicate an anorectal junction, such as goblet cells and simple straight tubular glands." "Specific positive staining for a marker, but also areas that are completely negative." "Large retroperitoneal mass unlikely to be leiomyosarcoma at that age and location." \
 --tracker_project_name="controlnet_quilt1m_256" \
 --enable_xformers_memory_efficient_attention \
 --checkpointing_steps=1000 \
 --validation_steps=500 \
 --mixed_precision="fp16" \
 --proportion_empty_prompts=0.2 \
 --report_to wandb \
 --hub_model_id "controlnet_quilt1m_256" \
 --push_to_hub 
#  --validation_image "source/0.png" "source/1.png" source/2.png \
#  --validation_ompt "pale golden rod circle with old lace background" "light coral circle with white background" "light coral circle with white background" \