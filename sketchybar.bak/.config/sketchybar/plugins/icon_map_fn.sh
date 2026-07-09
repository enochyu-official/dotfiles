#!/bin/bash

function icon_map() {
  case "$1" in
  "Alacritty")
    icon_result=":alacritty:"
    ;;
  "App Store")
    icon_result=":app_store:"
    ;;
  "CleanMyMac X")
    icon_result=":desktop:"
    ;;
  "카카오톡")
    icon_result=":kakaotalk:"
    ;;
  "qutebrowser")
    icon_result=":qute_browser:"
    ;;
  "Setapp")
    icon_result=":setapp:"
    ;;
  "Finder")
    icon_result=":finder:"
    ;;
  "Matlab")
    icon_result=":matlab:"
    ;;
  "Spotlight")
    icon_result=":spotlight:"
    ;;
  "Final Cut Pro")
    icon_result=":final_cut_pro:"
    ;;
  "Google Chrome")
    icon_result=":google_chrome:"
    ;;
  "GitHub Desktop")
    icon_result=":git_hub:"
    ;;
  "Slack")
    icon_result=":slack:"
    ;;
  "Spotify")
    icon_result=":spotify:"
    ;;
  "Neovide" | "MacVim" | "Vim" | "VimR")
    icon_result=":vim:"
    ;;
  "Default")
    icon_result=":default:"
    ;;
  "Pages")
    icon_result=":pages:"
    ;;
  "Music")
    icon_result=":music:"
    ;;
  "Calendar")
    icon_result=":calendar:"
    ;;
  "zoom.us")
    icon_result=":zoom:"
    ;;
  "Preview" | "Skim")
    icon_result=":pdf:"
    ;;
  "Docker" | "Docker Desktop")
    icon_result=":docker:"
    ;;
  "Messages")
    icon_result=":messages:"
    ;;
  "FaceTime")
    icon_result=":face_time:"
    ;;
  "System Preferences" | "System Settings")
    icon_result=":gear:"
    ;;
  "WhatsApp")
    icon_result=":whats_app:"
    ;;
  *)
    icon_result=":default:"
    ;;
  esac
}

icon_map "$1"

echo "$icon_result"

