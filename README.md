# ParticleGameFP
- Requires App: Data OSC
- Connect to personalIP and port 57121
- Turn on Motion with Accelerometer

How to run:
- npm install express ws osc-min
- node server.mjs
- http-server . -c-1

# Explanation
This is a simple particle game where you control a green circle to collect blue squares. If you are touched by a red circle, you must start from the beginning. Each shape is a particle. The player particle is controlled by tilting a cellphone forward, backward, and side to side. This is done with Open Sound Controls using the Data OSC app to utilize accelerometer data. The particle will accelerate to a max speed based on the tilt direction and ammount. You can interact with the environment by bouncing off walls. After collecting a fixed ammount of blue squares, enemy particles will spawn. They have a smaller radius and a lower max speed. They will also bounce off of each other. There are 30 blue squares to collect and 10 possible enemies at a time. After collecting all the squares, the game continues indefinitely. If a red circle touches you or you orient your phone screen down, the game restarts. 

# Challenges
After setting up the Open Sound Controls, most difficulties came from managing three particle behaviors in a single shader pipeline. I gave the player particle a level counter, starting at 1. The other particles use this property to store a set level. The 30 squares have levels 1-30. When the level euqal to the player level, they become visible and interactable. When the player collects a square, their level is increased and a new square is revealed. The enemies have levels 3, 6, 9, ... , 30. They are visible, interactable, and can move when their level is greater than or equal to the player level. 

# Inspiration
Recently, I have been playing an FPS game called Devil Daggers. It's a single level game set in a flat platform where the same enemies spawn at the same times no matter what. The goal is to survive as long as possible. This makes sucess in the game entirely based on skill. I wanted to emulate this experience in a single 2D particle shader. The most common enemy in the game, is a horde of skulls that follow you around. I created my enemies with the same idea. 
