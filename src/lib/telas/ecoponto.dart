import 'package:flutter/material.dart';
import 'cameraQrPage.dart';  // Certifique-se de que essa página está importada corretamente

class Veiculo {
  final String nome;
  final int bateria;

  Veiculo(this.nome, this.bateria);

  String get iconeBateria {
    if (bateria >= 95) return 'assets/bateria_100.png';
    if (bateria >= 75) return 'assets/bateria_75.png';
    if (bateria >= 50) return 'assets/bateria_50.png';
    if (bateria >= 25) return 'assets/bateria_25.png';
    return 'assets/bateria_0.png';
  }

  bool get podeAlugar => bateria >= 20;
}

class EcoPontoPage extends StatelessWidget {
  final String title;
  final String description;

  const EcoPontoPage({super.key, required this.title, required this.description});

  void _mostrarPopupAluguel(BuildContext context, Veiculo veiculo) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alugar veículo?'),
        content: Text('Deseja alugar o ${veiculo.nome}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Não
            child: const Text('Não'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Fecha o popup
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CameraQrPage()), // Navega para a página de QR
              );
            },
            child: const Text('Sim'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Veiculo> veiculos = [
      Veiculo('Bicicleta 1', 95),
      Veiculo('Patinete 2', 72),
      Veiculo('Bicicleta 3', 43),
      Veiculo('Patinete 4', 19), // não pode alugar
      Veiculo('Bicicleta 5', 8),  // não pode alugar
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
        children: [
          // Fundo
          SizedBox.expand(
            child: Image.asset(
              "assets/map_background.png",
              fit: BoxFit.cover,
            ),
          ),
          // Conteúdo
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 30),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: veiculos.length,
                  itemBuilder: (context, index) {
                    final veiculo = veiculos[index];
                    return Card(
                      color: veiculo.podeAlugar ? Colors.white.withOpacity(0.9) : Colors.grey.withOpacity(0.5),
                      child: ListTile(
                        enabled: veiculo.podeAlugar,
                        leading: Image.asset(
                          veiculo.iconeBateria,
                          width: 32,
                          height: 32,
                        ),
                        title: Text(veiculo.nome),
                        subtitle: Text('${veiculo.bateria}% de bateria'),
                        onTap: veiculo.podeAlugar
                            ? () => _mostrarPopupAluguel(context, veiculo)
                            : null,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
