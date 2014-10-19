library fcns;

// ex06_q1

palindrome(String texte) {  
  var droit = 0;
  var revers = texte.length - 1;   // Reference : Last Index example_Ondart examples 
  while (droit < revers) {
    if (texte[droit] != texte[revers]) {
      return false;
    }
    droit = droit +1;
    revers = revers -1;
  }
  return true;
}

// ex06_q2

timespan(DateTime date_a, DateTime date_b) {  //Reference : Ex04_Question3
  Duration timediff = date_a.difference(date_b);
  return timediff.inDays.abs();
}

// ex06_q3

tableaudeconversion(num note) {  // Source : http://cs.smith.edu/~orourke/Grading.html
  if (note>=97.5)
    return 'A+';
  else if (note>=92.5)
    return 'A';
  else if (note>=90.0)
    return 'A-';
  else if (note>=87.5)
    return 'B+';
  else if (note>=82.5)
    return 'B';
  else if (note>=80.0)
    return 'B-';
  else if (note>=77.5)
    return 'C+';
  else if (note>=72.5)
    return 'C';
  else if(note>=70.0)
    return 'C-';
  else if (note>=67.5)
    return 'D+';
  else if (note>=62.5)
    return 'D';
  else if (note>=60.0)
    return 'D-';
  else if (note<60.0)
    return 'E';
 }

// ex06_q4
Liste_pays(noms) {
  var court = [];  
  var long = [];
  var egal = [];
  for (int i = 0; i < noms.length; i++) {  // permet de determiner la longueur de chaque parametre par rapport a 8 characteres
    var longueur = noms.elementAt(i);
    if (longueur.length < 8) {
      court.add(longueur);
    } else if (longueur.length > 8) {
      long.add(longueur);
    } else if (longueur.length == 8) {
      egal.add(longueur);
    }
  } // Prof Dzenan, pourquoi une valeur null apparait-elle ???
  
  print('Ceux de moins de 8 lettres: ${court}');  // Astuce : Mettre les focntions print en dehors des accolades <<for>>, sinon impression pour chaque loop ! :)  
  print('Ceux de 8 lettres: ${egal}');
  print('Ceux de plus de 8 lettres: ${long}');
}

// ex06_q5
ChambreDesCommunes(var parties, var deputees) {
 
   var liste = new List();
   var partipolitique = deputees.values.toList();
   var chambrecommunes = deputees.keys.toList();
   
   for(int i = 0; i < deputees.length; i++)
   {
     var numeroduparti = partipolitique[i];
     var nomduparti = parties[numeroduparti]; 
     var nomdudepute = chambrecommunes[i];
     var serie = nomduparti+'/'+nomdudepute;
     
     liste.add(serie);
   }
   liste.sort((deputees,parties) => deputees[0].compareTo(parties[0])); // Attention, mettre hors de l'accolade sinon seul le premier parti resort de la boucle dans la listeNo3
   return liste;
 }
  


