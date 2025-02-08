// import 'package:flutter/material.dart';
//
// class CustomDropdownFormField extends StatefulWidget {
//   final List<String> items;
//   final String? hintText;
//   final String? labelText;
//   final ValueChanged<String>? onChanged;
//   final String? Function(String?)? validator;
//
//   const CustomDropdownFormField({
//     super.key,
//     required this.items,
//     this.hintText,
//     this.labelText,
//     this.onChanged,
//     this.validator,
//   });
//
//   @override
//   _CustomDropdownFormFieldState createState() {
//     return _CustomDropdownFormFieldState();
//   }
// }
//
// class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
//   String? selectedValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonFormField<String>(
//       value: selectedValue,
//       decoration: InputDecoration(
//         labelText: widget.labelText,
//         hintText: widget.hintText,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//       ),
//       items: widget.items.map((String item) {
//         return DropdownMenuItem<String>(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//       onChanged: (String? newValue) {
//         setState(() {
//           selectedValue = newValue;
//         });
//         if (widget.onChanged != null) {
//           widget.onChanged!(newValue!);
//         }
//       },
//       validator: widget.validator,
//     );
//   }
// }


import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatefulWidget {
  final List<String> items;
  final String? hintText;
  final String? labelText;
  final ValueNotifier<String?>? controller; // New: Controller
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;

  const CustomDropdownFormField({
    super.key,
    required this.items,
    this.hintText,
    this.labelText,
    this.controller,
    this.onChanged,
    this.validator,
  });

  @override
  _CustomDropdownFormFieldState createState() => _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.controller?.value;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      items: widget.items.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
          if (widget.controller != null) {
            widget.controller!.value = newValue;
          }
        });
        if (widget.onChanged != null && newValue != null) {
          widget.onChanged!(newValue);
        }
      },
      validator: widget.validator,
    );
  }
}
