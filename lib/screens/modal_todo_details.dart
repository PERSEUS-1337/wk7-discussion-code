/*
  Created by: Claizel Coubeili Cepe
  Date: 27 October 2022
  Description: Sample todo app with networking
*/

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week7_networking_discussion/models/todo_model.dart';
import 'package:week7_networking_discussion/providers/todo_provider.dart';

class TodoDetailModal extends StatelessWidget {
  const TodoDetailModal({super.key});

  // Method to show the title of the modal depending on the functionality
  Text _buildTitle() {
    return const Text("Todo details");
  }

  // Method to build the content or body depending on the functionality
  Widget _buildContent(BuildContext context) {
    return ListTile(
      title: Text(context.read<TodoListProvider>().selected.title),
    );
  }

  TextButton _dialogAction(BuildContext context) {
    return TextButton(
      onPressed: () { },
      style: TextButton.styleFrom(
        textStyle: Theme.of(context).textTheme.labelLarge,
      ),
      child: const Text("Exit"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: _buildTitle(),
      content: _buildContent(context),

      // Contains two buttons - add/edit/delete, and cancel
      actions: <Widget>[
        _dialogAction(context),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          child: const Text("Return"),
        ),
      ],
    );
  }
}
