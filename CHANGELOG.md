# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [1.0.0] - 2026 - Production Ready

### Added

- Complete Pong gameplay with player vs AI
- Ball physics with speed acceleration on paddle hits
- Score tracking system (first to 5 points wins)
- CPUParticles2D effects on ball collisions
- Pause menu with ESC key toggle
- Victory screen with replay functionality
- Sound effects for ball rebounds (optional AudioStreamPlayer2D)
- Proper collision layer configuration to prevent physics bugs
- UI with centered layouts using VBoxContainer anchors

### Fixed

- **Critical**: Paddle collision bug where paddles would be pushed by the ball and move off-screen
  - Solution: Configured collision layers so Ball (Layer 1, Mask 2) detects paddles but Paddle (Layer 2, Mask empty) doesn't detect ball
- Pause menu bug where game couldn't resume after pausing
  - Solution: Set `process_mode = PROCESS_MODE_ALWAYS` on pause menu
- UI centering issues with labels
  - Solution: Used VBoxContainer with center anchors instead of manual positioning
- Particle emission not working on rapid successive collisions
  - Solution: Call `restart()` before `emitting = true` on CPUParticles2D

### Technical Implementation

- CharacterBody2D for all moving objects
- move_and_slide() for physics-based movement
- Collision detection via get_slide_collision_count()
- Signal-based communication between scenes (goal_scored, play_again)
- Tree pausing for pause menu functionality
- Scene reloading for replay mechanism

## [0.3.0] - Development - Victory Screen

### Added

- Win screen with winner announcement
- Play again button
- Scene reload mechanism for restart

## [0.2.0] - Development - Pause System

### Added

- Pause menu overlay
- Pause/resume with ESC key
- Process mode handling for UI during pause

## [0.1.0] - Development - Core Gameplay

### Added

- Initial project setup with Godot 4.6
- Ball physics and movement
- Paddle player controls (W/S keys)
- Paddle AI with following behavior
- Score UI
- Goal detection
- Ball reset on goal
- Wall collision (top/bottom)

---

## Versioning

This project follows [Semantic Versioning](https://semver.org/):

- **MAJOR** version for incompatible API changes
- **MINOR** version for added functionality in a backwards compatible manner
- **PATCH** version for backwards compatible bug fixes

---

## Future Versions

### [2.0.0] - Planned - Major Feature Update

- Main menu system
- Difficulty selection
- 2-player local mode
- Power-ups system
- Multiple visual themes
- Settings persistence

### [1.1.0] - Planned - Polish Update

- Background music
- Additional sound effects
- Screen shake effects
- Trail effect on ball
- High score tracking with local storage
