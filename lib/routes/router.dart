import 'package:auto_route/auto_route_annotations.dart';
import 'package:whatsup_flutter/home_screen.dart';
import 'package:whatsup_flutter/issues/june2020/pr54128_material_scrollbar_is_always_shown.dart';
import 'package:whatsup_flutter/issues/june2020/pr56409_interactive_viewer.dart';
import 'package:whatsup_flutter/issues/june2020/pr57644_tab_bar_physics.dart';
import 'package:whatsup_flutter/issues/june2020/pr57733_list_tile_shape.dart';
import 'package:whatsup_flutter/issues/june2020/pr57868_checkbox_list_tile_content_padding.dart';
import 'package:whatsup_flutter/issues/june2020/pr58037_switch_list_tile_control_affinity.dart';
import 'package:whatsup_flutter/issues/june2020/pr58154_checkbox_list_tile_null_value.dart';
import 'package:whatsup_flutter/issues/june2020/pr58201_material_button_disabled_elevation.dart';
import 'package:whatsup_flutter/issues/june2020/pr58392_cupertino_pull_to_refresh.dart';
import 'package:whatsup_flutter/issues/june2020/pr58593_sliver_app_bar_collapsed_height.dart';
import 'package:whatsup_flutter/issues/june2020/pr58708_app_bar_shadow_color.dart';
import 'package:whatsup_flutter/issues/june2020/pr59010_scale_input_decorator_label_width.dart';
import 'package:whatsup_flutter/issues/june2020/pr59117_focus_highlight_radius.dart';
import 'package:whatsup_flutter/issues/june2020/pr59191_timepicker_redesign.dart';
import 'package:whatsup_flutter/issues/june2020/pr59586_datepicker_keyboard_navigation.dart';
import 'package:whatsup_flutter/issues/june2020/pr59641_expanded_divider_color.dart';
import 'package:whatsup_flutter/issues/june2020/pr59807_text_field_label.dart';
import 'package:whatsup_flutter/issues/june2020/pr59405_app_bar_toolbar_height.dart';
import 'package:whatsup_flutter/issues/june2020/pr59405_string_characters.dart';
import 'package:whatsup_flutter/issues/june2020/pr60129_fix_ink_feature.dart';
import 'package:whatsup_flutter/issues_list.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute<void>(page: HomeScreen, initial: true),
  MaterialRoute<String>(page: IssuesList),

  //////////////
  /// July 2020
  //////////////

  //////////////
  /// June 2020
  //////////////
  MaterialRoute<void>(page: Pr60129FixInkFeature),
  MaterialRoute<void>(page: Pr59405AppBarToolbarHeight),
  MaterialRoute<void>(page: Pr59405StringCharacters),
  MaterialRoute<void>(page: Pr58392CupertinoPullToRefresh),
  MaterialRoute<void>(page: Pr59586DatePickerKeyboardNavigation),
  MaterialRoute<void>(page: Pr59191TimePickerRedesign),
  MaterialRoute<void>(page: Pr59807TextFieldLabel),
  MaterialRoute<void>(page: Pr59641ExpandedDividerColor),
  MaterialRoute<void>(page: Pr56409InteractiveViewer),
  MaterialRoute<void>(page: Pr58708AppBarShadowColor),
  MaterialRoute<void>(page: Pr59117FocusHighlightRadius),
  MaterialRoute<void>(page: Pr59010ScaleInputDecoratorLabelWidth),
  MaterialRoute<void>(page: Pr58593SliverAppBarCollapsedHeight),
  MaterialRoute<void>(page: Pr57644TabBarPhysics),
  MaterialRoute<void>(page: Pr57733ListTileShape),
  MaterialRoute<void>(page: Pr58154CheckboxListTileNullValue),
  MaterialRoute<void>(page: Pr58201MaterialButtonDisabledElevation),
  MaterialRoute<void>(page: Pr54128MaterialScrollbarIsAlwaysShown),
  MaterialRoute<void>(page: Pr58037SwitchListTileControlAffinity),
  MaterialRoute<void>(page: Pr57868CheckboxListTileContentPadding),
])
class $Router {}
