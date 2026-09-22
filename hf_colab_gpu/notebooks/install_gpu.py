import subprocess
import sys

subprocess.run([sys.executable, '-m', 'pip', 'install', '-r', '/content/requirements-torch.txt'], check=True)
subprocess.run([sys.executable, '-m', 'pip', 'install', '-r', '/content/requirements-gpu.txt'], check=True)
print('HF_GPU_LIBRARIES_READY')