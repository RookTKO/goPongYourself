var sw = surface_get_width(application_surface);
var sh = surface_get_height(application_surface);

if !surface_exists(surf)
{
surf = surface_create(sw, sh);
}

if !surface_exists(blur_surf)
{
blur_surf = surface_create(sw / 2, sh / 2);
}

surface_set_target(blur_surf);
draw_surface_ext(application_surface, 0, 0, 0.5, 0.5, 0, c_white, 1);
surface_reset_target();
surface_set_target(surf);
draw_surface_ext(blur_surf, 0, 0, 2, 2, 0, c_white, 1);
surface_reset_target();

tex = surface_get_texture(surf);
srf_w = surface_get_width(surf);
srf_h = surface_get_height(surf);
tex_w = texture_get_width(tex);
tex_h = texture_get_height(tex);

draw = true;
