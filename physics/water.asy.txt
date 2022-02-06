import three;

// PICTURE SETUP
currentprojection=perspective(300,-650,500);
currentlight.background=palecyan;
defaultrender=render(compression=Zero,merge=true);

/*
We are modelling water, a very powerful molecule.
We need only H and O, but we will need 2 molecules of water,
because it seems To involve 4 H atoms with 2 O. Chemists, especially using
Resonance Imaging, have decided it is a combination of two ions.
hydronium (H3O+) and hydroxide(OH-), which makes up 2H2O.
*/
/*
We are going to let O be black and H white again, 
to facilitate comparing with Kekule, which was drawn that way
However we will need to be adapting radii, bond lenghts, and such, as we learn.
Not even sure yet whether atomic, ionic, covalent radii?
*/

/* For a better H2O perhaps try first connecting 2 H to each O, 
then that bond can rotate and an H alternately switch O for the next step
*/

// ATOM SETUP
surface oxygen=scale3(10)*unitsphere; // 70 pm
surface hydrogen=scale3(5)*unitsphere; // 25 pm

// POSITIONS OF ATOMS for construcutng and arrangement
// 2 O o1-o2
// 4 H h1-h4
triple o1=(0,0,0);
triple o2=o1+(0,40,0);
triple h1=o1+(0,20,10);
triple h2=o1+(0,20,20);
triple h3=o1+(0,20,-10);
triple h4=o1+(0,20,-20);
// THE PENS for O (BlacK) and H(White)
pen Black=gray(0.4);
material White=material(diffusepen=gray(0.4),emissivepen=gray(0.6));


// Drawing the structure
pen thick=linewidth(2);
//draw(o1--o2,thick);
// Drawing the atoms
	// The 2 oxygen
draw(shift(o1)*oxygen,Black);
draw(shift(o2)*oxygen,Black);
//Adding The 4 Hydrogen
draw(shift(h1)*hydrogen,White);
draw(shift(h2)*hydrogen,White);
draw(shift(h3)*hydrogen,White);
draw(shift(h4)*hydrogen,White);

/*
Now we try connecting the hydrogens but using thin rather than thick lines
*/
draw(o1--h1,thick);
draw(o1--h3,thick);
draw(o2--h2,thick);
draw(o2--h4,thick);
