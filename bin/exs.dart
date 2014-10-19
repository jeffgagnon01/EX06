import 'package:two_files/fcns.dart';   // Source : two_files de Prof. Dzenan

ex06_q1() {
  var exemple_a = 'Laval'; //Source: http://www.gentside.com/figure-de-style/palindrome-20-exemples-de-mots-qui-se-lisent-a-l-039-envers_art49582.html
  var exemple_b = 'Elu par cette crapule!';
  var exemple_c = 'Esope reste ici et se repose...';
  var exemple_d = "Ceci n'est pas un palindrome";
  
  exemple_a = exemple_a.toLowerCase();  // permet de standardiser nos strings avec des lettres minuscules
  exemple_b = exemple_b.toLowerCase();
  exemple_c = exemple_c.toLowerCase();
  exemple_d = exemple_d.toLowerCase();
  
  exemple_a = exemple_a.replaceAll(new RegExp(r'\W+'), ''); // permet de standardiser nos strings (Reference : REGEX)
  exemple_b = exemple_b.replaceAll(new RegExp(r'\W+'), ''); // Source: Letter frequency example_Ondart examples
  exemple_c = exemple_c.replaceAll(new RegExp(r'\W+'), '');
  exemple_d = exemple_d.replaceAll(new RegExp(r'\W+'), '');
  
  print('Question 1: Determine if a given string is a palindrome.');
  print('Exemple A: ${exemple_a} Reponse: ${palindrome(exemple_a)}');
  print('Exemple B: ${exemple_b} Reponse: ${palindrome(exemple_b)}');
  print('Exemple C: ${exemple_c} Reponse:${palindrome(exemple_c)}');
  print('Exemple D: ${exemple_d} Reponse: ${palindrome(exemple_d)}');
  print('');
}

ex06_q2() {
  print('Question 2 : Calculate the number of days between two dates.');
  
  DateTime date_a=new DateTime(2014,12,24);  // inserer la date A desiree (ex. ma date de fete, Noel)
  DateTime date_b = new DateTime(2014,10,17);  // inserer la date B desiree (ex. aujourd'hui)
  
  print('Jour A : ${date_a}');
  print('Jour B : ${date_b}');
  
  var chrono = timespan(date_b,date_a);
 
  print('Il y a ${chrono} jours entre la date A et la date B, ou plutôt ${chrono} jours avant Noel!!');
  print('');
}

ex06_q3() {
  print('Question 3 : Convert number grades to letter grades by using a standard.');
  var note = 45;  //inserer votre note (num) ici (ex. 45, 45.111, 100, etc.)
  print("L'équivalent d'une note de ${note}% = ${tableaudeconversion(note)}");
  print('\n');  // language permettant d'inserer une nouvelle ligne
}

ex06_q4() {
  print('Question 4 : Given a list of names, make a list of three lists, first with names shorter than 8 letters, second with names longer than 8 letters, and third with names that are 8 letters long.');
  
  var noms = ['Canada', 'Mexique', 'États-Unis', 'Haïti', 'Brésil', 'Chili', 'Guatemala', 'Colombie', 'République dominicaine', 'Équateur', 'Argentine', 'Pérou'];
  assert (noms is List);
  print('Partie 1 - Voici la liste entière des noms : ${noms}');
  print('');
  
  print('Partie 2 - Voici les 3 listes classées selon le nombre de charactères:');
  print('${Liste_pays(noms)}');
  print('\n');
}

ex06_q5() {
  print('Question 5 : Prepare two lists, one with the names of players and the other with the names of clubs. Make the third list with clubs ordered by their names, where each club is followed by its list of players.');
  
  var parties = new Map();
  parties[1] = 'Parti Libéral du Québec';
  parties[2] = 'Parti Québécois';
  parties[3] = 'Coalition Avenir Québec';
  parties[4] = 'Québec Solidaire';
  
  var listparties = parties.values.toList();
  assert(listparties is List);
  print ('Partie 1 - Voici la liste des partis politiques : ${parties}');
  
  var deputees = new Map();
  deputees['Couillard'] = 1;  // Valeur attribuée en fonction de leur parti respectif
  deputees['Barette'] = 1;
  deputees['David'] = 4;
  deputees['Khadir'] = 4;
  deputees['Marois'] = 2;
  deputees['Gaudreault'] = 2;
  deputees['Peladeau'] = 2;
  deputees['Charest'] = 1;
  deputees['Legault'] = 3;
  deputees['Deltell'] = 3;
  deputees['Roy'] = 3;
  
  var listdeputees = deputees.keys.toList();
  assert(listdeputees is List);
  print ('Partie 2 - Voici la liste des députés : ${deputees}');
    
  // Partie 3    
  listparties.sort();
  print('Partie 3 - Voici la liste des partis (ou clubs) triés par ordre alphabétique: ${listparties}.');
 
 // Finalement, faire une map dont Parties = Key et Deputees = Values
  var ListeNo3 = ChambreDesCommunes(parties, deputees);
  //ListeNo3.sort((deputees,parties) => deputees[0].compareTo(parties[0]));
  print (ListeNo3);
} 

main() {
  ex06_q1();
  ex06_q2();
  ex06_q3();
  ex06_q4();
  ex06_q5();
}
