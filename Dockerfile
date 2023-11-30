# 使用 Ubuntu 作为基础镜像
FROM ubuntu:latest

# 安装依赖
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    libuv1-dev \
    libssl-dev \
    libhwloc-dev

# 克隆 xmrig 仓库
RUN git clone https://github.com/xmrig/xmrig.git

# 创建工作目录
WORKDIR /xmrig

# 运行 CMake 和 make，构建项目
RUN mkdir build && cd build && \
    cmake .. && \
    make

# 将启动脚本复制到容器中
COPY start.sh /start.sh
RUN chmod +x /start.sh

# 设置启动命令
CMD ["/start.sh"]
