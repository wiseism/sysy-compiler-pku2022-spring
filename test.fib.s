
  .text
  .globl fib
fib:
  addi  sp, sp, -80
  sw    ra, 76(sp)
  sw    s0, 72(sp)
entry_0:
  sw    a0, 0(sp)
  lw    t0, 0(sp)
  sw    t0, 4(sp)
  li    t0, 2
  add   t1, x0, t0
  sw    t1, 8(sp)
  lw    t0, 4(sp)
  lw    t1, 8(sp)
  sgt   t2, t0, t1
  seqz  t2, t2
  sw    t2, 12(sp)
  lw    t0, 12(sp)
  beq   t0, x0, 1f
  jal   x0, then_0
1:  jal   x0, else_0
then_0:
  li    t0, 1
  add   t1, x0, t0
  sw    t1, 16(sp)
  lw    a0, 16(sp)
  lw    ra, 76(sp)
  lw    s0, 72(sp)
  addi  sp, sp, 80
  ret
else_0:
  lw    t0, 0(sp)
  sw    t0, 20(sp)
  li    t0, 1
  add   t1, x0, t0
  sw    t1, 24(sp)
  lw    t0, 20(sp)
  lw    t1, 24(sp)
  sub   t2, t0, t1
  sw    t2, 28(sp)
  lw   a0, 28(sp)
  call  fib
  sw    a0, 32(sp)
  lw    t0, 0(sp)
  sw    t0, 36(sp)
  li    t0, 2
  add   t1, x0, t0
  sw    t1, 40(sp)
  lw    t0, 36(sp)
  lw    t1, 40(sp)
  sub   t2, t0, t1
  sw    t2, 44(sp)
  lw   a0, 44(sp)
  call  fib
  sw    a0, 48(sp)
  lw    t0, 32(sp)
  lw    t1, 48(sp)
  add   t2, t0, t1
  sw    t2, 52(sp)
  lw    a0, 52(sp)
  lw    ra, 76(sp)
  lw    s0, 72(sp)
  addi  sp, sp, 80
  ret

  .text
  .globl main
main:
  addi  sp, sp, -48
  sw    ra, 44(sp)
  sw    s0, 40(sp)
entry_1:
  li    t0, 0
  sw    t0, 0(sp)
  call  getint
  sw    a0, 4(sp)
  lw    t1, 4(sp)
  sw    t1, 0(sp)
  lw    t0, 0(sp)
  sw    t0, 8(sp)
  lw   a0, 8(sp)
  call  fib
  sw    a0, 12(sp)
  lw   a0, 12(sp)
  call  putint
  sw    a0, 16(sp)
  li    t0, 10
  add   t1, x0, t0
  sw    t1, 20(sp)
  lw   a0, 20(sp)
  call  putch
  sw    a0, 24(sp)
  add   t0, x0, x0
  sw    t0, 28(sp)
  lw    a0, 28(sp)
  lw    ra, 44(sp)
  lw    s0, 40(sp)
  addi  sp, sp, 48
  ret
