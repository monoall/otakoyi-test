import 'package:otakoyi_test/model/search_result_data.dart';

List<SearchResultData> get dummyData => [
      SearchResultData(
        title: 'John Smith | Smith Law Firm',
        content:
            'Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic  faucibus nesciunt, arcu consectetu raute...',
        accidentType: 'Auto accident',
        areaOfPractice: 'Personal Injury',
        bidders: 12,
        date: DateTime.now(),
        interviews: 5,
        location: 'Los Angeles Country, CA',
        location2: 'Los Angeles Country, CA',
        minFee: 30,
        postDate: DateTime.now(),
        represent: 'Plaintiff',
      ),
      SearchResultData(
        title: 'John Smith | Smith Law Firm',
        content:
            'Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic  faucibus nesciunt, arcu consectetu raute...',
        accidentType: 'Auto accident',
        areaOfPractice: 'Personal Injury',
        bidders: 0,
        date: DateTime.now(),
        interviews: 0,
        location: 'Los Angeles Country, CA',
        location2: 'Los Angeles Country, CA',
        minFee: 30,
        postDate: DateTime.now(),
        represent: 'Plaintiff',
      ),
    ];
