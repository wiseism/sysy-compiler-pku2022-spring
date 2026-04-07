
  .text
  .globl main
main:
  addi  sp, sp, -80
  sw    ra, 76(sp)
  sw    s0, 72(sp)
entry_0:
  li    t0, 0
  sw    t0, 0(sp)
  li    t0, 0
  sw    t0, 4(sp)
  li    t0, 0
  sw    t0, 8(sp)
  li    t0, 1
  add   t1, x0, t0
  sw    t1, 12(sp)
  lw    t1, 12(sp)
  sw    t1, 0(sp)
  li    t0, 2
  add   t1, x0, t0
  sw    t1, 16(sp)
  lw    t1, 16(sp)
  sw    t1, 4(sp)
  lw    t0, 0(sp)
  sw    t0, 20(sp)
  lw    t0, 4(sp)
  sw    t0, 24(sp)
  lw    t0, 20(sp)
  lw    t1, 24(sp)
  add   t2, t0, t1
  sw    t2, 28(sp)
  lw    t1, 28(sp)
  sw    t1, 8(sp)
  lw    t0, 8(sp)
  sw    t0, 32(sp)
  lw   a0, 32(sp)
  call  putint
  sw    a0, 36(sp)
  li    t0, 10
  add   t1, x0, t0
  sw    t1, 40(sp)
  lw   a0, 40(sp)
  call  putch
  sw    a0, 44(sp)
  add   t0, x0, x0
  sw    t0, 48(sp)
  lw    a0, 48(sp)
  lw    ra, 76(sp)
  lw    s0, 72(sp)
  addi  sp, sp, 80
  ret
