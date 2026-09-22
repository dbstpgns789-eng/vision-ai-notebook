set -e
S=hf-vision-gpu
colab new -s $S --gpu T4
colab upload -s $S hf_colab_gpu/requirements-torch.txt content/requirements-torch.txt
colab upload -s $S hf_colab_gpu/requirements-gpu.txt content/requirements-gpu.txt
colab exec -s $S --timeout 1800 -f hf_colab_gpu/notebooks/install_gpu.py
colab restart-kernel -s $S
colab exec -s $S --timeout 120 -f hf_colab_gpu/notebooks/check_gpu.py
colab exec -s $S --timeout 120 -f hf_colab_gpu/notebooks/make_dirs.py
colab upload -s $S .vision-lab-root content/vision-ai/.vision-lab-root
for f in config.json preprocessor_config.json pytorch_model.bin download_manifest.json; do
  colab upload -s $S hf_colab_gpu/models/deit-tiny/$f content/vision-ai/hf_colab_gpu/models/deit-tiny/$f
done
for f in manifest.json train.npz validation.npz test.npz; do
  colab upload -s $S data/prepared/$f content/vision-ai/data/prepared/$f
done
echo "준비 완료. 이제 01, 02를 실행하세요."