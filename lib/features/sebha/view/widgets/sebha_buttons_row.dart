import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/sebha/view-model/cubit/sebha_cubit.dart';
import 'package:quran/features/sebha/view/widgets/sebha_button.dart';

class SebhaButtonsRow extends StatefulWidget {
  const SebhaButtonsRow({super.key});

  @override
  State<SebhaButtonsRow> createState() => _SebhaButtonsRowState();
}

class _SebhaButtonsRowState extends State<SebhaButtonsRow> {

  late SebhaCubit sebhaCubit;

  @override
  void initState() {
    super.initState();
    sebhaCubit = context.read<SebhaCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SebhaButton(onPressed: () => sebhaCubit.clearCounter(), icon: const Icon(Icons.delete)),
          SebhaButton(onPressed: () => sebhaCubit.incrementCounter(), icon: const Icon(Icons.add)),
        ]
      ),
    );
  }
}