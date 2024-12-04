import 'package:agle_app/controllers/areas_controller.dart';
import 'package:agle_app/controllers/pages_controller.dart';
import 'package:agle_app/pages/configPage/config_page.dart';
import 'package:agle_app/pages/widgets/item_menu_area.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/items_menu_bar_controller.dart';
import '../widgets/item_menu.dart';
import '../widgets/work_space_active.dart';

class MenuBarAgle extends StatefulWidget {
  const MenuBarAgle({
    super.key,
  });

  @override
  State<MenuBarAgle> createState() => _MenuBarAgleState();
}

class _MenuBarAgleState extends State<MenuBarAgle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: 375,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: primaryColor,
            width: 4,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const WorkSpaceActive(
            image: './assets/images/image.png',
            nameProject: 'Projeto Integrador',
            projectOptions: [
              'Pessoal',
              'Trabalho',
              'Faculdade',
            ],
          ),
          Expanded(
            child: Consumer3<ItemsMenuBarController, PagesController,
                AreasController>(
              builder: (BuildContext context,
                  ItemsMenuBarController list,
                  PagesController pages,
                  AreasController areas,
                  Widget? widget) {
                return ListView.builder(
                  itemCount: list.items.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        list.alterSelectedMenuBar(index: index);
                        pages.setCurrentPage(index);
                      },
                      child: Column(
                        children: [
                          ItemMenu(
                            key: ValueKey(index),
                            iconMenuBar: list.items[index].icon,
                            nameItemMenuBar: list.items[index].label,
                            selected: list.items[index].selected,
                            pageItem: list.items[index].isPageMenu,
                            subMenu: list.items[index].isSubMenu,
                            iconAreaClick: list.items[index].iconAreaClick,
                          ),
                          list.items[index].isSubMenu &&
                                  list.items[index].iconAreaClick
                              ? SizedBox(
                                  height: 500,
                                  child: ListView.builder(
                                    itemCount: areas.areas.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          areas.alterSelectedMenuBar(
                                              index: index);
                                        },
                                        child: ItemMenuArea(
                                          key: ValueKey(index),
                                          nameItemMenuAreaBar:
                                              areas.areas[index].nameArea,
                                          selected: areas.areas[index].selected,
                                        ),
                                      );
                                    },
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          InkWell(
            child: const ItemMenu(
              iconMenuBar: Icons.settings,
              nameItemMenuBar: 'Configurações',
              pageItem: true,
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const ConfigPage();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
