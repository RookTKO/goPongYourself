///scr_Laser_Draw(x, y, xx, yy, width, height, range, effect_width, tex, laser_wid, colour, spr, additive)

/*
Script arguments:

x = starting x                                                 argument0
y = starting y                                                 argument1
xx = finishing x                                               argument2
yy = finishing y                                               argument3
sc_w = room / view width                                       argument4       
sc_h = room / view screen height                               argument5
rng = distortion range (between 1 and 10 is best)              argument6
e_wid = width of effect                                        argument7
tex = texture to use (usually from a surface)                  argument8
l_wid = width of laser (only use if no sprite is selected)     argument9
col = laser colour                                             argument10
spr = sprite for drawing the laser (optional, use -1 for none) argument11
additive = additive blending: 0 = none, 1 = laser, 2 = all     argument12

*/

var p, dir, dist, xx, yy, u, w;

//This will control which side of the strip is drawn...
u = true;

//get the direction for drawing...
dir = point_direction(argument0, argument1, argument2, argument3);

//We need to know how many triangles are going to make up the strip,
//So we take the distance and round it then divide by 10...
//Why 10? Because each triangle will have a base of 10px...
//This code also establishes a minimum number which is 6 (3 up, 3 down)
dist = max(6, round(point_distance(argument0, argument1, argument2, argument3) / 10));

//We need an even number of triangles or the up and down strips won't match 
if (dist mod 2) != 0 dist++;

//This variable will be used to calculate the vertices of each triangle...
p = 10;

//Set the distortion range
r = argument6;

//Set the distortion effect width...
w = argument7;

//As we are creating a strip of triangles, we need to have two different coordinate
//sets - one for the center line, and one for the outside edge as it goes up and down.
//Here we set the first set of outside edge coords...
xx = argument0 + lengthdir_x(w, dir - 90);
yy = argument1 + lengthdir_y(w, dir - 90);

//If additive blending is set for all then set the blend mode
if argument12 == 2
{
draw_set_blend_mode(bm_add);
}

//Set texture detials and begin to draw the primitive...
texture_set_repeat(true);
draw_primitive_begin_texture(pr_trianglestrip, argument8)

//the first vertex...
draw_vertex_texture_color(argument0, argument1, argument0 / argument4, argument1 / argument5, c_white, 1);

//Now we are going to do a loop to draw the rest of the vertex...
repeat(dist)
    {
    var rnd;
    //this sets the distortion amount...
    rnd = r - random(r * 2);
    //draw the first (right) row of triangles...
    draw_vertex_texture_color(xx + lengthdir_x(p, dir) + r - random(r * 2),
                              yy + lengthdir_y(p, dir) + r - random(r * 2),
                              (xx + lengthdir_x(p, dir)) / argument4,
                              (yy+lengthdir_y(p, dir)) / argument5,
                              c_white,
                              0);
    draw_vertex_texture_color(argument0 + lengthdir_x(p + 10 - rnd, dir),
                              argument1 + lengthdir_y(p + 10 - rnd, dir),
                              (argument0 + lengthdir_x(p + 10, dir)) / argument4,
                              (argument1 + lengthdir_y(p + 10, dir)) / argument5,
                              c_white,
                              1);
    p += 20;
    if p >= dist * 10 && u
        {
        u = false;
        //if we have drawn the first half, prepare the coords for going up the left side...
        xx = argument0 + lengthdir_x(w, dir + 90);
        yy = argument1 + lengthdir_y(w, dir + 90);
        p = 10;
        //End the current primitive...
        draw_primitive_end();
        //Start the next one for the left side of the beam
        draw_primitive_begin_texture(pr_trianglestrip, argument8);
        draw_vertex_texture_color(argument0, argument1, argument0 / argument4, argument1 / argument5, c_white, 1);
        }     
    }
//Finish drawing the primitive...
draw_primitive_end();

//Set the blend to additive for a nice glowy effect...
if argument12 == 1
{
draw_set_blend_mode(bm_add);
}

//Check for a sprite, and if there is none, then draw a line...
if argument11 >= 0
{
draw_sprite_ext(argument11, 0, argument0, argument1, point_distance(argument0, argument1, argument2, argument3), 1, point_direction(argument0, argument1, argument2, argument3), argument10, 1);
}
else
{
draw_line_width_color(argument0, argument1, argument2, argument3, argument9, argument10, argument10);
}
    
//Reset blending if active
if argument12 > 0
{
draw_set_blend_mode(bm_normal);
}
