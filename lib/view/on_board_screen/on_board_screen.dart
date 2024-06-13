import 'package:dhero/bloc/on_board_bloc/on_board_bloc.dart';
import 'package:dhero/utils/extension/general_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../config/colors.dart';
import '../../config/components/custom_button.dart';
import '../../model/slider_model.dart';
import 'widget/dots_indicator.dart';
import 'widget/on_board_view.dart';
import 'widget/stack_logo.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController pageController;
  late OnBoardBloc onBoardBloc;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
    onBoardBloc = OnBoardBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => onBoardBloc,
        child: GestureDetector(
          onHorizontalDragEnd: (dragEndDetails) {
            if (dragEndDetails.primaryVelocity! < 0) {
              // Page forwards
              pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
              );
            } else if (dragEndDetails.primaryVelocity! > 0) {
              // Page backwards
              pageController.previousPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linear);
            }
          },
          child: SafeArea(
            child: SizedBox(
              height: context.mediaQueryHeight,
              width: context.mediaQueryWidth,
              child: Material(
                child: Column(
                  children: [
                    OnBoardView(
                      pageController: pageController,
                    ),
                    10.height,
                    Column(
                      children: [
                        const StackLogo(),
                        20.height,
                        const DotIndicator(),
                        20.height,
                        BlocBuilder<OnBoardBloc, OnBoardState>(
                          builder: (context, state) {
                            return SizedBox(
                              height: 20,
                              child: Text(
                                sliderModelList[state.currentIndex].title,
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF063697)),
                              ),
                            );
                          },
                        ),
                        10.height,

                        // ! if currentIndex ==0 then show this else show button
                        BlocBuilder<OnBoardBloc, OnBoardState>(
                          builder: (context, state) {
                            return state.currentIndex == 0
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 45.0),
                                    child: Text(
                                      sliderModelList[0].description,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(55, 59, 60, 1),
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                : SizedBox(
                                    height: 40,
                                    width: 190,
                                    child: CustomButton(
                                      title: 'Register',
                                      onPressed: () {},
                                    ),
                                  );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "SKIP",
              style: TextStyle(color: AppColors.grayRed),
            ),
            5.width,
            const Icon(
              Icons.arrow_right_alt,
              color: AppColors.black,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}

final List<SliderModel> sliderModelList = [
  SliderModel(
    title: 'Welcome',
    description:
        'Greetings! Welcome to the Dawlance Salesman App. Record your sales data and earn your commission. The more you sell, the more you earn!',
    imageUrl: 'assets/images/slider_bubles_1.png',
  ),
  SliderModel(
    title: 'Lets Get Started',
    description: '',
    imageUrl: 'assets/images/slider_bubles_2.png',
  ),
];
