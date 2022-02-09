import 'package:listagem_curso/models/curso.dart';

class CursoRepository {
  static List<Curso> tabela = [
     Curso(
      imagem: 'images/web.jpg', 
      nome: 'Desenvolvimento Web', 
      categoria: 'Tecnologia', 
      cargahoraria: 120, 
      preco: 225.67, 
      descricao: 'Crie um site simples usando HTML, CSS e Javascript'
      ),
    Curso(
      imagem: 'images/power-bi.png', 
      nome: 'Power-Bi', 
      categoria: 'Marketing digital', 
      cargahoraria: 40, 
      preco: 250.67, 
      descricao: 'Aprenda a lidar com diferentes redes sociais (Youtube, Instagram e Facebook) para alavancar seus negócios'
      ),

    Curso(
      imagem: 'images/google-analytics.png', 
      nome: 'Google Analitics', 
      categoria: 'Marketing digital', 
      cargahoraria: 60, 
      preco: 225.67, 
      descricao: 'Aprenda o melhor do marketing digital'
      ),

    Curso(
      imagem: 'images/node-js.png', 
      nome: 'Desenvolvimento Backend com Node', 
      categoria: 'Tecnologia', 
      cargahoraria: 20, 
      preco: 225.67, 
      descricao: 'Desenvolvimento backend Javascript e Node.js'
      ),

    Curso(
      imagem: 'images/photoshop-48.png', 
      nome: 'Photoshop', 
      categoria: 'Design Gráfico', 
      cargahoraria: 200, 
      preco: 280.56, 
      descricao: 'Aprenda edição de imagens com Photoshop'
      ),  
  ];
}
