import 'package:flutter_svg/svg.dart';

List wellcomeSteps = [
  { 
    'label': 'Olá',
    'image':SvgPicture.asset('assets/slide-step-1.svg'), 
    'description': 'Bem-vindo ao aplicativo\n GetMalas. Faremos de tudo para que você guarde só as lembranças felizes do passeio! Arraste para o lado e veja como é simples utilizar nosso serviço.' 
  },
  { 
    'label': 'Escolha',
    'image':SvgPicture.asset('assets/slide-step-2.svg'), 
    'description': 'Você escolhe o modelo, a cor, faz a reserva e nós preparamos a sua mala.' 
  },
  { 
    'label': 'Receba',
    'image':SvgPicture.asset('assets/slide-step-3.svg'), 
    'description': 'Retire a mala com um parceiro ou receba via delivery em seu endereço' 
  },
  { 
    'label': 'Curta',
    'image':SvgPicture.asset('assets/slide-step-4.svg'), 
    'description': 'Aproveite o passeio sem dores de cabeça. Em caso de danos ou avarias no aeroporto, nós cuidamos de tudo.' 
  },
  { 
    'label': 'Devolva',
    'image':SvgPicture.asset('assets/slide-step-5.svg'),
    'description': 'Pronto! Você acaba de ganhar mais espaço em casa! Vamos buscar a mala em seu endereço ou você devolve onde retirou.' 
  }
];
