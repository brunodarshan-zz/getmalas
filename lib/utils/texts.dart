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

List slidesHome = [
  {
    'title': 'Quanto custa?',
    'description': 'Conheça nossos produtos e veja o preço de cada um',
    'image': SvgPicture.asset('assets/home-card-1.svg')
  },
  {
    'title':'Seguro viagem',
    'description':'Conhe�a nossas pol�ticas de seguro, para garantir uma viagem tranquila',
    'image': SvgPicture.asset('assets/home-card-2.svg')
  },
  {
    'title': 'Acessórios',
    'description': 'As melhores dicas de acessórios para você ter uma viagem incrível',
    'image': SvgPicture.asset('assets/home-card-3.svg')
  },
  {
    'title':'Dúvidas',
    'description':'Saiba quais são as dúvidas mais comuns entre nossos clientes',
    'image': SvgPicture.asset('assets/home-card-4.svg')
  },
  {
    'title': 'Chip de dados',
    'description': 'Com o chip de dados você se pode se atualizar durante a viagem',
    'image': SvgPicture.asset('assets/home-card-5.svg')
  }
];