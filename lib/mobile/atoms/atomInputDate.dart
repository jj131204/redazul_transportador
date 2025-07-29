import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/styleInputs.dart';
final months = ['Enero', ' Febrero', 'Marzo', 'Abril', 'mayo','junio','julio', 'agosto','septiembre', 'octubre', 'noviembre', 'diciembre'];

bool dateSelected = false;
DateTime selectedDate = DateTime.now();

// Parametros
// Obligatorios
  // nameInput: Nombre del input tipo date
  // saveValue: Función que se ejecuta cuando se llenan 
// Opcionales
  // required: True si el input es obligatorio
  // completed: Marcar como true si el input ya tiene un valor por defecto (el el caso de que se una vista de editar y ya exista una fecha.)
  // firstDate: Fecha incial desde la que se pueden escoger
  // lastDate: Fecha final desde la que se puede escoger


class atomInputDate extends StatefulWidget {

  final String nameInput;
  final Function saveValue;
  final bool? required;
  final bool? completed;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const atomInputDate({
    super.key,
    required this.nameInput,
    required this.saveValue,
    this.required,
    this.completed,
    this.firstDate,
    this.lastDate
  });

  @override
  State<atomInputDate> createState() => _atomInputDateState();
}

class _atomInputDateState extends State<atomInputDate> {

  @override
  void initState() {
    super.initState();
    
    setState(() {
      dateSelected = false;
    });
  }

  Future<bool> _selectDate(BuildContext context) async {
      DateTime? picked = await DatePicker.showSimpleDatePicker(
        context,
        initialDate: selectedDate,
        firstDate: widget.firstDate != null ? widget.firstDate : DateTime(1900),
        lastDate: widget.lastDate != null ? widget.lastDate : DateTime.now(),
        dateFormat: "yyyy--MMMM--dd",
        locale: DateTimePickerLocale.es,
        looping: true,
        titleText: 'Selecciona la fecha',
        confirmText: 'Guardar',
        cancelText: 'Cancelar',
        reverse: true,
        textColor: colores.black,
        itemTextStyle: TextStyle(fontSize: 20.0)
      );
      if (picked != null) {
        setState(() {
          selectedDate = picked;
          dateSelected = true;
          widget.saveValue(picked);
          // dateVencimiento = '${selectedDate.day} / ${months[selectedDate.month - 1]} / ${selectedDate.year}';
        });
        return true;
      }else{
        return false;
      }
    }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        bool result  = await _selectDate(context);
        if (result) {
          setState(() {
            dateSelected = true;
          });
        }
      },
      child: Container(
        color: colores.white,
        child: Stack(
          children: [
            Container(
              height: scaledFontSize(47.0),
              width: 400.0,
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.90),
              // padding: EdgeInsets.all(10.0),
              decoration: styleInputs.decorationInputs,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Icono para centrar
                  dateSelected ?
                  Text('${selectedDate.day} - ${months[selectedDate.month - 1]} - ${selectedDate.year}', style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal),) : 
                  widget.completed != null && widget.completed == true ? Text('${widget.nameInput}', style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal)):
                  Text('${widget.nameInput}', style: TextStyle(fontSize: scaledFontSize(20.0), color: Color(0xff0095CD).withOpacity(0.4), fontFamily: "NunitoRegular", fontWeight: FontWeight.normal))  
                ],
              ),
            ),
            Transform.translate(
                offset:  Offset(0, -16.0),
                child: Container(
                  // width: 400.0,
                  width: 400.0,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.90
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  color: Colors.transparent,
                  child: widget.required != null ?  Center(
                    child: Container(
                      color: Colors.white,
                      // width: ,
                      child: Text(
                        'Este campo es obligatorio',
                        style: TextStyle(color: colores.gray4, fontSize:scaledFontSize(15.0), backgroundColor: colores.white,),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ): Container()
                ),
              )
          ],
        ),
      ),
    );
  }
}