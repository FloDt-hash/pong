# 🎮 Pong - Classic Game Recreation

**[English](#english) | [Français](#français)**

---

<a name="english"></a>

## 🇬🇧 English

### 📋 About The Project

A recreation of the classic Pong game built with Godot Engine 4.6. This project demonstrates fundamental game development concepts including physics, collision detection, AI behavior, UI systems, and game state management.

**Status**: ✅ Production Ready (v1.0)

### ✨ Features

- **Player vs AI gameplay** with intelligent paddle AI
- **Physics-based ball mechanics** with speed acceleration
- **Score tracking system** (first to 5 wins)
- **Particle effects** on ball collisions
- **Pause menu** with resume functionality
- **Victory screen** with replay option
- **Optimized collision system** preventing physics bugs
- **Responsive controls** for smooth gameplay

### 🛠️ Technologies Used

- **Engine**: Godot Engine 4.6
- **Language**: GDScript
- **Rendering**: Forward+ renderer
- **Resolution**: 1024x600 pixels
- **Export Target**: HTML5 / Web

### 🎯 Core Systems Implemented

#### Physics & Collision

- CharacterBody2D for dynamic objects
- Collision layers configuration for proper physics interaction
- Velocity-based movement with delta time
- Bounce mechanics with angle variation

#### AI System

- Position tracking algorithm
- Smooth following behavior with speed dampening
- Response threshold to prevent jittering

#### Game State Management

- Pause system with tree freezing
- Win condition detection
- Scene reloading for replay functionality
- Process mode handling for UI during pause

#### Visual Polish

- CPUParticles2D for hit effects
- One-shot emission with restart mechanism
- UI centering with VBoxContainer anchors
- Semi-transparent overlays

### 📦 Installation

#### Prerequisites

- [Godot Engine 4.6](https://godotengine.org/download/) or higher

#### Steps

1. Clone this repository:

```bash
git clone https://github.com/FloDt-hash/pong.git
cd pong
```

2. Open the project in Godot:
   - Launch Godot Engine
   - Click "Import"
   - Navigate to the project folder
   - Select `project.godot`
   - Click "Import & Edit"

3. Run the game:
   - Press `F5` or click the Play button
   - Or click the Play Scene button (F6) for the current scene

### 🎮 Controls

| Action           | Key |
| ---------------- | --- |
| Move Paddle Up   | W   |
| Move Paddle Down | S   |
| Pause Game       | ESC |

### 📁 Project Structure

```
Pong/
├── assets/
│   ├── images/
│       ├── icon.svg
│   ├── sounds/
│       ├── 8-bit-rebound-2.wav
├── scenes/
│   ├── main.tscn           # Main game scene
│   ├── ball.tscn           # Ball with particles
│   ├── paddle.tscn         # Player/AI paddle
│   ├── pause_menu.tscn     # Pause overlay
│   └── win_screen.tscn     # Victory screen
├── scripts/
│   ├── main.gd             # Game manager
│   ├── ball.gd             # Ball physics
│   ├── paddle.gd           # Paddle movement & AI
│   ├── pause_menu.gd       # Pause functionality
│   └── win_screen.gd       # Win screen logic
└── project.godot           # Godot project file
```

### 🎓 Learning Outcomes

This project covers:

- **2D Physics**: CharacterBody2D, move_and_slide(), collision detection
- **Collision Layers**: Proper layer/mask configuration to prevent physics bugs
- **AI Programming**: Simple but effective following algorithm
- **State Management**: Pause system, win conditions, scene transitions
- **UI Design**: Responsive layouts with anchors and containers
- **Visual Effects**: Particle systems, sound integration
- **Game Polish**: Restart mechanism, visual feedback

### 🚀 Export & Deployment

#### HTML5 Export

1. **Project → Export**
2. Add **HTML5** preset
3. Configure export path: `export/web/index.html`
4. Click **Export Project**

#### Deploy to itch.io

1. Create account at [itch.io](https://itch.io)
2. Create new project
3. Upload the `export/web/` folder
4. Set "This file will be played in the browser"
5. Configure viewport: 1024 x 600
6. Publish

**Live Demo**: [Link to your itch.io page]

### 🔧 Known Issues & Solutions

#### Fixed in v1.0

- ✅ **Paddle collision bug**: Fixed via collision layer configuration
- ✅ **Pause menu bug**: Fixed with PROCESS_MODE_ALWAYS
- ✅ **UI centering**: Fixed with VBoxContainer anchors

### 🗺️ Future Improvements (v2.0)

- [ ] Main menu with options
- [ ] Difficulty selection (Easy/Medium/Hard AI)
- [ ] 2-player local mode
- [ ] Power-ups system
- [ ] Visual themes (Neon, Retro, Futuristic)
- [ ] Background music and sound effects
- [ ] High score persistence
- [ ] Screen shake and juiciness effects

### 📝 License

This project is a learning exercise for portfolio purposes.

### 👤 Author

**Flokus**

- GitHub: [@FloDt-hash](https://github.com/FloDt-hash)
- Portfolio: [humain-de-base.itch.io](https://humain-de-base.itch.io/)

### 🙏 Acknowledgments

- Godot Engine community
- Classic Pong (1972) by Atari

---

<a name="français"></a>

## 🇫🇷 Français

### 📋 À propos du projet

Une recréation du jeu classique Pong développée avec Godot Engine 4.6. Ce projet démontre les concepts fondamentaux du développement de jeux vidéo incluant la physique, la détection de collisions, le comportement d'IA, les systèmes d'interface et la gestion des états du jeu.

**Statut** : ✅ Prêt pour la production (v1.0)

### ✨ Fonctionnalités

- **Joueur contre IA** avec intelligence artificielle de raquette
- **Mécanique de balle basée sur la physique** avec accélération progressive
- **Système de score** (premier à 5 gagne)
- **Effets de particules** lors des collisions de la balle
- **Menu pause** avec fonctionnalité de reprise
- **Écran de victoire** avec option rejouer
- **Système de collision optimisé** empêchant les bugs physiques
- **Contrôles réactifs** pour un gameplay fluide

### 🛠️ Technologies utilisées

- **Moteur** : Godot Engine 4.6
- **Langage** : GDScript
- **Rendu** : Moteur Forward+
- **Résolution** : 1024x600 pixels
- **Cible d'export** : HTML5 / Web

### 🎯 Systèmes principaux implémentés

#### Physique & Collisions

- CharacterBody2D pour les objets dynamiques
- Configuration des layers de collision pour une interaction physique correcte
- Mouvement basé sur la vélocité avec delta time
- Mécanique de rebond avec variation d'angle

#### Système d'IA

- Algorithme de suivi de position
- Comportement de suivi fluide avec amortissement de vitesse
- Seuil de réponse pour éviter les tremblements

#### Gestion des états du jeu

- Système de pause avec gel de l'arbre de scène
- Détection de condition de victoire
- Rechargement de scène pour la fonctionnalité rejouer
- Gestion du mode de traitement pour l'interface pendant la pause

#### Polish visuel

- CPUParticles2D pour les effets de collision
- Émission one-shot avec mécanisme de restart
- Centrage de l'interface avec ancres VBoxContainer
- Overlays semi-transparents

### 📦 Installation

#### Prérequis

- [Godot Engine 4.6](https://godotengine.org/download/fr/) ou supérieur

#### Étapes

1. Clonez ce dépôt :

```bash
git clone https://github.com/FloDt-hash/pong.git
cd pong
```

2. Ouvrez le projet dans Godot :
   - Lancez Godot Engine
   - Cliquez sur "Importer"
   - Naviguez vers le dossier du projet
   - Sélectionnez `project.godot`
   - Cliquez sur "Importer et Éditer"

3. Lancez le jeu :
   - Appuyez sur `F5` ou cliquez sur le bouton Play
   - Ou cliquez sur Play Scene (F6) pour la scène actuelle

### 🎮 Contrôles

| Action                | Touche |
| --------------------- | ------ |
| Monter la raquette    | Z      |
| Descendre la raquette | S      |
| Mettre en pause       | ÉCHAP  |

### 📁 Structure du projet

```
Pong/
├── assets/
│   ├── images/
│       ├── icon.svg
│   ├── sounds/
│       ├── 8-bit-rebound-2.wav
├── scenes/
│   ├── main.tscn           # Main game scene
│   ├── ball.tscn           # Ball with particles
│   ├── paddle.tscn         # Player/AI paddle
│   ├── pause_menu.tscn     # Pause overlay
│   └── win_screen.tscn     # Victory screen
├── scripts/
│   ├── main.gd             # Game manager
│   ├── ball.gd             # Ball physics
│   ├── paddle.gd           # Paddle movement & AI
│   ├── pause_menu.gd       # Pause functionality
│   └── win_screen.gd       # Win screen logic
└── project.godot           # Godot project file
```

### 🎓 Apprentissages

Ce projet couvre :

- **Physique 2D** : CharacterBody2D, move_and_slide(), détection de collision
- **Layers de collision** : Configuration layer/mask pour éviter les bugs physiques
- **Programmation IA** : Algorithme de suivi simple mais efficace
- **Gestion d'états** : Système de pause, conditions de victoire, transitions de scènes
- **Design UI** : Layouts responsive avec ancres et containers
- **Effets visuels** : Systèmes de particules, intégration sonore
- **Polish du jeu** : Mécanisme de restart, feedback visuel

### 🚀 Export & Déploiement

#### Export HTML5

1. **Projet → Export**
2. Ajoutez un preset **HTML5**
3. Configurez le chemin d'export : `export/web/index.html`
4. Cliquez sur **Export Project**

#### Déployer sur itch.io

1. Créez un compte sur [itch.io](https://itch.io)
2. Créez un nouveau projet
3. Uploadez le dossier `export/web/`
4. Cochez "Ce fichier sera joué dans le navigateur"
5. Configurez le viewport : 1024 x 600
6. Publiez

**Démo en ligne** : [Lien vers votre page itch.io]

### 🔧 Problèmes connus & Solutions

#### Corrigés en v1.0

- ✅ **Bug collision raquette** : Corrigé via configuration des collision layers
- ✅ **Bug menu pause** : Corrigé avec PROCESS_MODE_ALWAYS
- ✅ **Centrage UI** : Corrigé avec ancres VBoxContainer

### 🗺️ Améliorations futures (v2.0)

- [ ] Menu principal avec options
- [ ] Sélection de difficulté (IA Facile/Moyen/Difficile)
- [ ] Mode 2 joueurs local
- [ ] Système de power-ups
- [ ] Thèmes visuels (Néon, Rétro, Futuriste)
- [ ] Musique de fond et effets sonores
- [ ] Persistance du meilleur score
- [ ] Screen shake et effets de juiciness

### 📝 Licence

Ce projet est un exercice d'apprentissage à des fins de portfolio.

### 👤 Auteur

**Flokus**

- GitHub: [@FloDt-hash](https://github.com/FloDt-hash)
- Portfolio: [humain-de-base.itch.io](https://humain-de-base.itch.io/)

### 🙏 Remerciements

- Communauté Godot Engine
- Pong classique (1972) par Atari

---

## 📊 Project Stats

- **Development Time**: ~4 hours
- **Lines of Code**: ~300
- **Scenes**: 5
- **Scripts**: 5
- **Version**: 1.0 (Production Ready)

---

**⭐ If you found this project helpful, please consider giving it a star!**
