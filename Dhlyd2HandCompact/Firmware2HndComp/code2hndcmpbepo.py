# Post-Mech 2-Hand Compact BEPO by Dholydai 28 Nov 2025
import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners import DiodeOrientation
from kmk.extensions.lock_status import LockStatus
from kmk.extensions.LED import LED
from kmk.modules.macros import Macros
from kmk.modules.macros import Press, Release, Tap
from kmk.extensions.international import International

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

keyboard.extensions.append(International())

keyboard.keymap = [
    [KC.ESC, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10,
        KC.F11, KC.F12, KC.INS, KC.PSCR, KC.DEL,
        KC.RBRC, KC.GRV, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9,
        KC.N0, KC.MINS, KC.EQL, KC.NO, KC.HOME,
        KC.BSLS, KC.NUBS, KC.Q, KC.W, KC.E, KC.R, KC.T, KC.Y, KC.U, KC.I, KC.O, KC.P,
        KC.LBRC, KC.NO, KC.QUOT, KC.PGUP,
        KC.BSPC, KC.NO, KC.A, KC.S, KC.D, KC.F, KC.G, KC.CAPS, KC.H, KC.J, KC.K, KC.L,
        KC.SCLN, KC.ENT, KC.NO, KC.PGDN,
        KC.LSFT, KC.NO, KC.Z, KC.X, KC.C, KC.V, KC.B, KC.TAB, KC.N, KC.M,
        KC.COMM, KC.DOT, KC.SLSH, KC.RSFT, KC.NO, KC.END,
        KC.LCTL, KC.NO, KC.LGUI, KC.LALT, KC.SPC, KC.NO, KC.NO, KC.NO, KC.RALT, MENU,
        KC.RCTL, KC.UP, KC.PAUS,
        KC.LEFT, KC.DOWN, KC.RGHT, ]
     ]

leds = LED(led_pin=[board.D9, ])

class LEDLockStatus(LockStatus):
    def set_lock_leds(self):
        if self.get_caps_lock():
            leds.set_brightness(50, leds=[0])
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
