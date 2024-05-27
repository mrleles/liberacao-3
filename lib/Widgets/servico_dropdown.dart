import 'package:flutter/material.dart';

class ServicoDropdown extends StatefulWidget {
  const ServicoDropdown({super.key});

  @override
  State<ServicoDropdown> createState() => _ServicoDropdownState();
}

class _ServicoDropdownState extends State<ServicoDropdown> {
  String selectedService = 'instalacao';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
                      value: selectedService,
                      items: const [
                        DropdownMenuItem(
                          value: 'instalacao',
                          child: Text('Instalação'),
                        ),
                        DropdownMenuItem(
                          value: 'manutencao',
                          child: Text('Manutenção'),
                        ),
                        DropdownMenuItem(
                          value: 'transferencia',
                          child: Text('Transferência'),
                        ),
                        DropdownMenuItem(
                          value: 'realocacao',
                          child: Text('Realocação de CTO'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedService = value!;
                        });
                      },
                    );
  }
}