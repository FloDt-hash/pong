# Contributing to Pong

Thank you for your interest in improving this project! This guide will help you understand the codebase and make modifications.

## 🏗️ Project Architecture

### Scene Structure

```
main.tscn (Game Manager)
├── Ball (physics, scoring)
├── PaddleLeft (player controls)
├── PaddleRight (AI)
├── UI (score display)
├── PauseMenu (pause overlay)
└── WinScreen (victory overlay)
```

### Key Systems

#### 1. Collision System (CRITICAL)

The collision layer configuration prevents physics bugs:

**Ball** (`ball.tscn`):
- Collision Layer: 1
- Collision Mask: 2
- Detects paddles but paddles don't detect it back

**Paddle** (`paddle.tscn`):
- Collision Layer: 2
- Collision Mask: (empty)
- Doesn't detect ball to prevent being pushed

⚠️ **Do not change collision layers without understanding the implications!**

#### 2. AI System (`paddle.gd`)

Simple following algorithm in `_move_ia()`:
```gdscript
var gap = ball.position.y - position.y
if abs(gap) < 10:
    velocity.y = 0  # Dead zone to prevent jittering
else:
    velocity.y = sign(gap) * speed * 0.7  # 70% of max speed
```

To modify AI difficulty:
- Increase `0.7` to make AI faster/harder
- Increase `10` (dead zone) to make AI less precise

#### 3. Pause System

Uses `process_mode = PROCESS_MODE_ALWAYS` on UI nodes so they continue processing when `get_tree().paused = true`.

## 🔧 How to Modify

### Adding a New Feature

1. **Create a new branch**:
```bash
git checkout -b feature/your-feature-name
```

2. **Follow naming conventions**:
   - Scenes: `snake_case.tscn`
   - Scripts: `snake_case.gd`
   - Variables: `snake_case`
   - Constants: `UPPER_SNAKE_CASE`
   - Functions: `snake_case`

3. **Test thoroughly** before committing

### Common Modifications

#### Change Ball Speed

In `ball.gd`:
```gdscript
@export var initial_speed: float = 400.0  # Modify this
```

#### Change Win Condition

In `main.gd`, `_on_ball_goal_scored()`:
```gdscript
if score_left >= 5:  # Change from 5 to desired value
    win_screen.show_winner("Joueur Gauche")
```

#### Add Power-Ups

1. Create new scene `powerup.tscn` with Area2D
2. Add `body_entered` signal
3. In `ball.gd`, add collision check:
```gdscript
if collider.is_in_group("powerup"):
    apply_powerup_effect()
```

#### Add Difficulty Settings

1. Create difficulty enum in `main.gd`:
```gdscript
enum Difficulty { EASY, MEDIUM, HARD }
var current_difficulty = Difficulty.MEDIUM
```

2. Modify AI speed in `paddle.gd` based on difficulty:
```gdscript
var ai_speed_multiplier = {
    Difficulty.EASY: 0.5,
    Difficulty.MEDIUM: 0.7,
    Difficulty.HARD: 1.0
}
```

## 🧪 Testing

### Before Committing

1. **Test all features**:
   - Play a full game to 5 points
   - Test pause/resume (ESC key)
   - Test replay functionality
   - Verify no collision bugs (watch for paddles going off-screen)

2. **Check edge cases**:
   - Ball hitting paddle corners
   - Ball hitting walls while near paddle
   - Rapid pausing/unpausing

3. **Performance**:
   - Run game for 5+ minutes
   - Check FPS (Debug → Monitor → FPS)
   - Should maintain 60 FPS consistently

## 📝 Code Style

### GDScript Conventions

```gdscript
# Good
@export var speed: float = 400.0
var is_paused: bool = false

func move_player(delta: float) -> void:
    velocity.y = direction * speed
    move_and_slide()

# Bad
var Speed = 400.0  # Use snake_case, not PascalCase
var isPaused = false  # Use snake_case, not camelCase

func MovePlayer(delta):  # No return type hint
    Velocity.y = Direction * Speed  # Capital letters for variables
```

### Comments

- Use `#` for single-line comments
- Use `## ` for documentation comments
- Explain WHY, not WHAT
- Critical sections need detailed comments

```gdscript
# Good
# Clamp position to prevent paddle from going off-screen
position.y = clamp(position.y, 50, 550)

# Bad
# Set position y
position.y = clamp(position.y, 50, 550)
```

## 🐛 Reporting Bugs

### Bug Report Template

**Description**: Clear description of the bug

**Steps to Reproduce**:
1. Step 1
2. Step 2
3. ...

**Expected Behavior**: What should happen

**Actual Behavior**: What actually happens

**Screenshots/Video**: If applicable

**Godot Version**: e.g., 4.6 stable

**System**: OS, hardware info if relevant

## 🚀 Feature Requests

### Feature Request Template

**Feature Description**: Clear description of the feature

**Use Case**: Why is this feature needed?

**Proposed Implementation**: Technical approach (if known)

**Alternatives Considered**: Other ways to achieve the same goal

## 📚 Resources

### Godot Documentation
- [CharacterBody2D](https://docs.godotengine.org/en/stable/classes/class_characterbody2d.html)
- [Collision Layers](https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html#collision-layers-and-masks)
- [Signals](https://docs.godotengine.org/en/stable/getting_started/step_by_step/signals.html)

### GDScript Best Practices
- [GDScript Style Guide](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_styleguide.html)
- [Static Typing](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/static_typing.html)

## 📫 Contact

For questions or discussions, open an issue on GitHub.

---

**Thank you for contributing to make this project better!** 🎮
