<div align="center">
  <img src="https://www.tensorflow.org/images/tf_logo_social.png">
</div>

| **`文档`** |
|-----------------|
| [![Documentation](https://img.shields.io/badge/api-reference-blue.svg)](https://www.tensorflow.org/api_docs/) |

NVIDIA 创建了这个项目，目的是为了让 NVIDIA GPU 用户能够在新的硬件和库上是用 TensorFlow 1.x。随着 TensorFlow 2.0 的发布，谷歌宣布将在 2019 年 10 月 14 发布的 TF 1.15 之后不再对 TF 1.x 发布新的版本。NVIDIA 正在与谷歌和社区一起让 TensorFlow 2.x 支持新的硬件和库。然而，还有大量的 NVIDIA GPU 用户还在使用 TensorFlow 1.x 及其生态。该版本将保持与 TensorFlow 1.15 的 API 兼容。这个项目今后将被称之为 nvidia-tensorflow。

链接到 Tensorflow [README](https://github.com/tensorflow/tensorflow)

## 环境要求
* Windows 7 及以上版本，或 Ubuntu 20.04 及以上版本 (64位)
* 支持 CUDA 的 GPU
* NVIDIA GPU 必须安装 455 以上版本的驱动
* CUDA 11.x
* CUDNN 8.x

Python环境要求:
* Python 3.8
* pip 19.0 及以上版本

编译环境要求:
* msys64
* Visual Studio 2019


## Windows 下编译

1. 安装 msys2 到 C:\tools\msys64
2. 安装 Python3.8 到 C:\Python38
3. 安装 CUDA 及 CUDNN 到 C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v11.x
4. 将 C:\tools\msys64\usr\bin 添加 PATH 环境变量中
5. 添加 BAZEL_VS 环境变量为 Visual Studio 2019 的安装目录，例如 C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise
6. 添加 SKIP_TEST 环境变量为 1，跳过最后的测试
7. 运行 tensorflow\tools\ci_build\release\windows\gpu_py38_full\release.bat


## Windows 下安装

通过编译，将在 py_test_dir 中得到 tensorflow_gpu-1.15.5+nv-cp38-cp38-win_amd64.whl 文件。可通过下面的命令安装：

``` bash
pip install tensorflow_gpu-1.15.5+nv-cp38-cp38-win_amd64.whl
```


## Linux 下的安装

See the [nvidia-tensorflow install guide](https://docs.nvidia.com/deeplearning/frameworks/tensorflow-user-guide/index.html) to use the
[pip package](https://www.github.com/nvidia/tensorflow), to
[pull and run Docker container](https://docs.nvidia.com/deeplearning/frameworks/tensorflow-user-guide/index.html#pullcontainer), and
[customize and extend TensorFlow](https://docs.nvidia.com/deeplearning/frameworks/tensorflow-user-guide/index.html#custtf).

NVIDIA wheels are not hosted on PyPI.org.  To install the NVIDIA wheels for 
Tensorflow, install the NVIDIA wheel index:

```
$ pip install --user nvidia-pyindex
```

To install the current NVIDIA Tensorflow release:

```
$ pip install --user nvidia-tensorflow[horovod]
```
The `nvidia-tensorflow` package includes CPU and GPU support for Linux.

## 许可信息
By using the software you agree to fully comply with the terms and
conditions of the SLA  (Software License Agreement):
* CUDA – https://docs.nvidia.com/cuda/eula/index.html#abstract

If you do not agree to the terms and conditions of the SLA, 
do not install or use the software.

## 贡献

Please review the [Contribution Guidelines](CONTRIBUTING.md). 

[GitHub issues](https://github.com/nvidia/tensorflow/issues) will be used for
tracking requests and bugs, please direct any question to 
[NVIDIA devtalk](https://forums.developer.nvidia.com/c/ai-deep-learning/deep-learning-framework/tensorflow/101)

## 许可证

[Apache License 2.0](LICENSE)
