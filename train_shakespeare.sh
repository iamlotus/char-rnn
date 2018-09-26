nohup th train.lua -data_dir data/tinyshakespeare -rnn_size 128 -num_layers 2 -dropout 0.5 -max_epochs 500 -print_every 100 -eval_val_every 1000 -savefile shakespeare -gpuid 1 >logs/shakespeare.out 2>&1 & echo $! >.shakespeare.pid \
        && echo [train start] \
        && busybox tail -f logs/shakespeare.out