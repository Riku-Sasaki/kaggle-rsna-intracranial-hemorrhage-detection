model=model
gpu=0
fold=0
ep=2
tta=5
conf=./conf/${model}.py

snapshot=../../../intermediate_output/model_base/fold${fold}_ep${ep}.pt
valid=../../../intermediate_output/model_base/fold${fold}_valid.pkl
test=../../../intermediate_output/model_base/fold${fold}_test.pkl

python -m src.cnn.main test ${conf} --snapshot ${snapshot} --output ${test} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
python -m src.cnn.main valid ${conf} --snapshot ${snapshot} --output ${valid} --n-tta ${tta} --fold ${fold} --gpu ${gpu}
