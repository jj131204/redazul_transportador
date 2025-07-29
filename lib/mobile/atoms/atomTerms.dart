import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/fonts.dart';

class atomTerms extends StatelessWidget {
  const atomTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height * 0.45),
      width: (MediaQuery.of(context).size.width * 0.90),
    padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: colores.blue5,
          width: 1.0,          // Grosor del borde
        ),
      ),
      
      child: ScrollbarTheme(
        data: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(colores.blue5),
          trackColor: MaterialStateProperty.all(colores.blue5),
          // crossAxisMargin: 10.0,
          // mainAxisMargin: 10.0,
          
        ),
        child:Scrollbar(
          child: SingleChildScrollView(
            child: Text("Acepto y autorizo que miPescao S.A.S. (en adelante la “Compañía”), identificada con NIT 901.323.612-2, como Responsable del Tratamiento, recolecte, use, almacene, circule, transmita, transfiera y, en general, realice el Tratamiento de mis Datos Personales, de conformidad con la Ley 1581 de 2012, el Decreto 1074 de 2015 y demás normas que los modifiquen, adicionen o sustituyan. Acepto que el Tratamiento de mis Datos Personales se realizará con las siguientes finalidades:. \n\ni.	Tramitar la creación y administración de la cuenta de usuario productor/pescador en la plataforma. \nii.	Contactar al titular productor/pescador para el envío de información referida a la relación contractual y obligacional a que haya lugar. \niii.	Supervisar y hacer seguimiento a la correcta y debida ejecución de nuestra relación contractual \niv.	Ordenar y catalogar la información del productor  para llevar históricos y hacer análisis de la dinámica del productor. \nv.	Difundir promociones, campañas y encuestas. \nvi.	Procesar información sobre la producción en cuanto a especies, tallas, cantidades, precios, métodos de producción y gestión, para ofrecer los productos en la plataforma y establecer el grado de responsabilidad ambiental que será informado a quien interese. \nvii.	Para programar actividades de auditoria para revisión del cumplimiento de la responsabilidad ambiental. \nviii.	Para programar capacitaciones de acuerdo con las necesidades identificadas en el análisis de responsabilidad ambiental. \nix.	Procesar la información de los productores para la gestión y formalización de negocios. \nx.	Procesar la información para la gestión contable. \nxi.	Gestionar trámites administrativos, formalizar facturas, pagos y certificaciones. \n\nReconozco que he sido debidamente informado que mis derechos como Titular de Datos Personales son los establecidos en la Constitución Política y la Ley 1581 de 2012, especialmente los siguientes: (i) Acceder en forma gratuita a los datos proporcionados que hayan sido objeto de tratamiento; (ii) Conocer, actualizar y rectificar mi información frente a datos parciales, inexactos, incompletos, fraccionados, que induzcan a error, o a aquellos cuyo tratamiento esté prohibido o no haya sido autorizado; (iii) Solicitar prueba de la autorización otorgada; (iv) Presentar ante la Superintendencia de Industria y Comercio quejas por infracciones a lo dispuesto en la normatividad vigente; (v) Revocar la autorización y/o solicitar la supresión del dato, siempre que no exista un deber legal o contractual que impida eliminarlos; (vi) Abstenerme de responder las preguntas sobre Datos Sensibles. Mis derechos los podré ejercer por correo electrónico siguiendo el procedimiento establecido en la Política de Privacidad, escribiendo a la siguiente dirección de correo electrónica: contacto@mipescao.com. Manifiesto que conozco que la Política de Privacidad de la Compañía. ",
              style: TextStyle(
                fontSize: scaledFontSize(context, 18.0),
                fontFamily: "NunitoRegular",
                fontWeight: FontWeight.normal,
                color: colores.gray2
              )
            ),
          ),
        ),
      ),
    );
  }
}