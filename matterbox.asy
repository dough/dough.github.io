size(0,480);
import geometry;
defaultpen(6);

pair ldn=(0,0);
pair ldf=(1,1);
pair lun=(0,2);
pair luf=(1,3);
pair rdn=(2,0);
pair rdf=(3,1);
pair run=(2,2);
pair ruf=(3,3);

draw(ldn--lun,red);
draw(ldn--rdn,red);
draw(ldn--ldf,red);

draw(luf--ruf,blue);
draw(run--ruf,blue);
draw(rdf--ruf,blue);

draw(ldf--luf,green);
draw(luf--lun,green);
draw(lun--run,green);
draw(run--rdn,green);
draw(rdn--rdf,green);
draw(rdf--ldf,green);

label("$BECOME$",(0,0),SW);
label("$PERISH$",(3,3),NE);
