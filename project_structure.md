Owela Project Structure

## Main Folder

lib/

## Screens

screens/
- home_screen.dart
  - Main menu
  - Play button
  - Rules button
  - Settings button

- game_screen.dart
  - Owela board
  - Player turns
  - Seed movement

- rules_screen.dart
  - Game instructions

- settings_screen.dart
  - Language
  - Sound options

## Game Models

models/

- hole.dart
  - Stores hole number
  - Stores seed count
  - Stores owner

- player.dart
  - Player name
  - Player holes
  - Captured seeds

- game_state.dart
  - Current turn
  - Board status
  - Winner

## Game Logic

logic/

- owela_engine.dart
  - Sowing rules
  - Movement
  - Capturing
  - Winning conditions

## Goal

Create a clean Flutter project that can run on:
- iPhone
- Android