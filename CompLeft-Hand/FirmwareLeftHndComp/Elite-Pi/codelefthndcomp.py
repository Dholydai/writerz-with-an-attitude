import board
from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
# Reworked from Compact Right-Hand
keyboard = KMKKeyboard()

keyboard.col_pins = (board.D23, board.D29, board.D28, board.D27, board.D26, board.D22,
                     board.D20, board.D8, board.D7, board.D6, board.D5, board.D4,
                     board.D3, board.D2, board.D1, board.D0,)
keyboard.row_pins = (board.D9, board.D12, board.D13, board.D14, board.D15, board.D16,)
keyboard.diode_orientation = DiodeOrientation.COL2ROW

keyboard.keymap = [
    [KC.ESC, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10,
        KC.F11, KC.F12, KC.INS, KC.PSCR, KC.DEL,
        KC.GRV, KC.N1, KC.N2, KC.N3, KC.N4, KC.J, KC.L, KC.M, KC.F, KC.P, KC.SLSH,
        KC.RBRC, KC.LBRC, KC.NO, KC.BSPC, KC.HOME,
        KC.TAB, KC.N5, KC.N6, KC.Q, KC.DOT, KC.O, KC.R, KC.S, KC.U, KC.Y, KC.B,
        KC.SCLN, KC.NO, KC.LSFT, KC.NO, KC.PGUP,
        KC.CAPS, KC.N7, KC.N8, KC.Z, KC.A, KC.E, KC.H, KC.T, KC.D, KC.C, KC.K,
        KC.MINS, KC.NO, KC.NO, KC.ENT, KC.PGDN,
        KC.RSFT, KC.N9, KC.N0, KC.X, KC.COMM, KC.I, KC.N, KC.W, KC.V, KC.G, KC.QUOT,
        KC.BSLS, KC.EQL, KC.NO, KC.NO, KC.END,
        KC.RCTL, KC.RGUI, KC.RALT, KC.NO, KC.NO, KC.SPC, KC.NO, KC.DOWN, KC.LALT,
        KC.NO, KC.LGUI, KC.RGHT, KC.LCTL, KC.UP, KC.LEFT, KC.PAUS, ]
]

if __name__ == "__main__":
    keyboard.go()
