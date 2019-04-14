timeToExist = 50;

//create particle system
sparkle = part_system_create();
part_system_depth(sparkle, -200);

//create particle
sparklybit = part_type_create();
/* shape options: disc, pixel, square, line, star, circle, ring, sphere, 
flare, spark, explosion, cloud, smoke, snow */
part_type_shape(sparklybit, pt_shape_spark);
//min, max, change over time
part_type_orientation(sparklybit, 0, 359, 0, 0, 1);
part_type_size(sparklybit, 0.05, 0.25, 0, 0);
part_type_speed(sparklybit, 0.5, 1, 0.05, 0);
part_type_direction(sparklybit, 50, 120, 1, 20);
part_type_life(sparklybit, 150, 200);
//Colour blending not supported in HTML5 causes slowdown and no visible particles
//part_type_color_rgb(sparklybit, 0, 255, 0, 255, 0, 255);

//turn it on
sparkle_emitter = part_emitter_create(sparkle);
//particle system, emitter, minX, maxX, minY, maxY, shape, distribution
//shape options: ps_shape_rectangle, ellipse, diamond, line
//distribution options: ps_distr_linear, gaussian, invgaussian
part_emitter_region(sparkle, sparkle_emitter, x-100, x+100, y-100, y+100, ps_shape_ellipse, ps_distr_gaussian);
//negative number means 1:n chance of a particle, positive number is n particles created each frame
part_emitter_stream(sparkle, sparkle_emitter, sparklybit, -2);

/* */
/*  */