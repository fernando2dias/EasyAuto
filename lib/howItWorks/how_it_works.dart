import 'package:flutter/material.dart';
import 'package:flutter_easy_auto/core/app_colors.dart';
import 'package:flutter_easy_auto/core/core.dart';

class HowItWorks extends StatefulWidget {
  HowItWorks({Key? key}) : super(key: key);

  @override
  _HowItWorksState createState() => _HowItWorksState();
}

class _HowItWorksState extends State<HowItWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Como funciona o CarCenter App'),
        backgroundColor: AppColors.darkPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'Você pode ganhar descontos nas melhores mecânicas da sua cidade',
                  style: AppTextStyles.titleRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit orci nec diam mattis, quis scelerisque risus feugiat. Suspendisse tincidunt augue vitae porttitor placerat. Ut tortor libero, pretium quis vulputate vel, interdum vitae mauris.',
                  style: AppTextStyles.bodyRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  child: Image.asset(
                      'assets/how_it_works/close-up-hands-of-unrecognizable-mechanic-doing-car-service-and-maintenance.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit orci nec diam mattis, quis scelerisque risus feugiat. Suspendisse tincidunt augue vitae porttitor placerat. Ut tortor libero, pretium quis vulputate vel, interdum vitae mauris.',
                  style: AppTextStyles.bodyRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  'As melhores oficinas mecânicas na palma da sua mão',
                  style: AppTextStyles.titleRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit orci nec diam mattis, quis scelerisque risus feugiat. Suspendisse tincidunt augue vitae porttitor placerat. Ut tortor libero, pretium quis vulputate vel, interdum vitae mauris.',
                  style: AppTextStyles.bodyRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(
                  child: Image.asset(
                      'assets/how_it_works/woman-near-broken-car-call-for-help.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit orci nec diam mattis, quis scelerisque risus feugiat. Suspendisse tincidunt augue vitae porttitor placerat. Ut tortor libero, pretium quis vulputate vel, interdum vitae mauris.',
                  style: AppTextStyles.bodyRoboto,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 79.0),
                child: SizedBox(
                  height: 50.0,
                  width: 315.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.darkPurple,
                    ),
                    child: Text(
                      'VOLTAR',
                      style: AppTextStyles.backWhiteRoboto,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
