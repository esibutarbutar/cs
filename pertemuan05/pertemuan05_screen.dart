import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app5/pertemuan05/pertemuan05_provider.dart';

class Pertemuan05Screen extends StatefulWidget {
  Pertemuan05Screen({Key? key}) : super(key: key);
  @override
  State<Pertemuan05Screen> createState() => _Pertemuan05ScreenState();
}

class _Pertemuan05ScreenState extends State<Pertemuan05Screen> {
  bool? soal1a = false;
  bool? soal1b = false;

  String soal2 = 'answ';

  bool kelasPagi = false;
  bool kelasSiang = false;

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan05Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Soal 1: Menggunakan Checkbox
              const Text(
                  '1. Memori yang berfungsi untuk tempat penyimpanan data sementara'),
              Row(
                children: [
                  Text('a. '),
                  SizedBox(
                    width: 5,
                  ),
                  Checkbox(
                      value: soal1a,
                      onChanged: (val) {
                        setState(() {
                          soal1a = val;
                        });
                      }),
                  Text('RAM'),
                ],
              ),
              Row(
                children: [
                  Text('b. '),
                  SizedBox(
                    width: 5,
                  ),
                  Checkbox(
                      value: soal1b,
                      onChanged: (val) {
                        setState(() {
                          soal1b = val;
                        });
                      }),
                  Text('Random Access Memory'),
                ],
              ),
              //Soal 2: Menggunakan Checkbox
              const Text('2. sdfghjkl;'),
              Row(
                children: [
                  Text('a. '),
                  SizedBox(
                    width: 5,
                  ),
                  Radio(
                      value: 'topologi',
                      groupValue: soal2,
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'topologi';
                        });
                      }),
                  Text('Topologi'),
                ],
              ),
              Row(
                children: [
                  Text('b. '),
                  SizedBox(
                    width: 5,
                  ),
                  Radio(
                      value: 'desain jaringan',
                      groupValue: soal2,
                      onChanged: (val) {
                        setState(() {
                          soal2 = 'desain jaringan';
                        });
                      }),
                  Text('desain jaringan'),
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20)),
              const Text('Kelas'),
              Row(
                children: [
                  ChoiceChip(
                    label: Text('Pagi'),
                    selectedColor: Colors.blue[200],
                    selected: kelasPagi,
                    onSelected: (val) {
                      setState(() {
                        kelasPagi = val;
                      });
                    },
                  ),
                  const SizedBox(width: 5),
                  ChoiceChip(
                    label: Text('Siang'),
                    selectedColor: Colors.blue[200],
                    selected: kelasSiang,
                    onSelected: (val) {
                      setState(() {
                        kelasSiang = val;
                      });
                    },
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20)),
              const Text('Soal diatas telah dipelajari saat?'),
              Row(
                children: [
                  FilterChip(
                    label: Text('Sekolah'),
                    selectedColor: Colors.blue[200],
                    selected: prov.statusSekolah,
                    onSelected: (val) {
                      prov.setSekolah = val;
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  FilterChip(
                    label: Text('Praktikum'),
                    selected: prov.statusPraktik,
                    onSelected: (val) {
                      prov.setPraktik = val;
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  FilterChip(
                    label: Text('Kursus'),
                    selected: prov.statusKursus,
                    onSelected: (val) {
                      prov.setKursus = val;
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20)),
              const Text('Peminatan Saat Sekolah'),
              Row(children: [])
            ],
          ),
        ),
      ),
    );
  }
}
