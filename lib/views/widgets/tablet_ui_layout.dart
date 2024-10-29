import 'package:dashboard/Utils/styles.dart';
import 'package:dashboard/views/widgets/all_expenses_and_quick_invoice.dart';
import 'package:dashboard/views/widgets/card_and_income_section.dart';
import 'package:dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabletUiLayout extends StatefulWidget {
  const TabletUiLayout({super.key});

  @override
  State<TabletUiLayout> createState() => _TabletUiLayoutState();
}

class _TabletUiLayoutState extends State<TabletUiLayout> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: drawerKey,
      drawer: CustomDrawer(
        width: MediaQuery.sizeOf(context).width * .5,
        backGroundColor: Colors.white,
        cardColor: const Color(0xffF7F9FA),
      ),
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              drawerKey.currentState!.openDrawer();
                            },
                            icon: const Icon(Icons.menu,
                                color: Color(0xff4EB7F2))),
                        Text(
                          'Dashboard',
                          style: Styles.styleBold16(context)
                              .copyWith(fontSize: 20),
                        ),
                        Container()
                      ])),
              const Row(
                children: [
                  SizedBox(width: 16),
                  Expanded(flex: 4, child: AllExpensesAndQuickInvoiceSection()),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(flex: 3, child: CardAndIncomeSection()),
                  SizedBox(width: 16),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
