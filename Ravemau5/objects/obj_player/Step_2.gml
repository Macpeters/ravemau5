/// @description Fighting

//Attacking



//Getting Hurt
if(hurtClock > 0){
    visible = !visible;
    hurtClock -= 1;
}else{
    visible = true;
}

///Sprites
event_inherited();
if(!inAir){ 
    if(hspd != 0){
        if(sprite_index != running_sprite){
            image_index = 0;
        }
        sprite_index = running_sprite;
    }
    if(hspd == 0){
        if(sprite_index != standing_sprite){
            image_index = 0;
        }
        sprite_index = standing_sprite;
    }
}else{
    sprite_index = jumping_sprite;
    if(vspd <= -1){
        image_index = 0;
    }else if(vspd >= 1){
        image_index = 2;
    }else{
        image_index = 1;
    }
}

//Attacking
if(attClock > 0 && curAttack == 0){
   // sprite_index = spr_player_fight;
   // image_index = 14-(attClock);
    attClock -= 1;
}

//Direction
if(hspd > 0){
    image_xscale = 1;
}else if(hspd < 0){
    image_xscale = -1;
}

///Controls

//jumping
jumping = keyboard_check(kJump) || global.upMove;
if(jumping && inAir == false){
   vspd = -15;
}
//left and right movement
movingRight = keyboard_check(kRight) || global.rightMove;
movingLeft = keyboard_check(kLeft) || global.leftMove;

if(movingRight && !movingLeft && hspd < 10){
    hspd = min(hspd+2, 10);
}
if(movingLeft && !movingRight && hspd > -10){
    hspd = max(hspd-2, -10);
}

//attacking
/*
if keyboard_check(kAction) && attClock == false {
 attClock = 14;
 curAttack = 0;
 with instance_create(x,y,par_attack) {
  sprite_index = mask_player_attack;
  owner = par_player;
  image_xscale = other.image_xscale;
 }
}*/


/* */
///Check stats
global.hp = hp;
if(hp <= 0){
      global.hp = 0;
      alert = instance_create(self.x, self.y, par_alert);
      alert.alertType = global.DEATH;
      instance_destroy();
}else if(hp > maxHp){
    hp = maxHp;
}

/* */
/*  */
