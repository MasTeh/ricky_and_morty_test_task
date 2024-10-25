abstract class Config {
  const Config();

  String get baseUrl;
}


class DevConfig implements Config {
  @override
  String get baseUrl => "https://rickandmortyapi.com/";
}

class ProdConfig implements Config {
  @override
  String get baseUrl => "https://rickandmortyapi.com/";
}