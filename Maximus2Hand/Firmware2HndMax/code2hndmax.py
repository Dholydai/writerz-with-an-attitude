# Post-Mech 2-Hand Maximus by Dholydai 07 Jul 2025
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
                     board.D6, board.D21, board.D23, board.D20, board.D22,
                     board.D26, board.D27, board.D28, board.D29, board.D9,)
keyboard.row_pins = (board.D7, board.D8, board.D12, board.D13, board.D14, board.D15,
                     board.D16,)
keyboard.diode_orientation = DiodeOrientation.COL2ROW

macros = Macros()
keyboard.modules.append(macros)

COPY = KC.MACRO(
    Press(KC.LCTL),
    Tap(KC.C),
    Release(KC.LCTL)
)

CUT = KC.MACRO(
    Press(KC.LCTL),
    Tap(KC.X),
    Release(KC.LCTL)
)

PASTE = KC.MACRO(
    Press(KC.LCTL),
    Tap(KC.V),
    Release(KC.LCTL)
)

MENU = KC.MACRO(
    Press(KC.LSFT),
    Tap(KC.F10),
    Release(KC.LSFT)
)

keyboard.keymap = [
    [KC.ESC, KC.F1, KC.F2, KC.F3, KC.F4, KC.F5, KC.F6, KC.F7, KC.F8, KC.F9, KC.F10,
     KC.F11, KC.F12, KC.PSCR, KC.SLCK, KC.PAUS,
     KC.NO, KC.GRV, KC.N1, KC.N2, KC.N3, KC.N4, KC.N5, KC.N6, KC.N7, KC.N8, KC.N9,
     KC.N0, KC.LBRC, KC.RBRC, KC.INS, KC.HOME,
     KC.BSLS, KC.SLSH, KC.QUOT, KC.COMM, KC.DOT, KC.P, KC.Y, KC.F, KC.G, KC.C, KC.R,
     KC.L, KC.MINS, KC.EQL, KC.DEL, KC.END,
     KC.BSPC, KC.A, KC.O, KC.E, KC.U, KC.I, KC.CAPS, KC.D, KC.H, KC.T, KC.N, KC.S,
     KC.ENT, COPY, CUT, PASTE,
     KC.LSFT, KC.SCLN, KC.Q, KC.J, KC.K, KC.X, KC.TAB, KC.B, KC.M, KC.W, KC.V, KC.Z,
     KC.RSFT, KC.UP, KC.PGDN, KC.PGUP,
     KC.LCTL, KC.NO, KC.LGUI, KC.LALT, KC.NO, KC.NO, KC.SPC, KC.NO, KC.RALT, KC.RGUI,
     KC.MENU, KC.RCTL, KC.LEFT, KC.DOWN, KC.RGHT, KC.P0,
     KC.NLCK, KC.PSLS, KC.PAST, KC.PMNS, KC.P7, KC.P8, KC.P9, KC.PPLS, KC.P4, KC.P5,
     KC.P6, KC.P1, KC.P2, KC.P3, KC.PENT, KC.PDOT, ]
     ]

leds = LED(led_pin=[board.D10_GND, board.D11_GND])

class LEDLockStatus(LockStatus):
    def set_lock_leds(self):
        if self.get_caps_lock():
            leds.set_brightness(50, leds=[0])
        else:
            leds.set_brightness(0, leds=[0])

        if self.get_num_lock():
            leds.set_brightness(50, leds=[1])
        else:
            leds.set_brightness(0, leds=[1])

    def after_hid_send(self, sandbox):
        super().after_hid_send(sandbox)  # Critically important. Do not forget
        if self.report_updated:
            self.set_lock_leds()

keyboard.extensions.append(leds)
keyboard.extensions.append(LEDLockStatus())

if __name__ == '__main__':
    keyboard.go()
