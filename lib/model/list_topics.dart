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
          '   A Síndrome de Down (SD) ou trissomia do cromossomo 21, é uma alteração genética causada por um erro na divisão celular durante a formação dos gametas (óvulos ou espermatozoides) ou na divisão embrionária. \n\n   A SD é a alteração cromossômica (cromossomopatia) mais comum em humanos (Cerca de 1 pessoa a cada 700 nasce com SD, independente de etnia, gênero ou classe social) e a principal causa de deficiência intelectual na população. A presença do cromossomo 21 extra na constituição genética determina o surgimento de um conjunto de sinais e sintomas observáveis.',
          false,
          false,
        ),
        Topic(
          'Quais são os características observáveis?',
          "Dentre os sinais físicos pode-se citar: olhos oblíquos; rosto arredondado; língua protusa (para fora da boca); raiz nasal achatada; baixa estatura; mãos pequenas e dedos curtos; flacidez muscular (hipotonia); prega palmar única; e dobras da pele nos cantos internos. Outros sintomas observáveis são o comprometimento intelectual; obesidade; disfunções cardiovasculares, musculares e pulmonares; bem como maior propensão do desenvolvimento de diabetes. \n\n    Não se atribuem graus à SD. As diferenças entre as pessoas com SD, tanto do aspecto físico quanto de desenvolvimento, decorrem de aspectos genéticos individuais, intercorrências clínicas, estimulação, educação, nutrição, contexto familiar, e social.",
          false,
          false,
        ),
        Topic(
          'Como a Síndrome de Down acontece?',
          "   Cada pessoa nasce com 46 cromossomos. As células do seu bebê contêm um cromossomo 21 extra. Isso ocorre sob três formas principais, segundo a Classificação Internacional de Doenças (CID-10): \n\n    1. Síndrome de Down, trissomia do 21 (93-95% dos casos), por erros na divisão celular (não disjunção meiótica) do óvulo (95% dos casos) ou do espermatozoide (5% dos casos). \n\n   2. Síndrome de Down, trissomia do 21, mosaicismo por erros na divisão embrionária (não disjunção mitótica).Representa cerca de 1 a 2%. Os indivíduos têm células com 46 cromossomos, o que é normal, e células com 47 cromossomos devido ao cromossomo 21 extra, o que caracteriza a Síndrome de Down. \n\n   3. Síndrome de Down, trissomia 21, translocação. Representa cerca de 3 a 4%. Neste caso, uma parte grande do cromossomo 21 extra se une ao cromossomo 14 ou 22, único caso em que pode haver uma relação genética (essa característica pode ter sido herdada de um dos pais).",
          false,
          false,
        ),
        Topic(
          'Por que Acontece?',
          "   A Síndrome de Down ocorre ao acaso e não se sabe ao certo os motivos que levam ao surgimento da alteração. A síndrome existe em todas as etnias e classes sociais. Embora se saiba que a chance de síndrome de Down aumente com a idade materna, 80% das crianças com síndrome de Down nascem de mulheres com menos de 35 anos. As mulheres mais jovens em idade fértil têm mais filhos do que mães em idade avançada",
          false,
          false,
        ),
        Topic(
          'Será que vai acontecer de novo em uma próxima gravidez?',
          "   A alteração genética ocorre ao acaso por isso provavelmente não ocorrerá novamente. Porém, não é possível afirmar com certeza, já que é ao acaso ou em alguns casos um dos pais é portador equilibrado da translocação do 21, mas para saber com mais detalhes é importante consultar um médico geneticista para estimar os riscos.",
          false,
          false,
        ),
      ];
    } else if (id == 2) {
      return listTopics2 = [
        Topic(
          'Suspeita e Diagnóstico',
          "   Antes do nascimento: Alguns exames são realizados durante a gestão para o acompanhamento do desenvolvimento do bebê, alguns deles, quando alterados, podem indiciar a presença da SD. Dentre eles, os exames de imagens, transluscência nucal e exames de sangue, como aumento de PAPP-A materno e Beta-HCG. Para a confirmação, é necessário coletar células do bebê ainda na barriga e realizar o exame genético (cariótipo). \n\n    Após o nascimento: Após o nascimento é possível fazer o diagnóstico por meio do exame clínico - com base nos sinais e sintomas da SD – bem como, com base no teste genético (cariótipo)",
          false,
          false,
        ),
        Topic(
          'A Síndrome de Down pode ser curada?',
          "   A síndrome de Down é uma condição permanente que não pode ser modificada. Não é considerada doença, por isso não se fala em cura. Como qualquer outra criança, os bebês têm variados tipos de habilidades e dificuldades. \n\n   As dificuldades podem ser inimizadas se a família e pessoas próximas tiverem uma atitude positiva em relação à síndrome de Down e ao futuro da criança.",
          false,
          false,
        ),
      ];
    } else if (id == 3) {
      return listTopics2 = [
        Topic(
          'Gestação',
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
          "   Em relação ao COVID-19, é importante o cuidado com qualquer faixa etária, principalmente, com o público de portadores de Síndrome de Down uma vez que estão mais propensos a desenvolverem algumas doenças, facilitando a infecção por esse vírus. Logo, o processo de cuidado durante a pandemia permanece de maneira significativo, dentre esses cuidados tem: 1) hábito de alimentação saudável; 2) Medidas de Higienização, como levar as mãos; 3)Atividade física ;4) Distância social; 5) cumprimento do calendário vacinal; 6) Medidas de proteção, como uso de máscaras",
          false,
          false,
        ),
        Topic(
          'Sobre os métodos de vacinação',
          "   Os métodos de vacinação desenvolvidos são extremamente eficazes para minimizar o desenvolvimento da doença de maneira mais grave, convergindo em uma medida de proteção direta ou indireta contra a doença, ou seja, protegendo a pessoa que toma a vacina e a população devido ao fenômeno rebanho. Sendo assim, quanto maior o número de pessoas que se vacinam em uma população menor será a incidência da doença nessa comunidade.",
          false,
          false,
        ),
        Topic(
          'Importancia da vacinação',
          "   É importante a vacinação correta das pessoas portadoras de síndrome de Down tanto menores do que 40 anos quanto maiores do que 40 anos com o objetivo de minimizar os riscos advindos do COVID-19 em associação com as doenças que podem acompanhar a pessoa com síndrome de Down.",
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
