import 'package:flutter/material.dart';
import '../../widget/index.dart';
import '../../utils/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  var moduleData = [
    {'name': 'Health care\nbudget', 'value': '\€500,00', 'label': 'per year'},
    {
      'name': 'Health care\nbenefit budget',
      'value': '\€345,50',
      'label': 'per year'
    },
    {'name': 'Prevention\nCourses', 'value': '14', 'label': 'soon'}
  ];

  var dataArray = [
    {
      'name': 'E-Bike leasing',
      'value': '\€18',
      'label': 'per hour',
      'bgimage': kSingles,
      'textcolor': Color(0xFFF67193)
    },
    {
      'name': 'Gym membership',
      'value': '\€220',
      'label': 'per year',
      'bgimage': kDoubles,
      'textcolor': Color(0xFFFAC087)
    },
    {
      'name': 'Online workout classes',
      'value': '16',
      'label': 'per lesson',
      'bgimage': kMD,
      'textcolor': Color(0xFF7F77C5)
    }
  ];

  var submissionArray = [
    {
      'name': 'Employee portal requirement.txt',
      'description': 'Subtitle text',
      'icon': kTxt,
      'color': txtColor,
    },
    {
      'name': 'Employee portal requirement.doc',
      'description': 'Subtitle text',
      'icon': kDoc,
      'color': docColor,
    },
    {
      'name': 'Employee portal requirement.jpg',
      'description': 'Subtitle text',
      'icon': kJpg,
      'color': jpgColor,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Modules
                    Text(
                      str_modules,
                      style: headingStyle,
                    ),

                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(moduleData.length, (index) {
                          var element = moduleData[index];
                          return Container(
                            margin: EdgeInsets.only(right: 24),
                            child: ModuleListItem(
                              data: element,
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(dataArray.length, (index) {
                          var element = dataArray[index];
                          return Container(
                            margin: EdgeInsets.only(right: 24),
                            child: ModuleSubListItem(
                              data: element,
                            ),
                          );
                        }),
                      ),
                    ),
                    // Submission
                    Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            str_submissions,
                            style: headingStyle,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      str_document_name,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    ),
                                    DocumentButton(),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: List.generate(
                                      submissionArray.length, (index) {
                                    var element = submissionArray[index];
                                    return Container(
                                      margin: EdgeInsets.only(bottom: 16),
                                      child: SubmissionListItem(
                                        data: element,
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
