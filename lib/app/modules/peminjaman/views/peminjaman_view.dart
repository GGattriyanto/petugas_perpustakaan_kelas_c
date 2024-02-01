import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_kelas_c/app/data/model/response_pinjam.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          DataPinjam dataPinjam = state[index];
          return ListTile(
            title: Text("${dataPinjam.user?.username}"),
            subtitle: Text("${dataPinjam.book?.judul}\n${dataPinjam.status}\nTanggal Pinjam : ${dataPinjam.tanggalPinjam}\nTanggal Kembali : ${dataPinjam.tanggalKembali}"),
          );
        },
        separatorBuilder: (context, index)=> Divider(),
      ))
    );
  }
}
