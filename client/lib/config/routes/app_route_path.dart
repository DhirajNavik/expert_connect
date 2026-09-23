enum AppRoute {
  login(path: "/login", pathName: "login"),
  signup(path: "/signup", pathName: "signup"),
  initialPage(path: "/initialPage", pathName: "initialPage"),
  home(path: "/home", pathName: "home"),
  profileStepper(path: "/profileStepper", pathName: "profileStepper");

  final String path;
  final String pathName;
  const AppRoute({required this.path, required this.pathName});
}
