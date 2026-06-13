# How to use
The InputHandler script is supposed to be applied to a Node in your scene. In its _ready() function, you need to instantiate an InputType and add it to the inputs array.
Additionally, you need to make new subclasses of InputType and override the get_input function, where you gather the needed input. This input is then emitted via a global signal bus and connected to by any other node in your scene. 
