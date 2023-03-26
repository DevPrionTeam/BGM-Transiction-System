///scrPlayerHandler();

// Gravity
if(!grounded) vsp += grav;

// Movement
var move = key_r + key_l;
hsp = move * moveSpeed;

// Fall Speed limit
if(vsp > 10) vsp = 10;

// Jump
if(key_a && grounded){
    vsp = -jumpForce;
    grounded = 0;
}
if(vsp < 0) && (!key_a_held) vsp = max(vsp,-minJumpSpeed);// Jump Height


// -> Pixel perfect collision.
// X axis.
if(place_meeting(x+hsp, y, ObjWalls))
{
    while(!place_meeting(x+sign(hsp), y, ObjWalls))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

// Y axis.
if(place_meeting(x, y+vsp, ObjWalls))
{
    while(!place_meeting(x, y+sign(vsp), ObjWalls))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

// Continuous Grounded Check. [ gross way -> fast solution ]
if(place_meeting(x, y+1, ObjWalls)){
    grounded = 1;
    //[ MORE CHECKS HERE IF NEEDED].
} else if(place_meeting(x, y-1, ObjWalls)){
    grounded = 0;
    vsp = 1;// pushes you down .
} else {
    grounded = 0;
}

// Assigning Coords to speed
x += hsp;
y += vsp;
