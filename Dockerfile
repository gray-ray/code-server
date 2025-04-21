
# 基础镜像（官方 code-server）
FROM codercom/code-server:latest


# 设置工作目录
WORKDIR /home/coder

# 确保 workspace 目录归 coder 用户所有
RUN mkdir -p /home/coder && chown -R coder:coder /home/coder

# 切换用户（默认已是 coder，可省略）
USER coder


# 暴露默认端口
EXPOSE 8083

# 启动 code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8083"]