## InputHandler Usage

The `InputHandler` script should be attached to a `Node` in your scene. It acts as the central point for collecting input from one or more input sources.

### Setup

In the `_ready()` function of your `InputHandler`, create instances of your `InputType` classes and add them to the `inputs` array.

```gdscript
func _ready() -> void:
    inputs.append(InputType.new())
```

Each entry in the `inputs` array should be an instance of `InputType` or one of its subclasses.

### Creating Custom Input Types

To define a new type of input, create a subclass of `InputType` and override its `get_input()` function.

Use `get_input()` to gather whatever input data your game needs, such as movement, aiming, jumping, menu navigation, or interaction input.

```gdscript
class_name MovementInput
extends InputType

func get_input() -> void:
    # Gather input here
    SignalBus.some_signal.emit(example_input)
```

### How Input Is Broadcast

After input is collected, it is emitted through the global signal bus. Any node in your scene can connect to the relevant signal and respond to the input without needing a direct reference to the `InputHandler`.
