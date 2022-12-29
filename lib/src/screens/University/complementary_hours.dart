import 'package:flutter/material.dart';
import 'package:unimeet/src/services/college/complementary_hours_service.dart';
import 'package:unimeet/src/models/complementary_hours_model.dart';
import 'package:unimeet/src/widgets/button_widget.dart';
import 'package:unimeet/src/widgets/custom_appbar.dart';
import 'package:unimeet/src/widgets/input_widget.dart';

class ComplementaryHours extends StatefulWidget {
  const ComplementaryHours({super.key});

  @override
  State<ComplementaryHours> createState() => _ComplementaryHoursState();
}

class _ComplementaryHoursState extends State<ComplementaryHours> {
  final TextEditingController _complementaryHours = TextEditingController();

  bool submitted = false;
  bool edit = false;
  String complementaryText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi fringilla eros nulla, non bibendum enim aliquam vitae. Fusce ut bibendum justo, at sagittis ante. Praesent lobortis metus in lacinia auctor. Morbi vitae interdum leo, ac convallis justo. Praesent sagittis tincidunt dui vitae interdum. Proin pretium nisi nunc, sit amet ultricies lectus hendrerit vel. In augue eros, hendrerit nec scelerisque ac, sollicitudin nec turpis. Ut sapien magna, hendrerit et pellentesque ac, consequat sed lacus.Nulla pellentesque augue vel mauris pellentesque facilisis. Integer lectus velit, vehicula sit amet ante sed, porttitor venenatis neque. Fusce imperdiet leo quis ipsum lacinia scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti. Nunc ante est, euismod sit amet faucibus ac, dictum vitae neque. Cras eget finibus sem. Mauris nulla sem, lobortis in elementum id, finibus at lacus.Ut volutpat ante nec turpis ornare fermentum vitae quis turpis. Ut ac enim eget urna aliquet viverra. Sed tristique tempus magna eu mollis. Praesent lobortis ac metus ut suscipit. Nunc id consequat augue. Curabitur mollis egestas tincidunt. Nunc sed mauris interdum, pellentesque mauris a, dapibus nunc. Phasellus vel tincidunt est. Donec porttitor pellentesque mattis. Nunc iaculis massa enim, ullamcorper eleifend lectus tempus eu. Aliquam sed odio orci. Sed sed felis eget felis dapibus maximus sed quis augue. Aliquam elementum pretium massa nec euismod. Praesent nulla purus, hendrerit at diam in, maximus ultrices dui.Vestibulum pharetra vehicula tellus, eget maximus justo maximus vitae. Morbi gravida gravida congue. Curabitur laoreet ligula at gravida lobortis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent dictum augue non mauris pretium, eget tempor nisl lacinia. Phasellus at enim eget dui tempus congue et commodo ex. Fusce ut justo vestibulum, interdum nunc at, sagittis lectus. Vestibulum turpis nibh, posuere ut ligula ac, ornare sagittis eros. Sed fermentum vulputate ultricies. Donec rhoncus, orci eu rutrum dignissim, sapien urna faucibus tortor, vel interdum libero mi ac est. Proin id lacus ipsum. Etiam mollis commodo urna in volutpat. Sed non dignissim enim, quis convallis dolor.Morbi auctor in magna vitae pellentesque. Vestibulum mollis eleifend erat, nec finibus felis consequat quis. Donec maximus at ligula vitae consequat. Fusce cursus felis nec ante eleifend condimentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque ut condimentum odio. Sed dapibus metus vitae iaculis semper.Integer efficitur, purus vitae convallis pulvinar, metus neque mattis risus, ut commodo libero elit a lectus. Praesent ultricies libero lobortis ligula maximus, lobortis iaculis lectus tempor. Morbi volutpat mauris non erat efficitur ultrices. Suspendisse nec enim luctus, efficitur ipsum vitae, fermentum elit. Aliquam non risus mi. Curabitur porta nibh ac convallis ultricies. Nullam elementum ornare consectetur.Donec interdum, enim quis dapibus feugiat, metus purus convallis felis, et laoreet magna lacus et tortor. Nulla varius leo vitae tellus bibendum, nec pretium eros bibendum. Duis ut lorem augue. Duis tincidunt lorem eu orci porta, eu malesuada lacus molestie. Quisque nec est felis. Ut nisl nisi, consequat nec odio vestibulum, tempus laoreet mi. Etiam aliquet arcu quis massa efficitur, in bibendum nunc malesuada. Etiam non lectus maximus, consectetur augue id, vestibulum est. Etiam vel enim sapien. Praesent ipsum velit, gravida convallis sapien sit amet, condimentum viverra massa. Duis laoreet nunc orci, sed auctor tortor semper ut.Ut vestibulum malesuada porttitor. Phasellus et elementum tortor, quis volutpat nisi. Cras et eleifend urna. Praesent lacinia, mi at auctor commodo, ipsum odio condimentum nunc, non dapibus nisl arcu at eros. Vestibulum fermentum purus at hendrerit lacinia. Aenean massa sapien, interdum ut finibus non, lobortis ut nulla. Mauris eros tortor, eleifend id enim a, pulvinar condimentum metus. Proin mauris metus, viverra a nibh et, interdum efficitur dolor. Pellentesque congue, nisi eu auctor viverra, nisi lorem pellentesque risus, eu efficitur quam sapien id orci. Vestibulum sit amet ullamcorper ante, sed feugiat magna. Quisque feugiat eget sapien ut tincidunt. Nullam molestie, nulla non facilisis finibus, velit enim viverra erat, tempus faucibus velit sapien quis leo. In hac habitasse platea dictumst. Pellentesque accumsan mauris diam. Nulla facilisi.Integer volutpat dapibus tempor. Nunc id pulvinar mi. Phasellus nec quam a urna dapibus imperdiet ut vel libero. Mauris venenatis, elit vitae lobortis vehicula, nisi lacus sollicitudin justo, a commodo eros magna sed orci. Nullam pulvinar massa vel congue tincidunt. Aliquam erat volutpat. Donec a massa mi. Fusce maximus accumsan efficitur. In vel sodales quam, tincidunt bibendum tellus. Maecenas sollicitudin quam sit amet pretium tincidunt. Suspendisse lorem nulla, fermentum vitae tincidunt id, condimentum at magna. Mauris et leo vitae diam imperdiet convallis. Quisque rutrum turpis in lacinia vehicula. Nunc pulvinar, odio id facilisis condimentum, nulla eros iaculis nisl, nec mollis ipsum erat ut erat.Pellentesque ullamcorper enim dictum, condimentum velit et, hendrerit felis. Curabitur tempus justo neque, et mollis eros tincidunt et. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque placerat quam sed nisi sollicitudin, sed lobortis massa interdum. Mauris accumsan sit amet nisi a congue. Maecenas quis tellus nec eros lacinia elementum. Phasellus maximus auctor augue, semper suscipit sem aliquam nec. Sed ac velit id massa vestibulum vulputate. Praesent ex nulla, pulvinar vel scelerisque eget, feugiat et mauris.";

  void handleEditClick() {
    setState(() {
      edit = !edit;
    });
  }

  void handleUpdateData() {
    setState(() {
      complementaryText = _complementaryHours.text;
      edit = !edit;
    });
    ComplementaryHoursModel complementaryHoursData =
        ComplementaryHoursModel(_complementaryHours.text);
    editComplementaryHours(complementaryHoursData).then(print);
    _complementaryHours.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E26),
      appBar: const CustomAppBar(title: "Horas Complementares"),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Button(
          buttonText:
              edit != true ? "Editar Informações" : "Cancelar atualização",
          handleClickButton: handleEditClick,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            edit == false
                ? Text(
                    complementaryText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                : Input(
                    controller: _complementaryHours,
                    labelText: "Insira as informações aqui.",
                    submitted: submitted,
                    minLines: 10,
                    maxLines: 120,
                  ),
            const SizedBox(height: 24),
            edit == true
                ? Button(
                    buttonText: "Atualizar informações",
                    handleClickButton: handleUpdateData)
                : const Text(""),
            const SizedBox(height: 96),
          ],
        ),
      ),
    );
  }
}
