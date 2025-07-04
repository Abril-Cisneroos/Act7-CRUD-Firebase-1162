import 'package:flutter/material.dart';
import 'package:myapp/services/firebase_services.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crud Abril Cisneros"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 160, 168, 236),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Ingrese un nuevo nombre',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await addPeople(nameController.text).then((_) {
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                });
              },
              child: const Text("Guardar"),
            ),
          ],
        ),
      ),
    );
  }
}
