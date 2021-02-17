/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Interface define os metódos utilizados pela classe ClientHttpService */
/* Referência - https://medium.com/codespace69/flutter-interfaces-with-dart-programming-34b3094387fc*/

abstract class IClientHttpService {
  Future<dynamic> get(String urlAPI);
}
