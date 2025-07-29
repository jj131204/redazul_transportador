
import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/styleInputs.dart';
class basicSelect {
  final int value;
  final String label;
  final String? urlImage;

  basicSelect({
    required this.value,
    required this.label,
    this.urlImage,
  });

  void showAll(){
  }

factory basicSelect.fromJson(Map<String, dynamic> json) {

  return basicSelect(
    value: json['value'],
    label: json['label'],
    urlImage: json['urlImage'],
  );
}
}

class atomSelect<String> extends StatefulWidget {

  final List itemsSelect;
  final void Function(String?)? onChanged;
  final void Function(String?, String?)? onChangedTwo;
  final nameSelect;
  final bool? requiredSelect;
  final bool? twoParams;
  final double? widthSelect;
  final bool? selectedTrue;
  final bool? existDate;
  final FormFieldValidator<String>? validator;
  final bool? existSpecie;
  final bool? existImage;

  const atomSelect({super.key,
    required this.itemsSelect,
    this.onChanged,
    required this.nameSelect,
    this.requiredSelect,
    this.onChangedTwo,
    this.twoParams,
    this.widthSelect, 
    this.selectedTrue,
    this.existDate,
    this.existSpecie,
    this.validator,
    this.existImage,
    });

  @override
  State<atomSelect> createState() => _atomSelectState();
}

class _atomSelectState extends State<atomSelect> {
  String selectedValue = '';

  TextEditingController valueSelect = TextEditingController();
  
  // final List listDocuments = <Object>[
  //   {'value': '1', 'label': 'Cedula de ciudadania'},
  //   {'value': '2', 'label': 'Pasaporte'},
  //   {'value': '3', 'label': 'Tarjeta de identidad'},
  // ];
  bool someSelected = false;
  @override
  Widget build(BuildContext context) {
    
    if(someSelected == false){
      valueSelect.text = widget.nameSelect;
      someSelected = widget.selectedTrue ?? false;
    }
      
    return GestureDetector(
      onTap: () {
        _showOptionsDialog(context);
      },
      child: Container(
          
          width: widget.widthSelect == null ? 400.0 : widget.widthSelect,
          // height: scaledFontSize(context,47.0),
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.90),
          decoration: styleInputs.decorationInputs,
          child: TextFormField(
            validator: widget.validator,
            enabled: false,
            controller: valueSelect,
            cursorColor: colores.blue1,
            textAlign: TextAlign.center,
            style: someSelected ? TextStyle(fontSize: scaledFontSize(context,20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal) : TextStyle(fontSize: scaledFontSize(context,20.0), color: Color(0xff0095CD).withOpacity(0.4), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal ),
            // style:  TextStyle(fontSize:  scaledFontSize(context,20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              prefixIcon: Padding(
                  padding: EdgeInsets.only(
                      left: 15), // Agregar padding a la izquierda del Icon
                  child: Icon(Icons.arrow_drop_down, color: Colors.transparent, size: 28.0,)),
              // hintText: widget.textInput,
              hintStyle: TextStyle(
                  color: Color(0xff0095CD),
                  fontSize:  scaledFontSize(context,20.0),
                  fontFamily: "NunitoRegular",
                  fontWeight: FontWeight.normal),
              filled: true,
              fillColor: Color(0xffffffff),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide.none,
              ),
              errorStyle: TextStyle(
                fontSize: 0,
                height: 0,
                color: Colors.transparent,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide.none
              ),
              suffixIcon: Icon(Icons.arrow_drop_down_rounded, color: Color(0xff0095CD),size: 28.0,),
              labelText: valueSelect.text != widget.nameSelect ? widget.nameSelect :  widget.requiredSelect == null || widget.requiredSelect == true ? "Este campo es obligatorio" : "",
              labelStyle:  TextStyle(color: colores.gray4, fontSize:scaledFontSize(context,20.0), backgroundColor: colores.white,),
              floatingLabelAlignment: FloatingLabelAlignment.center,
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
        ),
    );
        
  }

  Future<void> _showOptionsDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: colores.white,
          title: Text(widget.nameSelect, style: TextStyle(fontSize: scaledFontSize(context,20.0), fontFamily: "NunitoBold", fontWeight: FontWeight.normal, color: colores.blue5), textAlign: TextAlign.center,),
          content:SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.itemsSelect.map((document) {
                return Column(
                  children: [
                    ListTile(
                      title: widget.existImage == null || widget.existImage == false ? Column(
                        children: [
                          widget.existSpecie != null && widget.existSpecie != false ? Text(document.specie, style: TextStyle(
                            fontSize: scaledFontSize(context,18.0),
                            fontFamily: "NunitoBold",
                            fontWeight: FontWeight.bold,
                            color: colores.blue6,
                          ), textAlign: TextAlign.center,) : Container(height: 0.0,),
                          // Text(document.label, style: 
                          Text(document.label, style: TextStyle(fontSize: scaledFontSize(context,18.0), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal, color: colores.blue1), textAlign: TextAlign.center,),
                          widget.existDate != null && widget.existDate != false ?  Text(document.date, style: TextStyle(

                            fontSize: scaledFontSize(context,16.0),
                            fontFamily: "NunitoRegular",
                            fontWeight: FontWeight.normal,
                            color: colores.blue5
                          ), textAlign: TextAlign.center,) : Container(height: 0.0,),
                        ],
                      ) : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Image.asset(
                              document.urlImage,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(child: Text(document.label, style: TextStyle(fontSize: scaledFontSize(context,18.0), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal, color: colores.blue1), textAlign: TextAlign.center,)),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          someSelected = true; //Siempre debe ir esta variable
                          selectedValue = document.label;
                          valueSelect.text = document.label;
                        });
                        Navigator.of(context).pop();
                        widget.twoParams == null || widget.twoParams == false ? widget.onChanged!((document.value).toString()) : widget.onChangedTwo!((document.value).toString(), (document.label).toString());
                      },
                    ),
                    Container(
                      width: 400.0,
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.90
                      ),
                      child: Divider(
                        color: colores.gray5,
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                  ],
                );
                
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
