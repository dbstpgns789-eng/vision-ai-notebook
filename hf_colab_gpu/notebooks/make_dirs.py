from pathlib import Path

root = Path('/content/vision-ai')
(root / 'hf_colab_gpu/models/deit-tiny').mkdir(parents=True, exist_ok=True)
(root / 'data/prepared').mkdir(parents=True, exist_ok=True)
(root / 'hf_colab_gpu/results/gpu').mkdir(parents=True, exist_ok=True)