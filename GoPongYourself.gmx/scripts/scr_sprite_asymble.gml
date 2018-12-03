///scr_sprite_asymble(Object, Object Sprite, Speed, Radius, Chunk Size,x,y);

// Get sprite
sprite = argument1;

/* Get sprite width and height
This is used to run through the for loop
and get each peice of the sprite
*/
ww = sprite_get_width(sprite);
hh = sprite_get_height(sprite);

/* Get sprite offset
This is used to make sure that the particles being
created are ALWAYS aligned with the the sprite
*/
xoff = sprite_get_xoffset(sprite);
yoff = sprite_get_yoffset(sprite);

// Asymble Speed
asymble_speed = argument2;

// Creation Radius
radius = argument3;

// Chunk Size
chunksize = argument4;

// Create the particle
for (i = 0; i < ww; i += chunksize) {
    for (j = 0; j < hh; j += chunksize) {
        particle = instance_create(argument5 + irandom_range(-radius, radius), argument6 + irandom_range(-radius, radius), obj_asymble_particle);   // Create a particle at a random position inside the range
        particle.spr = sprite;                                  // Pass in the correct sprite
        particle.size = chunksize;                              // Pass in the correct sprite peice
        particle.alpha = 0;                                     // Make inital particle invisible
        particle.timeleft = irandom_range(1, asymble_speed);    // Time the particle has to get into position
        particle.end_x = (argument5 - xoff) + i;                  // end X-coord for the particle peice
        particle.end_y = (argument6 - yoff) + j;                  // end Y-coord for particle peice
        particle.obj_end_x = argument5;                           // Object end X-coord
        particle.obj_end_y = argument6;                           // Object end Y-coord
        particle.spd = argument2;                               // Total time to asymble
        particle.obj = argument0;                               // Object to asymble
        particle.xx = i;                                        // X 
        particle.yy = j;                                        // Y
    }
}
