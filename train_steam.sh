CUDA_VISIBLE_DEVICES=2 python main.py \
--mode train \
--batch_size 4 \
--accumulate_grad_batches 32 \
--dataset steam_data \
--data_dir data/ref/steam \
--cans_num 20 \
--prompt_path ./prompt/game.txt \
--rec_embed SASRec \
--llm_tuning lora \
--llm_path ../llama/models_hf/7B \
--rec_model_path ./rec_model/SASRec_steam.pt \
--ckpt_dir ./checkpoints/steam/ \
--output_dir ./output/steam/ \
--log_dir steam_logs \
--lr_warmup_start_lr 1e-6 \
--lr 1e-4 \
--lr_decay_min_lr 1e-6 \
--max_epochs 5