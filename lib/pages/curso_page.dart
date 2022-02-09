import 'package:listagem_curso/models/curso.dart';
import 'package:listagem_curso/repositories/curso_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CursoPage extends StatefulWidget {

  CursoPage({Key? key}) : super(key: key);

  @override
  _CursoPageState createState() => _CursoPageState();
}

class _CursoPageState extends State<CursoPage> {
  final tabela = CursoRepository.tabela;

  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');

  List<Curso> selecionadas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listagem Curso'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int curso) {
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
            leading: (selecionadas.contains(tabela[curso]))
              ? CircleAvatar(
                child: Icon(Icons.check),
              )
              : SizedBox(
                child: Image.asset(tabela[curso].imagem, 
                width: 50
                )
              ),
            title: Text(tabela[curso].nome, 
              style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey
              )
            ),
            subtitle: Text(
              tabela[curso].categoria, 
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),
            ),
            trailing: Text(
              real.format(tabela[curso].preco),
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: Colors.blue[900]
              )
            ),
            selected: selecionadas.contains(tabela[curso]),
            selectedTileColor: Colors.indigo[50],
            onLongPress: (){
              setState(() {
                (selecionadas.contains(tabela[curso]))
                  ? selecionadas.remove(tabela[curso])
                  : selecionadas.add(tabela[curso]);                
              });
            },
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, ___) => Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
