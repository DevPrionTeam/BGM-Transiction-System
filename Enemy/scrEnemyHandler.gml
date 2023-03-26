//scrEnemyHandler();

// Simple Gravity
if(!place_meeting(x, y+1, ObjWalls))
{
    vsp += grav;
}

// Fall Speed limit
if(vsp > 10) vsp = 10;

// Y Axis
if(place_meeting(x, y+vsp, ObjWalls))
{
    while(!place_meeting(x, y+sign(vsp), ObjWalls))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

// Aplying coord to speed variable. 
y += vsp;
