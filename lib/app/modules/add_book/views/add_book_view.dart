import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddBookView'),
          centerTitle: true,
        ),
        body: Center(
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.judulController,
                  decoration: InputDecoration(hintText: "Masukkan Judul"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Judul tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penulisController,
                  decoration: InputDecoration(hintText: "Masukkan Penulis"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Penulis tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.penerbitController,
                  decoration: InputDecoration(hintText: "Masukkan Penerbit"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "Penerbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.tahunTerbitController,
                  decoration:
                      InputDecoration(hintText: "Masukkan tahun terbit"),
                  validator: (value) {
                    if (value!.length < 2) {
                      return "tahun terbit tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(
                  () => controller.loading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            controller.add_book();
                          },
                          child: Text("Tambah")),
                )
              ],
            ),
          ),
        ));
  }
}
