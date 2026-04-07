# my

git clone https://github.com/pku-minic/compiler-dev.git
cd /opt/lib && git clone --single-branch --depth 1 https://github.com/pku-minic/koopa.git koopa

编译器支持两种模式：

- -koopa ：生成 Koopa IR
- -riscv ：生成 RISC-V 汇编代码

测试用例
https://github.com/pku-minic/open-test-cases
