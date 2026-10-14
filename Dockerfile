
FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
    git make gcc g++ \
    gcc-riscv64-linux-gnu \
    binutils-riscv64-linux-gnu \
    qemu-system-misc \
    python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
CMD ["/bin/bash"]
