library riverpod_widget;

import 'material/about.dart';
import 'material/action_buttons.dart';
import 'material/action_chip.dart';
import 'material/action_icons_theme.dart';
import 'material/adaptive_text_selection_toolbar.dart';
import 'material/animated_icons.dart';
import 'material/app.dart';
import 'material/app_bar.dart';
import 'material/autocomplete.dart';
import 'material/badge.dart';
import 'material/badge_theme.dart';
import 'material/banner.dart';
import 'material/banner_theme.dart';
import 'material/bottom_app_bar.dart';
import 'material/bottom_navigation_bar.dart';
import 'material/bottom_navigation_bar_theme.dart';
import 'material/bottom_sheet.dart';
import 'material/button.dart';
import 'material/button_bar.dart';
import 'material/button_bar_theme.dart';
import 'material/button_theme.dart';
import 'material/calendar_date_picker.dart';
import 'material/card.dart';
import 'material/checkbox.dart';
import 'material/checkbox_list_tile.dart';
import 'material/checkbox_theme.dart';
import 'material/chip.dart';
import 'material/chip_theme.dart';
import 'material/choice_chip.dart';
import 'material/circle_avatar.dart';
import 'material/data_table.dart';
import 'material/data_table_theme.dart';
import 'material/date_picker.dart';
import 'material/date_picker_theme.dart';
import 'material/desktop_text_selection_toolbar.dart';
import 'material/desktop_text_selection_toolbar_button.dart';
import 'material/dialog.dart';
import 'material/divider.dart';
import 'material/divider_theme.dart';
import 'material/drawer.dart';
import 'material/drawer_header.dart';
import 'material/drawer_theme.dart';
import 'material/dropdown.dart';
import 'material/dropdown_menu.dart';
import 'material/dropdown_menu_theme.dart';
import 'material/elevated_button.dart';
import 'material/elevated_button_theme.dart';
import 'material/expand_icon.dart';
import 'material/expansion_panel.dart';
import 'material/expansion_tile.dart';
import 'material/expansion_tile_theme.dart';
import 'material/filled_button.dart';
import 'material/filled_button_theme.dart';
import 'material/filter_chip.dart';
import 'material/flexible_space_bar.dart';
import 'material/floating_action_button.dart';
import 'material/flutter_logo.dart';
import 'material/grid_tile.dart';
import 'material/grid_tile_bar.dart';
import 'material/icon_button.dart';
import 'material/icon_button_theme.dart';
import 'material/ink_decoration.dart';
import 'material/ink_well.dart';
import 'material/input_chip.dart';
import 'material/input_date_picker_form_field.dart';
import 'material/input_decorator.dart';
import 'material/list_tile.dart';
import 'material/list_tile_theme.dart';
import 'material/magnifier.dart';
import 'material/material.dart';
import 'material/material_button.dart';
import 'material/menu_anchor.dart';
import 'material/menu_bar_theme.dart';
import 'material/menu_button_theme.dart';
import 'material/menu_theme.dart';
import 'material/mergeable_material.dart';
import 'material/navigation_bar.dart';
import 'material/navigation_bar_theme.dart';
import 'material/navigation_drawer.dart';
import 'material/navigation_drawer_theme.dart';
import 'material/navigation_rail.dart';
import 'material/navigation_rail_theme.dart';
import 'material/outlined_button.dart';
import 'material/outlined_button_theme.dart';
import 'material/paginated_data_table.dart';
import 'material/popup_menu.dart';
import 'material/popup_menu_theme.dart';
import 'material/progress_indicator.dart';
import 'material/progress_indicator_theme.dart';
import 'material/radio.dart';
import 'material/radio_list_tile.dart';
import 'material/radio_theme.dart';
import 'material/range_slider.dart';
import 'material/refresh_indicator.dart';
import 'material/reorderable_list.dart';
import 'material/scaffold.dart';
import 'material/scrollbar.dart';
import 'material/scrollbar_theme.dart';
import 'material/search_anchor.dart';
import 'material/search_bar_theme.dart';
import 'material/search_view_theme.dart';
import 'material/segmented_button.dart';
import 'material/segmented_button_theme.dart';
import 'material/selectable_text.dart';
import 'material/selection_area.dart';
import 'material/slider.dart';
import 'material/slider_theme.dart';
import 'material/snack_bar.dart';
import 'material/spell_check_suggestions_toolbar.dart';
import 'material/stepper.dart';
import 'material/switch.dart';
import 'material/switch_list_tile.dart';
import 'material/switch_theme.dart';
import 'material/tab_controller.dart';
import 'material/tabs.dart';
import 'material/text_button.dart';
import 'material/text_button_theme.dart';
import 'material/text_field.dart';
import 'material/text_form_field.dart';
import 'material/text_selection_theme.dart';
import 'material/text_selection_toolbar.dart';
import 'material/text_selection_toolbar_text_button.dart';
import 'material/theme.dart';
import 'material/time_picker.dart';
import 'material/time_picker_theme.dart';
import 'material/toggle_buttons.dart';
import 'material/toggle_buttons_theme.dart';
import 'material/tooltip.dart';
import 'material/tooltip_theme.dart';
import 'material/tooltip_visibility.dart';
import 'material/user_accounts_drawer_header.dart';

