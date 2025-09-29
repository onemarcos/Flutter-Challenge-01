# challenge01

A simple layout challenge during the process of learning Dart/Flutter. 


=LET(
  d1; CHOISIRCOLS('Enquete éligible'!D:G; 1; 2; 4);
  d2; CHOISIRCOLS('Enquete Non éligible'!D:G; 1; 2; 4);
  tout; VSTACK(
          HSTACK(MAKEARRAY(LIGNES(d1);1;LAMBDA(r;c;"Enquete éligible")); d1);
          HSTACK(MAKEARRAY(LIGNES(d2);1;LAMBDA(r;c;"Enquete Non éligible")); d2)
        );
  propre; FILTRE(tout; PARLIGNE(CHOISIRCOLS(tout;2;3;4); LAMBDA(r; SOMME(--(r<>""))>0 )));
  VSTACK({"Origine"\"D"\"E"\"G"}; propre)
)
