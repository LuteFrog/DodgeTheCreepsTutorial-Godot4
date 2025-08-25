# 'Doge the Creeps' Godot Tutorial

This is a finished version of the tutorial game taught in the video [Code Your First Complete 2D Game with Godot by GDQuest](https://www.youtube.com/watch?v=WEt2JHEe-do).

![Test](art/Thumbnail.jpg "Code Your First Complete 2D Game with Godot by GDQuest.")\

## Changes from Godot 3 to Godot 4

Some adjustments where made in the code to run on Godot 4, as the tutorial was made for Godot 3:

| Godot 3  | Godot 4 |
| ------------- |-------------|
| `yield($StartTimer, "timeout")`  | `await($StartTimer.timeout)`     |
| `export (PackedScene) var mob_scene` | `@export var mob_scene: PackedScene`     |
| `mob_spawn_location.unit_offset= randf()`   | `mob_spawn_location.progress_ratio = randf()` |
| `var mob = mob_scene.instance()`  |  `var mob = mob_scene.instantiate()`|
| Node Position2D  | Node Marker2D|