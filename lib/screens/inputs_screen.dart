import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value: $value');
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.always,
                decoration: const InputDecoration(
                    hintText: 'Nombre del usuario',
                    labelText: 'Nombre',
                    helperText: 'Solo texto',
                    suffixIcon: Icon(Icons.group_add_outlined),
                    icon: Icon(Icons.assignment_ind_outlined)),
                    border: const OutlineInputBorder(borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10)
                    )
                    )
                      
                    )
              )
            ],
          ),
        ),
      ),
    );
  }
}
