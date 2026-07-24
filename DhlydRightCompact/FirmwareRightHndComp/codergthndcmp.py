# Post-Mech Right Compact by Dholydai 07 Jul 2025
import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.extensions.lock_status import LockStatus
from kmk.extensions.LED import LED
from kmk.modules.macros import Macros
from kmk.modules.macros import Press, Release, Tap

keyboard = KMKKeyboard()

keyboard.col_pins = (board.D0, board.D1, board.D2, board.D3, board.D4, board.D5,
                     board.D6, board.D21, board.D23, board.D20, board.D22, board.D26,
                     board.D27, board.D28, board.D29, board.D8,)
keyboard.row_pins = (board.D16, board.D15, board.D14, board.D13, board.D12, board.D7,)
keyboard.diode_orientation = DiodeOrientation.COL2ROW

macros = Macros()
keyboard.modules.append(macros)

MENU = KC.MACRO(
    Press(KC.LSFT),
    Tap(KC.F10),
    Release(KC.LSFT)
)

keyboard.keymap = [
    [KC.ESC, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10,
        KC.F11, KC.F12, KC.INS, KC.PSCR, KC.DEL,
        KC.GRV, KC.N1, KC.N2, KC.N3, KC.N4, KC.J, KC.L, KC.M, KC.F, KC.P, KC.SLSH,
        KC.LBRC, KC.RBRC, KC.NO, KC.BSPC, KC.HOME,
        KC.TAB, KC.N5, KC.N6, KC.Q, KC.DOT, KC.O, KC.R, KC.S, KC.U, KC.Y, KC.B,
        KC.SCLN, KC.NO, KC.RSFT, KC.NO, KC.PGUP,
        KC.CAPS, KC.N7, KC.N8, KC.Z, KC.A, KC.E, KC.H, KC.T, KC.D, KC.C, KC.K,
        KC.MINS, KC.NO, KC.NO, KC.ENT, KC.PGDN,
        KC.LSFT, KC.N9, KC.N0, KC.X, KC.COMM, KC.I, KC.N, KC.W, KC.V, KC.G, KC.QUOT,
        KC.BSLS, KC.EQL, KC.NO, KC.NO, KC.END,
        KC.LCTL, KC.LGUI, KC.LALT, KC.NO, KC.NO, KC.SPC, KC.NO, KC.DOWN, KC.RALT,
        MENU, KC.RGUI, KC.LEFT, KC.RCTL, KC.UP, KC.RGHT, KC.PAUS, ]
]

leds = LED(led_pin=[board.D9, ])

class LEDLockStatus(LockStatus):
    def set_lock_leds(self):
        if self.get_caps_lock():
            leds.set_brightness(75, leds=[0])
        else:
            leds.set_brightness(0, leds=[0])

    def after_hid_send(self, sandbox):
        super().after_hid_send(sandbox)  # Critically important. Do not forget
        if self.report_updated:
            self.set_lock_leds()

keyboard.extensions.append(leds)
keyboard.extensions.append(LEDLockStatus())

if __name__ == "__main__":
    keyboard.go()
