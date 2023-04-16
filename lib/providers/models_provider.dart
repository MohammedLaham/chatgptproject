import 'package:chatgptproject/models/models_model.dart';
import 'package:chatgptproject/services/api_services.dart';
import 'package:flutter/cupertino.dart';

class ModelsProvider with ChangeNotifier {
  String currentModel = "text-davinci-003";
  String get getCurrentModel {
    return currentModel;
  }
  void setCurrentModel(String newModel){
    currentModel=newModel;
    notifyListeners();
  }
  List<ModelsModel> modelList = [];
  List<ModelsModel> get getModelsList {
    return modelList;
  }
Future<List<ModelsModel>> getAllModels() async{
    modelList=await ApiService.getModels();
    return modelList;
}
}
