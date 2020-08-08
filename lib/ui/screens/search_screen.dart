import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otakoyi_test/data/dammy_data.dart';
import 'package:otakoyi_test/model/search_result_data.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';
import 'package:otakoyi_test/ui/widgets/app_input_field.dart';
import 'package:otakoyi_test/ui/widgets/bottom_drawer.dart';
import 'package:otakoyi_test/ui/widgets/counter_icon.dart';
import 'package:otakoyi_test/ui/widgets/dropdown_field.dart';
import 'package:otakoyi_test/ui/widgets/inactive_text_field.dart';
import 'package:otakoyi_test/ui/widgets/list_placeholder.dart';
import 'package:otakoyi_test/ui/widgets/search_results_list_item.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SearchScreenBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomDrawer(),
    );
  }

  AppBar _buildAppBar() => AppBar(
        title: Image.asset(
          'assets/app_logo.png',
        ),
        actions: <Widget>[
          CounterIcon(
            icon: SvgPicture.asset('assets/ic_bell.svg', color: Colors.white60),
            value: 9,
            action: () {},
          )
        ],
      );
}

class SearchScreenBody extends StatefulWidget {
  @override
  _SearchScreenBodyState createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  RangeValues _sliderValues = RangeValues(0, 100);
  TextEditingController _percentFrom;
  TextEditingController _percentTo;
  List<SearchResultData> dataSet = [];

  @override
  void initState() {
    super.initState();

    _percentFrom = TextEditingController()..text = _sliderValues.start.toInt().toString();
    _percentTo = TextEditingController()..text = _sliderValues.end.toInt().toString();
  }

  @override
  void dispose() {
    _percentFrom.dispose();
    _percentTo.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataLength = dataSet?.length ?? 0;
    final add = dataLength == 0 ? 2 : 1;

    return ListView.builder(
      itemCount: dataLength + add,
      itemBuilder: (context, index) {
        if (index == 0) return _buildFilterSection();
        if (index == 1 && dataLength == 0) return ListPlaceholder();
        return SearchResultsListItem(data: dataSet[index - 1]);
      },
    );
  }

  Widget _buildFilterSection() => Container(
        decoration: BoxDecoration(
          color: AppColors.lightGrey.withOpacity(0.38),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Search field
            _formFieldPadding(
              AppInputField(
                labelText: 'Search for cases',
                suffixIcon: Icon(Icons.search, color: AppColors.gold),
              ),
            ),

            //'Filters' header
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 26),
              child: Text('Filters', style: AppTextStyles.headline1),
            ),

            //'Area of practice' select field
            _formFieldPadding(
              DropdownField(
                label: 'Area of practice',
                defaultValue: 'All areas',
                values: ['All areas', 'Area 1', 'Area 2', 'Area 3', 'Area 4'],
              ),
            ),

            //'Type of case' select field
            _formFieldPadding(
              DropdownField(
                label: 'Type of case',
                values: ['Case 1', 'Case 2', 'Case 3', 'Case 4'],
              ),
            ),

            //'State' select field
            _formFieldPadding(
              DropdownField(
                label: 'State',
                values: ['State 1', 'State 2', 'State 3', 'State 4'],
              ),
            ),

            //Divider
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
              child: Divider(
                height: 1,
              ),
            ),

            //'Chose the rate' header
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Text('Chose the rate', style: AppTextStyles.headline2),
            ),

            //Rate indicators
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 17, top: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: InactiveTextField(
                    controller: _percentFrom,
                    label: 'From',
                    suffixText: '%',
                  )),
                  Container(
                    width: 34,
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Divider(),
                  ),
                  Expanded(
                      child: InactiveTextField(
                    controller: _percentTo,
                    label: 'To',
                    suffixText: '%',
                  )),
                ],
              ),
            ),

            //Rate slider
            Padding(
              padding: const EdgeInsets.only(top: 14, left: 3, right: 3),
              child: RangeSlider(
                  values: _sliderValues,
                  min: 0,
                  max: 100,
                  onChanged: (RangeValues value) {
                    _percentFrom.text = (value.start).toInt().toString();
                    _percentTo.text = (value.end).toInt().toString();
                    setState(() => _sliderValues = value);
                  }),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 24),
              child: Container(
                height: 54,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      dataSet.addAll(dummyData);
                    });
                  },
                  elevation: 0,
                  child: Text('Apply Filters', style: AppTextStyles.subtitle2.copyWith(color: AppColors.white)),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _formFieldPadding(Widget child) => Padding(
        padding: const EdgeInsets.only(left: 17, right: 17, top: 21),
        child: child,
      );
}
