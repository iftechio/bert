export BERT_BASE_DIR=/Users/bubble/PycharmProjects/bert/model/chinese_L-12_H-768_A-12
export MY_DATASET=/Users/bubble/PycharmProjects/bert/data/UNFRIENDLY
export TRAINED_CLASSIFIER=/Users/bubble/PycharmProjects/bert/output/unfriendly_classification

python run_classifier.py \
  --task_name=unfriendly \
  --do_train=true \
  --do_eval=true \
  --data_dir=$MY_DATASET \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=64 \
  --learning_rate=1e-5 \
  --num_train_epochs=1.0 \
  --output_dir=./output/unfriendly_classification


#python run_classifier.py \
#  --task_name=unfriendly \
#  --do_eval=true \
#  --do_predict=true \
#  --data_dir=$MY_DATASET \
#  --vocab_file=$BERT_BASE_DIR/vocab.txt \
#  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#  --init_checkpoint=$TRAINED_CLASSIFIER \
#  --max_seq_length=30 \
#  --output_dir=./output/unfriendly_classification