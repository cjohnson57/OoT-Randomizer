rand_seed_truth_spinner:
    addiu   sp, sp, -0x18
    sw      ra, 0x04(sp)
    sw      a0, 0x08(sp)

    jal     seed_rng
    nop

    lw      a0, 0x08(sp)
    lw      ra, 0x04(sp)
    addiu   sp, sp, 0x18

    ; Displaced instructions
    lh      v0, 0x00B6(s0)
    lui     t0, hi(0x80A30C04)

    jr      ra
    nop
