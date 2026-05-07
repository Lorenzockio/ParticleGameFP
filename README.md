# ParticleGameFP
- Requires App: Data OSC
- Connect to personalIP and port 57121
- Turn on Motion with Accelerometer

How to run:
- npm install express ws osc-min
- node server.mjs
- http-server . -c-1

# Explanation
This is a simple particle game where you control a green circle to collect blue squares. If you are touched by a red circle, you must start from the beginning. Each shape is a particle. The player particle is controlled by tilting a cellphone forward, backward, and side to side. This is done with Open Sound Controls using the Data OSC app to utilize accelerometer data. The particle will accelerate to a max speed based on the tilt direction and ammount. You can interact with the environment by bouncing off walls. After collecting a fixed ammount of blue squares, enemy particles will spawn.
