import 'package:flutter/material.dart';

class SegurancaPage extends StatelessWidget {
  const SegurancaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segurança"),
        backgroundColor: const Color(0xFF0057A0),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _buildCard(
              icon: Icons.lock,
              title: "Trocar Senha",
              onTap: () {
                // ação de trocar senha
              },
            ),
            _buildCard(
              icon: Icons.fingerprint,
              title: "Habilitar Biometria",
              onTap: () {
                // ação biométrica
              },
            ),
            _buildCard(
              icon: Icons.face,
              title: "Cadastrar Rosto",
              onTap: () {
                // ação para reconhecimento facial
              },
            ),
            _buildCard(
              icon: Icons.security,
              title: "Pergunta de Segurança",
              onTap: () {
                // configurar pergunta de segurança
              },
            ),
            _buildCard(
              icon: Icons.devices,
              title: "Gerenciar Dispositivos",
              onTap: () {
                // ver e remover dispositivos conectados
              },
            ),
            _buildCard(
              icon: Icons.logout,
              title: "Desconectar de Todos os Dispositivos",
              onTap: () {
                // logoff global
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title, required VoidCallback onTap}) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF0057A0)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
