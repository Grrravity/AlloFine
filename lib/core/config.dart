String get omdbApiKey {
  return const String.fromEnvironment('OmdbApiKey', defaultValue: '1234');
}

String get omdbBaseUrl {
  return 'https://www.omdbapi.com';
}
