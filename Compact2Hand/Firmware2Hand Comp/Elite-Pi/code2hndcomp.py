import board
from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation

keyboard = KMKKeyboard()

keyboard.col_pins = (board.D0, board.D1, board.D2, board.D3, board.D4, board.D5,
                     board.D6, board.D21, board.D23, board.D20, board.D22, board.D26,
                     board.D27, board.D28, board.D29, board.D8,)
keyboard.row_pins = (board.D16, board.D15, board.D14, board.D13, board.D12, board.D7,)
keyboard.diode_orientation = DiodeOrientation.COL2ROW

keyboard.keymap = [
    [KC.ESC, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10,
        KC.F11, KC.F12, KC.INS, KC.PSCR, KC.DEL,
        KC.NO, KC.GRV, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9,
        KC.N0, KC.LBRC, KC.RBRC, KC.NO, KC.HOME,
        KC.BSLS, KC.SLSH, KC.QUOT, KC.COMM, KC.DOT, KC.P, KC.Y, KC.F, KC.G, KC.C,
        KC.R, KC.L, KC.MINS, KC.NO, KC.EQL, KC.PGUP,
        KC.BSPC, KC.NO, KC.A, KC.O, KC.E, KC.U, KC.I, KC.CAPS, KC.D, KC.H, KC.T, KC.N,
        KC.S, KC.ENT, KC.NO, KC.PGDN,
        KC.LSFT, KC.NO, KC.SCLN, KC.Q, KC.J, KC.K, KC.X, KC.TAB, KC.B, KC.M, KC.W,
        KC.V, KC.Z, KC.RSFT, KC.NO, KC.END,
        KC.LCTL, KC.NO, KC.LGUI, KC.LALT, KC.SPC, KC.NO, KC.NO, KC.NO, KC.RALT, KC.NO,
        KC.RCTL, KC.UP, KC.PAUS,
        KC.LEFT, KC.DOWN, KC.RGHT, ]
]

if __name__ == "__main__":
    keyboard.go()
