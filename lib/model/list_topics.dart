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
          'Síndrome de Down',
          '   A Síndrome de Down (SD) ou trissomia do cromossomo 21, é uma alteração genética causada por um erro na divisão celular durante a formação dos gametas (óvulos ou espermatozoides) ou na divisão embrionária. \n\n   A SD é a alteração cromossômica (cromossomopatia) mais comum em humanos (Cerca de 1 pessoa a cada 700 nasce com SD, independente de etnia, gênero ou classe social) e a principal causa de deficiência intelectual na população. A presença do cromossomo 21 extra na constituição genética determina o surgimento de um conjunto de sinais e sintomas observáveis.',
          false,
          false,
        ),
        Topic(
          'Características',
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
          'Causas da Síndrome de Down',
          "   A Síndrome de Down ocorre ao acaso e não se sabe ao certo os motivos que levam ao surgimento da alteração. A síndrome existe em todas as etnias e classes sociais. Embora se saiba que a chance de síndrome de Down aumente com a idade materna, 80% das crianças com síndrome de Down nascem de mulheres com menos de 35 anos. As mulheres mais jovens em idade fértil têm mais filhos do que mães em idade avançada",
          false,
          false,
        ),
        Topic(
          'Segunda Gravidez',
          "   A alteração genética ocorre ao acaso por isso provavelmente não ocorrerá novamente. Porém, não é possível afirmar com certeza, já que é ao acaso ou em alguns casos um dos pais é portador equilibrado da translocação do 21, mas para saber com mais detalhes é importante consultar um médico geneticista para estimar os riscos.",
          false,
          false,
        ),
        Topic(
          'Suspeita e Diagnóstico',
          "    Antes do nascimento: \n\n    Alguns exames são realizados durante a gestão para o acompanhamento do desenvolvimento do bebê, alguns deles, quando alterados, podem indiciar a presença da SD. Dentre eles, os exames de imagens, transluscência nucal e exames de sangue, como aumento de PAPP-A materno e Beta-HCG. Para a confirmação, é necessário coletar células do bebê ainda na barriga e realizar o exame genético (cariótipo).\n\n    Após o nascimento: \n\n    Após o nascimento é possível fazer o diagnóstico por meio do exame clínico - com base nos sinais e sintomas da SD – bem como, com base no teste genético (cariótipo)",
          false,
          false,
        ),
        Topic(
          'A Síndrome de Down pode ser curada?',
          "    A Síndrome de Down é uma condição permanente que não pode ser modificada. Não é considerada doença, por isso não se fala em cura. Como qualquer outra criança, os bebês têm variados tipos de habilidades e dificuldades.\n    As dificuldades podem ser minimizadas se a família e pessoas próximas tiverem uma atitude positiva em relação à síndrome de Down e ao futuro da criança.",
          false,
          false,
        ),
      ];
    } else if (id == 2) {
      return listTopics2 = [
        Topic(
          'Desenvolvimento ',
          "• Gestação\n• Amamentação\n• Vacinação\n• Acompanhamento médico e nutricional\n• Educação\n• Atividades físicas e cognitivas\n• Terapias\n• Socialização\n",
          false,
          false,
        ),
        Topic(
          'Gestação',
          "   Os cuidados durante a gravidez de uma criança com síndrome de down são os mesmos de uma gestação sem síndrome de down, sendo assim, é recomendado:\n\n1) realizar as consultas do Pré-natal na qual será feito um seguimento adequado, tendo em vista pelo menos seis consultas;\n\n2) fazer uma alimentação balanceada e adequada, evitando comidas com muita gordura, sal e açúcar;\n\n3) Fazer uma boa ingestão de água;\n\n4) Tomar os remédios e suplementos orientados pelo Pré-natal, como ácido fólico e sulfato ferroso;\n\n5) fazer exercícios regularmente e orientados;\n\n6) Não tomar remédios sem orientação médica;\n\n7) Não fazer o uso de bebidas alcoólicas, drogas e fumar.",
          false,
          false,
        ),
        Topic(
          'Amamentação',
          "    Na primeira fase de vida, 0 meses até 6 meses, deve iniciar os cuidados com a alimentação do bebê com de síndrome de down com a introdução somente do leite materno que é um alimento muito completo para o desenvolvimento, não precisando dar mais nada, como água, suco, mingau e outros leites. É importante que a mãe ajude o bebê a mamar.\n\nPosso dar de mamar:\n\n    O leite materno pode hidratar, oferecer proteínas e gorduras para um bom desenvolvimento; aumentar a relação de mãe e filho; fortalecer o sistema de defesa do bebê; proteger contra doenças;trabalhar os músculos; diminuir a dor na barriga; diminuir alergias; passar amor e carinho.",
          false,
          false,
        ),
        Topic(
          'Imunidade',
          "Vacinas\n\n    A vacina é uma medida muito importante para a proteção contra várias doenças, não protegendo somente a criança, mas todo mundo ao redor.    É um método ativo que estimula a defesa do corpo humano com a produção de anticorpos, aumentando a defesa do corpo. Sendo assim, a depender da faixa etária, tem as indicações certas entre relação aos tipos de vacinas que devem ser tomadas.\n\n   O calendário está disponível na aba Calendário Vacinal",
          false,
          false,
        ),
        Topic(
          'Acompanhamento médico e Nutricional',
          "    A criança com síndrome de down necessita de um suporte médico multidisciplinar desde o nascimento, principalmente, do pediatra para o rastreamento e acompanhamento de possíveis doenças e outros riscos a saúde, desenvolvimento e crescimento, fornecimento de orientações a cada fase da infância.\n\n    Sendo assim, os exames devem ser feitos de acordo com a rotina ou necessidade clínica da criança. Dentre os exames, podemos citar: cariótipo, hemograma (realizar semanal até os 2 anos de ida. Depois por ano), ecocardiograma, exame dos olhos (fazer com 6 meses e 12 meses. Depois, por ano) , tireóide (TSH e T4 livre, sendo com 0, 6 e 12 meses de vida. Após essa idade, fazer por ano), exame dos ouvidos.\n\n    Além disso, é importante o acompanhamento nutricional já que após 6 meses, os alimentos ricos e variados já serão oferecidos aos poucos a criança, sendo uma etapa muito importante para o desenvolvimento. Oferte uma alimentação balanceada em quantidade e qualidade, como legumes, frutas e proteínas, dando preferência para alimentos naturais. Evitando alimentos muito industrializados, gordurosos, com muito açúcar ou sal. Comer colorido e bem é importante.",
          false,
          false,
        ),
      ];
    } else if (id == 3) {
      return listTopics2 = [
        Topic(
          'Educação',
          "    A criança com síndrome de down não se desenvolvem como as média das outras crianças. Por se tratar de uma doença genética, essa síndrome não tem cura, mas uma boa educação acompanhada pelos professores e pais é muito importante para o desenvolvimento de diversas dimensões e habilidades, como fala, raciocínio, escrita, socialização e alfabetização, principalmente, nos primeiros anos de vida, sendo essencial a inclusão dessas crianças nas escolas. Dessa maneira, auxiliará no desenvolvimento máximo dessa criança \n\n    Sendo assim, uma boa estrutura educacional pode ajudar uma pessoa com síndrome de down a ter uma maior independência, formação, emprego e permitindo que eles se desenvolvam como parte da sociedade e ajudando na vida adulta.\n\n    É importante também orientações relacionadas à educação sexual e planejamento familiar, como a prevenção da gravidez e doenças transmitidas pelo sexo",
          false,
          false,
        ),
        Topic(
          'Atividades físicas e cognitivas',
          "    As atividades físicas e cognitivas para crianças com síndrome de down são importantes para o desenvolvimento, podendo trabalhar para o melhoramento da flacidez muscular, articulação frouxa, postura, memória, linguagem e social.\n    Sendo assim, essas atividades devem ser iniciadas desde criança acompanhando a evolução da criança e realizadas pela família, escola, educador físico e de um grupo, possibilitando a confecção de atividades e brincadeira e, consequentemente, trazendo experiências sociais, desenvolvimento no nível motor, funcional, sensorial, afetivo, cultural e perceptual e, consequentemente, qualidade de vida e minimização de doenças.\n    Dentre as atividades, podemos citar: natação, dança, ginástica artística, equoterapia, capoeira hidroginástica.",
          false,
          false,
        ),
        Topic(
          'Terapias',
          "    As crianças com síndrome de down possuem um desenvolvimento mais lento da atividade corporal e função intelectual, sendo assim é importante a aplicação de terapias para uma melhor evolução da criança e a estimulação pode ser por meio de terapia ocupacional, como brincadeiras.\n    Nos primeiros meses de vida terapias auxiliam na execução de atividades do dia a dia e cognitivas (visão, audição, tato e olfato), a fisioterapia a qual trabalha a parte de musculatura, movimento e equilíbrio, fonoaudiologia, sendo individual e em grupo, que permite a estimulação precoce, hidroterapia. Dessa maneira, existem várias formas de terapia para uma melhor qualidade de vida e autonomia da criança com síndrome de down. ",
          false,
          false,
        ),
        Topic(
          'Socialização',
          "    O período de socialização da criança com síndrome de down é muito importante uma vez que a convivência com pessoas diferentes trazem muitos benefícios para essas crianças, como a estimulação e o desenvolvimento de habilidades (comunicação), permitindo que elas tenham uma vida normal em grupo.\n    Dentre as habilidades que podem ser abordadas, temos: comportamento adequado fora de casa e a relação da criança com as pessoas fora do seu convívio, o obedecimento da criança ao ser falado algo, fazer amizades, o seguimento de regras da sociedade (fazer fila, sentar), aprender a brincar com as outras crianças, criar uma independência para fazer as coisas do dia a dia e ajudar as pessoas.",
          false,
          false,
        ),
      ];
    } else if (id == 4) {
      //Sindrome de down e COVID-19
      return listTopics4 = [
        Topic(
          'Síndrome de Down e COVID-19',
          "   Em relação ao COVID-19, é importante o cuidado com qualquer faixa etária, principalmente, com o público de portadores de Síndrome de Down uma vez que estão mais propensos a desenvolverem algumas doenças, facilitando a infecção por esse vírus. Logo, o processo de cuidado durante a pandemia permanece de maneira significativo, dentre esses cuidados tem:\n\n1) hábito de alimentação saudável;\n\n2) Medidas de Higienização, como levar as mãos;\n\n3) Atividade física;\n\n4) Distância social;\n\n5) cumprimento do calendário vacinal;\n\n6) Medidas de proteção, como uso de máscaras",
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
