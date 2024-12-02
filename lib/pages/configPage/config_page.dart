import 'package:agle_app/pages/widgets/app_bar_agle.dart';
import 'package:agle_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.maxFinite * .8,
        height: double.maxFinite * .8,
        color: secondColor,
        child: ListView(
          children: [
            const AppBarAgle(
              title: 'Colaraboradores',
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secondColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Condide novos colaborades através do link',
                            style: TextStyle(
                              color: textColorPrimary,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Você pode convidar outras pessoas para colaborar em sua Área de Trabalho compartilhando um link de convite.',
                            style: TextStyle(
                              color: textColorPrimary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'Criar link para convite',
                                style: TextStyle(
                                  color: textColorThird,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'Excluir link existente',
                                style: TextStyle(
                                  color: textColorThird,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secondColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Convide novos colaboradores por e-mail',
                            style: TextStyle(
                              color: textColorPrimary,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Você também pode convidar pessoas para colaborar em sua Área de Trabalho utilizando o e-mail desejado. ',
                            style: TextStyle(
                              color: textColorPrimary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                                color: secondColor,
                                border: Border.all(color: thirdColor),
                                borderRadius: BorderRadius.circular(40)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Center(
                                child: TextFormField(
                                  cursorColor: textColorPrimary,
                                  textAlignVertical: TextAlignVertical.top,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: textColorThird,
                                  ),
                                  style: TextStyle(
                                    color: textColorPrimary,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Entrar',
                              style: TextStyle(
                                color: textColorThird,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
