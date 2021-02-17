/* Desenvolvido por Leandro M. Loureiro */
/* Linkedin - https://www.linkedin.com/in/leandro-loureiro-dev */
/* Github - https://github.com/leandromltec */

/* Objeto Influencer - regras de negócios para página Influencers recebidas no formato JSON */
/* Documentação pesquisada sobre classes em dart - https://dart.dev/guides/language/language-tour */
class Influencer {
  String nome;
  String urlLogo;
  String urlYoutube;
  double urlInstagram;
  String urlFacebook;

  Influencer(this.nome, this.urlLogo, this.urlYoutube, this.urlInstagram,
      this.urlFacebook);

  /* Converte um Map com informações em JSON para o objeto Influencer */
  Influencer.fromJson(Map<String, dynamic> json) {
    print("entrou no json");
    if (json != null) {
      nome = json['nome'].toString();
      urlLogo = json['url_logo'].toString();
      urlYoutube = json['url_youtube'].toString();
      urlInstagram = json['url_facebook'];
    }
  }
}
