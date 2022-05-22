import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:projeto_sindrome_down/model/topic.dart';

class ListTopics extends GetxController {
  final int id;

  ListTopics({required this.id});

  List<Topic> listTopics1 = [];
  List<Topic> listTopics2 = [];
  List<Topic> listTopics3 = [];
  List<Topic> listTopics4 = [];

  List<Topic> listaVazia = [];

  selectList() {
    //O que é sindrome de Down
    if (id == 1) {
      return listTopics1 = [
        Topic(
          'O que é a Síndrome de Down?',
          'A Síndrome de Down (SD) ou trissomia do cromossomo 21, é uma alteração genética causada por um erro na divisão celular durante a formação dos gametas (óvulos ou espermatozoides) ou na divisão embrionária. A SD é a alteração cromossômica (cromossomopatia) mais comum em humanos (Cerca de 1 pessoa a cada 700 nasce com SD, independente de etnia, gênero ou classe social) e a principal causa de deficiência intelectual na população. A presença do cromossomo 21 extra na constituição genética determina o surgimento de um conjunto de sinais e sintomas observáveis. Dentre os sinais físicos pode-se citar: olhos oblíquos; rosto arredondado; língua protusa (para fora da boca); raiz nasal achatada; baixa estatura; mãos pequenas e dedos curtos; flacidez muscular (hipotonia); prega palmar única; e dobras da pele nos cantos internos. Outros sintomas observáveis são o comprometimento intelectual; obesidade; disfunções cardiovasculares, musculares e pulmonares; bem como maior propensão do desenvolvimento de diabetes.Não se atribuem graus à SD. As diferenças entre as pessoas com SD, tanto do aspecto físico quanto de desenvolvimento, decorrem de aspectos genéticos individuais, intercorrências clínicas, estimulação, educação, nutrição, contexto familiar, e social.',
          false,
          false,
        ),
        Topic(
          'Teste 2',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 3',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 4',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 2',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 2',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
      ];
    } else if (id == 2) {
      return listTopics2 = [
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
      ];
    } else if (id == 3) {
      return listTopics2 = [
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
      ];
    } else if (id == 4) {
      //Sindrome de down e COVID-19
      return listTopics4 = [
        Topic(
          'Síndrome de Down e COVID-19',
          "Em relação ao COVID-19, é importante o cuidado com qualquer faixa etária, principalmente, com o público de portadores de Síndrome de Down uma vez que estão mais propensos a desenvolverem algumas doenças, facilitando a infecção por esse vírus. Logo, o processo de cuidado durante a pandemia permanece de maneira significativo, dentre esses cuidados tem: 1) hábito de alimentação saudável; 2) Medidas de Higienização, como levar as mãos; 3)Atividade física ;4) Distância social; 5) cumprimento do calendário vacinal; 6) Medidas de proteção, como uso de máscaras",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
        Topic(
          'Teste 1 +',
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry",
          false,
          false,
        ),
      ];
    } else {
      return listaVazia = [Topic('', '', false, false)];
    }
  }

  void atualizar() {
    update();
  }
}
