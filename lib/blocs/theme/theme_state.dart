part of 'theme_bloc.dart';

class ThemeState extends Equatable{
  final Brightness brightness;

  ThemeState(this.brightness);
  @override
  List<Object> get props => [brightness];
}