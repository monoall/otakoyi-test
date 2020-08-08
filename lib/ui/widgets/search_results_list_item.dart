import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:otakoyi_test/model/search_result_data.dart';
import 'package:otakoyi_test/styling/app_colors.dart';
import 'package:otakoyi_test/styling/app_text_styles.dart';
import 'package:otakoyi_test/ui/widgets/custom_chip.dart';

import 'light_button.dart';

class SearchResultsListItem extends StatelessWidget {
  final SearchResultData data;

  const SearchResultsListItem({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('MMM dd, yyyy');

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //Header
          Text(data.title, style: AppTextStyles.headline2),
          //Top chips
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                //Bidders
                CustomChip(
                  activeBorder: true,
                  title: 'Bidders:',
                  value: data.bidders.toString(),
                ),
                //Interviewers
                CustomChip(
                  activeBorder: true,
                  title: 'Interviewers:',
                  value: data.interviews.toString(),
                ),
              ],
            ),
          ),

          //Content text
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(data.content, style: AppTextStyles.body2.copyWith(color: AppColors.darkBlue60)),
          ),

          //Bottom chips
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                //Accident type
                CustomChip(
                  activeBorder: true,
                  value: data.accidentType,
                ),
                //Location 1
                CustomChip(
                  value: data.location,
                  leadingIcon: SvgPicture.asset('assets/ic_pin.svg', height: 14, color: AppColors.darkBlue),
                ),
                //Location 2
                CustomChip(
                  value: data.location2,
                  leadingIcon: SvgPicture.asset('assets/ic_building.svg', height: 14, color: AppColors.darkBlue),
                ),
                //Date
                CustomChip(
                  value: dateFormat.format(data.date),
                  leadingIcon: SvgPicture.asset('assets/ic_calendar.svg', height: 14, color: AppColors.darkBlue),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Expanded(
                  child: _buildColumn(
                    label1: 'Min referral fee',
                    value1: data.minFee.toString() + '%',
                    label2: 'Posted',
                    value2: dateFormat.format(data.date),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: _buildColumn(
                      label1: 'Area of practice',
                      value1: data.areaOfPractice,
                      label2: 'Represent',
                      value2: data.represent,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 4),

          //Bidders button
          if (data.bidders != null && data.bidders != 0)
            Container(
              margin: const EdgeInsets.only(top: 12),
              width: double.infinity,
              height: 54,
              child: RaisedButton(
                elevation: 0,
                color: AppColors.gold,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('More about the Bidders', style: AppTextStyles.subtitle1.copyWith(color: AppColors.white)),
                    SizedBox(width: 10),
                    Icon(Icons.info_outline, color: AppColors.white),
                  ],
                ),
                onPressed: () {},
              ),
            ),

          //Edit/Delete buttons
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              children: [
                Expanded(child: LightButton.grey(label: 'Edit', action: () {})),
                SizedBox(width: 12),
                Expanded(child: LightButton.red(label: 'Delete', action: () {})),
              ],
            ),
          ),

          //Bottom divider
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Divider(),
          ),
        ],
      ),
    );
  }

  Widget _buildColumn({String label1, String value1, String label2, String value2}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label1,
            style: AppTextStyles.caption2.copyWith(
              color: AppColors.darkBlue38,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value1,
            style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
          ),
          SizedBox(height: 8),
          Text(
            label2,
            style: AppTextStyles.caption2.copyWith(
              color: AppColors.darkBlue38,
            ),
          ),
          SizedBox(height: 4),
          Text(
            value2,
            style: AppTextStyles.subtitle1.copyWith(color: AppColors.darkBlue),
          ),
        ],
      );
}
