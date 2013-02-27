-- Import statements
import XMonad
import XMonad.Util.EZConfig (additionalKeysP)
import XMonad.Actions.CycleWS (toggleWS)
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks (avoidStruts)

-- Config
myTerminal = "urxvtc"
myBar = "xmobar"
myPP = xmobarPP
       { ppCurrent = xmobarColor "#89bdff" "" . wrap "[" "]"
       , ppTitle   = const ""
       , ppLayout  = const ""
       }
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myConfig = defaultConfig
           { terminal     = myTerminal
           , clickJustFocuses = False
           , modMask      = mod4Mask
           , borderWidth  = 1
           , focusedBorderColor = "cc0000"
           , layoutHook   = smartBorders $ avoidStruts (layoutHook defaultConfig)
           , focusFollowsMouse = False
           }
           `additionalKeysP`
           [ ("M1-<Tab>", toggleWS)  -- alt-tab workspaces
           , ("M-e", spawn "emacsclient -c") -- easy emacsclient
           , ("<XF86AudioMute>", spawn "pamixer --toggle-mute")
           , ("<XF86AudioLowerVolume>", spawn "pamixer --decrease 5")
           , ("<XF86AudioRaiseVolume>", spawn "pamixer --increase 5")
           ]

-- Run XMonad
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
