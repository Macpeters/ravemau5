/// @description Shoot if ready, otherwise advance clock
shooting_clock += 1;
if(shooting_clock == shooting_speed * multiplier){
    bullet = instance_create(x, y, par_projectile);
    bullet.hspd = lengthdir_x(1, image_angle-90)*pwr;
    bullet.vspd = lengthdir_y(1, image_angle-90)*pwr;
    shooting_clock = 0;
}

