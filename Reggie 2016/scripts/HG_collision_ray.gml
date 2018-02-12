///HG_collision_ray(World, X, Y, Direction [DEG], Precision, Max Distance)
/*

 See Mercury's Manual, section "Collisions".

*/
var i,a,mx,my,sx,sy,prec,cs,cg,ww,wh,xx,yy;
var gx,gy,ogx,ogy,shape,tx,ty;

if argument0=-1
 argument0=global.HG_DEFAULT_WORLD;

prec=argument4;

sx=argument1;
sy=argument2;

cs=hg_world_get_attribute(argument0,"cellSize");
ww=hg_world_get_attribute(argument0,"width")*cs-1;
wh=hg_world_get_attribute(argument0,"height")*cs-1;
cg=hg_world_get_attribute(argument0,"colGrid");

mx=+dcos(argument3);
my=-dsin(argument3);

gx=-1;
gy=-1;
for (i=0; i<=argument5; i+=prec) begin

 xx=sx+i*mx;
 yy=sy+i*my;

 if point_in_rectangle(xx,yy,0,0,ww,wh) {
  
  //*** Inline Collision point (modified):
  
  ogx=gx;
  ogy=gy;
  
  gx=(xx div cs);
  gy=(yy div cs);

  if (gx<>ogx or gy<>ogy)
   shape=cg[#gx,gy];
   
  switch (shape) begin
  
   case HG_SHAPE.empty:
    break;
   
   case HG_SHAPE.full:
     a[0]=xx;
     a[1]=yy;
     return a;
    break;
   
   default:
     tx=(xx mod cs);
     ty=(yy mod cs);
     if (hg_point_in_shape(tx,ty,shape,cs)=true) {
      a[0]=xx;
      a[1]=yy;
      return a;
      }
    break;
  
  end; 
   
  //*** End inline;
  
  }

end;

a[0]=undefined;
a[1]=undefined;
return a;





