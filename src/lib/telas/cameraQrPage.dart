import 'package:flutter/material.dart';

class CameraQrPage extends StatefulWidget {
  const CameraQrPage({super.key});

  @override
  State<CameraQrPage> createState() => _CameraQrPageState();
}

class _CameraQrPageState extends State<CameraQrPage> {
  bool _leu = false;

  void _mostrarPopupManual() {
    String codigo = '';
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Digite o código do veículo'),
        content: TextField(
          autofocus: true,
          onChanged: (value) => codigo = value,
          decoration: const InputDecoration(
            hintText: 'Ex: ALUGAR',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (codigo.toUpperCase() == 'ALUGAR') {
                Navigator.pop(context, 'ALUGAR');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Código inválido')),
                );
              }
            },
            child: const Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fundo
          SizedBox.expand(
            child: Image.asset(
              'assets/map_background.png',
              fit: BoxFit.cover,
            ),
          ),
          // Conteúdo central (mensagem + scanner + botão)
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Aponte o leitor para o QR Code da tela',
                    style: TextStyle(
                      fontSize: 18,
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
                    textAlign: TextAlign.center,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.black26,
                    alignment: Alignment.center,
                    child: const Text(
                      'Scanner desativado',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: _mostrarPopupManual,
                  icon: const Icon(Icons.edit),
                  label: const Text('Digitar código'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ],
            ),
          ),
          // Botão Voltar
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
