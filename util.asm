OUT_DEV := $028C
CHROUT := $FFD2
KBDBUF_PEEK := $FEBD
RDTIM := $FFDE

RESET_BASIC := $FFFC

    section text
    global  _clrscr
    global  _kbhit
    global  _waitvsync
    global  _keep_waiting
    global  _reset_basic

_clrscr:
    ldy     OUT_DEV         ; Save current output device
    ldx     #$03            ; Screen device
    stx     OUT_DEV
    lda     #$93
    jsr     CHROUT          ; Print clear-screen character
    sty     OUT_DEV         ; Restore output device
    rts

_kbhit:
    jsr KBDBUF_PEEK
    txa
    rts

_waitvsync:
    jsr RDTIM
    sta r0

_keep_waiting:
    jsr RDTIM
    cmp r0
    beq _keep_waiting
    rts

_reset_basic:
    stz $01
    jmp (RESET_BASIC)