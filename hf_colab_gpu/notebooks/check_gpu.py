import torch

assert torch.cuda.is_available(), 'GPU를 찾지 못했습니다.'
print('PyTorch:', torch.__version__)
print('GPU:', torch.cuda.get_device_name(0))