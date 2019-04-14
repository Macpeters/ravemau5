timeToExist = 500;

//create particle system
sparkle = part_system_create();
part_system_depth(sparkle, -200);

//create particle
sparklybit = part_type_create();

part_type_sprite(sparklybit, spr_note, false, false, false);
part_type_orientation(sparklybit, 0, 0, 0, 0, 0);
part_type_size(sparklybit, 0.52, 0.5, 0, 0);
part_type_speed(sparklybit, 0.2, 0.7, 0.05, 0);
part_type_direction(sparklybit, 0, 120, 0, 0);
part_type_life(sparklybit, 50, 100); 

//turn it on
sparkle_emitter = part_emitter_create(sparkle);
//particle system, emitter, minX, maxX, minY, maxY, shape, distribution
//shape options: ps_shape_rectangle, ellipse, diamond, line
//distribution options: ps_distr_linear, gaussian, invgaussian
part_emitter_region(sparkle, sparkle_emitter, x-5, x+5, y-5, y+5, ps_shape_ellipse, ps_distr_gaussian);
//negative number means 1:n chance of a particle, positive number is n particles created each frame
part_emitter_stream(sparkle, sparkle_emitter, sparklybit, -20);

