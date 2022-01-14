/// Navigation state object
///
/// Acts as intermediary between URL string and the app state.
///
/// Purpose is to parse the navigation configuration to and from a URL string.
class AppLink {
  static const kHomePath = 'home';
  static const kOnboardingPath = '/onboarding';
  static const kLoginPath = '/login';
  static const kProfilePath = '/profile';
  static const kItemPath = '/item';

  static const kTabParm = 'tab';
  static const kIdParam = 'id';

  String? location;
  int? currentTab;
  String? itemId;
  AppLink({
    this.location,
    this.currentTab,
    this.itemId,
  });

  String _addKeyValPair({
    required String key,
    String? value,
  }) {
    return value == null ? '' : '$key=$value&';
  }

  /// Converting a URL string to an AppLink
  static AppLink fromLocation(String? location) {
    location = Uri.decodeFull(location ?? '');

    final uri = Uri.parse(location);
    final params = uri.queryParameters;

    final currentTab = int.tryParse(params[AppLink.kTabParm] ?? '');
    final itemId = params[AppLink.kIdParam];

    final link = AppLink(
      location: uri.path,
      currentTab: currentTab,
      itemId: itemId,
    );

    return link;
  }

  /// Converting an AppLink to a URL string
  String toLocation() {
    switch (location) {
      case kLoginPath:
        return kLoginPath;
      case kOnboardingPath:
        return kOnboardingPath;
      case kProfilePath:
        return kProfilePath;
      case kItemPath:
        var loc = '$kItemPath?';
        loc += _addKeyValPair(
          key: kIdParam,
          value: itemId,
        );
        return Uri.encodeFull(loc);
      default:
        var loc = '$kHomePath?';
        loc += _addKeyValPair(
          key: kTabParm,
          value: currentTab.toString(),
        );
        return Uri.encodeFull(loc);
    }
  }
}