export 'package:riverpod_widget/riverpod_widgets.dart';
export 'wrapper.dart' show BindExt, Wrapper, $;

typedef $LicensePage = LicensePage;
typedef $AboutDialog = AboutDialog;
typedef $AboutListTile = AboutListTile;
typedef $CloseButtonIcon = CloseButtonIcon;
typedef $BackButton = BackButton;
typedef $DrawerButton = DrawerButton;
typedef $DrawerButtonIcon = DrawerButtonIcon;
typedef $EndDrawerButton = EndDrawerButton;
typedef $CloseButton = CloseButton;
typedef $BackButtonIcon = BackButtonIcon;
typedef $EndDrawerButtonIcon = EndDrawerButtonIcon;
typedef $ActionChip = ActionChip;
typedef $ActionIconTheme = ActionIconTheme;
typedef $AdaptiveTextSelectionToolbar = AdaptiveTextSelectionToolbar;
typedef $AnimatedIcon = AnimatedIcon;
typedef $MaterialApp = MaterialApp;
typedef $SliverAppBar = SliverAppBar;
typedef $AppBar = AppBar;
typedef $Autocomplete = Autocomplete;
typedef $Badge = Badge;
typedef $BadgeTheme = BadgeTheme;
typedef $MaterialBanner = MaterialBanner;
typedef $MaterialBannerTheme = MaterialBannerTheme;
typedef $BottomAppBar = BottomAppBar;
typedef $BottomNavigationBar = BottomNavigationBar;
typedef $BottomNavigationBarTheme = BottomNavigationBarTheme;
typedef $BottomSheet = BottomSheet;
typedef $RawMaterialButton = RawMaterialButton;
typedef $ButtonBar = ButtonBar;
typedef $ButtonBarTheme = ButtonBarTheme;
typedef $ButtonTheme = ButtonTheme;
typedef $CalendarDatePicker = CalendarDatePicker;
typedef $YearPicker = YearPicker;
typedef $Card = Card;
typedef $Checkbox = Checkbox;
typedef $CheckboxListTile = CheckboxListTile;
typedef $CheckboxTheme = CheckboxTheme;
typedef $RawChip = RawChip;
typedef $Chip = Chip;
typedef $ChipTheme = ChipTheme;
typedef $ChoiceChip = ChoiceChip;
typedef $CircleAvatar = CircleAvatar;
typedef $DataTable = DataTable;
typedef $TableRowInkWell = TableRowInkWell;
typedef $DataTableTheme = DataTableTheme;
typedef $DateRangePickerDialog = DateRangePickerDialog;
typedef $DatePickerDialog = DatePickerDialog;
typedef $DatePickerTheme = DatePickerTheme;
typedef $DesktopTextSelectionToolbar = DesktopTextSelectionToolbar;
typedef $DesktopTextSelectionToolbarButton = DesktopTextSelectionToolbarButton;
typedef $SimpleDialogOption = SimpleDialogOption;
typedef $Dialog = Dialog;
typedef $SimpleDialog = SimpleDialog;
typedef $AlertDialog = AlertDialog;
typedef $Divider = Divider;
typedef $VerticalDivider = VerticalDivider;
typedef $DividerTheme = DividerTheme;
typedef $Drawer = Drawer;
typedef $DrawerController = DrawerController;
typedef $DrawerHeader = DrawerHeader;
typedef $DrawerTheme = DrawerTheme;
typedef $DropdownButton = DropdownButton;
typedef $DropdownMenuItem = DropdownMenuItem;
typedef $DropdownButtonFormField = DropdownButtonFormField;
typedef $DropdownButtonHideUnderline = DropdownButtonHideUnderline;
typedef $DropdownMenu = DropdownMenu;
typedef $DropdownMenuTheme = DropdownMenuTheme;
typedef $ElevatedButton = ElevatedButton;
typedef $ElevatedButtonTheme = ElevatedButtonTheme;
typedef $ExpandIcon = ExpandIcon;
typedef $ExpansionPanelList = ExpansionPanelList;
typedef $ExpansionTile = ExpansionTile;
typedef $ExpansionTileTheme = ExpansionTileTheme;
typedef $FilledButton = FilledButton;
typedef $FilledButtonTheme = FilledButtonTheme;
typedef $FilterChip = FilterChip;
typedef $FlexibleSpaceBar = FlexibleSpaceBar;
typedef $FlexibleSpaceBarSettings = FlexibleSpaceBarSettings;
typedef $FloatingActionButton = FloatingActionButton;
typedef $FlutterLogo = FlutterLogo;
typedef $GridTile = GridTile;
typedef $GridTileBar = GridTileBar;
typedef $IconButton = IconButton;
typedef $IconButtonTheme = IconButtonTheme;
typedef $Ink = Ink;
typedef $InkResponse = InkResponse;
typedef $InkWell = InkWell;
typedef $InputChip = InputChip;
typedef $InputDatePickerFormField = InputDatePickerFormField;
typedef $InputDecorator = InputDecorator;
typedef $ListTile = ListTile;
typedef $ListTileTheme = ListTileTheme;
typedef $TextMagnifier = TextMagnifier;
typedef $Magnifier = Magnifier;
typedef $Material = Material;
typedef $MaterialButton = MaterialButton;
typedef $CheckboxMenuButton = CheckboxMenuButton;
typedef $MenuAnchor = MenuAnchor;
typedef $MenuBar = MenuBar;
typedef $RadioMenuButton = RadioMenuButton;
typedef $MenuItemButton = MenuItemButton;
typedef $MenuAcceleratorCallbackBinding = MenuAcceleratorCallbackBinding;
typedef $SubmenuButton = SubmenuButton;
typedef $MenuAcceleratorLabel = MenuAcceleratorLabel;
typedef $MenuBarTheme = MenuBarTheme;
typedef $MenuButtonTheme = MenuButtonTheme;
typedef $MenuTheme = MenuTheme;
typedef $MergeableMaterial = MergeableMaterial;
typedef $NavigationIndicator = NavigationIndicator;
typedef $NavigationBar = NavigationBar;
typedef $NavigationDestination = NavigationDestination;
typedef $NavigationBarTheme = NavigationBarTheme;
typedef $NavigationDrawer = NavigationDrawer;
typedef $NavigationDrawerDestination = NavigationDrawerDestination;
typedef $NavigationDrawerTheme = NavigationDrawerTheme;
typedef $NavigationRail = NavigationRail;
typedef $NavigationRailTheme = NavigationRailTheme;
typedef $OutlinedButton = OutlinedButton;
typedef $OutlinedButtonTheme = OutlinedButtonTheme;
typedef $PaginatedDataTable = PaginatedDataTable;
typedef $PopupMenuButton = PopupMenuButton;
typedef $PopupMenuItem = PopupMenuItem;
typedef $CheckedPopupMenuItem = CheckedPopupMenuItem;
typedef $PopupMenuDivider = PopupMenuDivider;
typedef $PopupMenuTheme = PopupMenuTheme;
typedef $CircularProgressIndicator = CircularProgressIndicator;
typedef $RefreshProgressIndicator = RefreshProgressIndicator;
typedef $LinearProgressIndicator = LinearProgressIndicator;
typedef $ProgressIndicatorTheme = ProgressIndicatorTheme;
typedef $Radio = Radio;
typedef $RadioListTile = RadioListTile;
typedef $RadioTheme = RadioTheme;
typedef $RangeSlider = RangeSlider;
typedef $RefreshIndicator = RefreshIndicator;
typedef $ReorderableListView = ReorderableListView;
typedef $ScaffoldMessenger = ScaffoldMessenger;
typedef $Scaffold = Scaffold;
typedef $Scrollbar = Scrollbar;
typedef $ScrollbarTheme = ScrollbarTheme;
typedef $SearchAnchor = SearchAnchor;
typedef $SearchBar = SearchBar;
typedef $SearchBarTheme = SearchBarTheme;
typedef $SearchViewTheme = SearchViewTheme;
typedef $SegmentedButton = SegmentedButton;
typedef $SegmentedButtonTheme = SegmentedButtonTheme;
typedef $SelectableText = SelectableText;
typedef $SelectionArea = SelectionArea;
typedef $Slider = Slider;
typedef $SliderTheme = SliderTheme;
typedef $SnackBarAction = SnackBarAction;
typedef $SnackBar = SnackBar;
typedef $SpellCheckSuggestionsToolbar = SpellCheckSuggestionsToolbar;
typedef $Stepper = Stepper;
typedef $Switch = Switch;
typedef $SwitchListTile = SwitchListTile;
typedef $SwitchTheme = SwitchTheme;
typedef $DefaultTabController = DefaultTabController;
typedef $TabBarView = TabBarView;
typedef $TabPageSelector = TabPageSelector;
typedef $TabBar = TabBar;
typedef $TabPageSelectorIndicator = TabPageSelectorIndicator;
typedef $Tab = Tab;
typedef $TextButton = TextButton;
typedef $TextButtonTheme = TextButtonTheme;
typedef $TextField = TextField;
typedef $TextFormField = TextFormField;
typedef $TextSelectionTheme = TextSelectionTheme;
typedef $TextSelectionToolbar = TextSelectionToolbar;
typedef $TextSelectionToolbarTextButton = TextSelectionToolbarTextButton;
typedef $Theme = Theme;
typedef $AnimatedTheme = AnimatedTheme;
typedef $TimePickerDialog = TimePickerDialog;
typedef $TimePickerTheme = TimePickerTheme;
typedef $ToggleButtons = ToggleButtons;
typedef $ToggleButtonsTheme = ToggleButtonsTheme;
typedef $Tooltip = Tooltip;
typedef $TooltipTheme = TooltipTheme;
typedef $TooltipVisibility = TooltipVisibility;
typedef $UserAccountsDrawerHeader = UserAccountsDrawerHeader;
