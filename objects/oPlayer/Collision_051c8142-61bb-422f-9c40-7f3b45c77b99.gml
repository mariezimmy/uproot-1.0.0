//only allow collision if it hasnt just been knocked back
if(knockback==-1) {
	if(oSmallMush.hsp>0) x+=5; else x-=5; //knockback based on direction enemy was moving
	collided = true;
}