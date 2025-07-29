

class OnchangueRules {
  static String? isRequired(String? value) {
    if (value == null || value.isEmpty) {
      return "Este campo es obligatorio";
    }
    return null;
  }

    static String? isRequiredSelect(String? value, String? nameSelect) {
    if (value == null || value.isEmpty  || value == nameSelect) {
      return "Este campo es obligatorio";
    }
    return null;
  }


  static String? isValidEmailRequired(String? value) {
    if (value == null || value.isEmpty) {
      return "Este campo es obligatorio";
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Ingresa un email valido";
    }
    return null;
  }

  static String? isPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Este campo es obligatorio";
    }
    if (value.length < 8) {
      return "Ingresa una contraseña valida";
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Debe tener al menos una mayúscula";
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "Debe tener al menos una minúscula";
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return "Debe tener al menos un número";
    }
    return null;
  }

  static String? confirmPassword(String? password, String? confirmPassword) {
    if (password != confirmPassword) {
      return "las contraseñas no coinciden";
    }
    return null;
  }

  static String? codeVerification(String? code) {
    if (code == "") {
      return "Este campo es obligatorio";
    }else if(code!.length < 6){
      return "Ingresa un codigo valido";
    }
    return null;
  }



}