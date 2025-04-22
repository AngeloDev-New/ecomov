import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';

// Telas adicionais
import 'ecoponto.dart';
import 'seguranca.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({super.key});

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> with TickerProviderStateMixin {
  final MapController _mapController = MapController();
  bool _isDrawerOpen = false;

  final LatLng _bioparkLatLng = LatLng(-24.617695, -53.7107492);

  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, -1.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _logout(BuildContext context) {
    setState(() {
      _isDrawerOpen = false;
    });
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  void _centralizarNoBiopark() {
    _animationController.forward(from: 0.0);
    Future.delayed(const Duration(milliseconds: 1000), () {
      _mapController.move(_bioparkLatLng, 17.0);
    });
  }

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: _toggleDrawer,
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              center: _bioparkLatLng,
              zoom: 16.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.exemplo.ecomov',
                tileProvider: CancellableNetworkTileProvider(),
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: _bioparkLatLng,
                    child: Image.asset('assets/seta.png'),
                  ),
                  Marker(
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(-24.6179, -53.7115),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EcoPontoPage(
                              title: 'EcoPonto 1',
                              description: 'Descrição detalhada sobre o EcoPonto 1',
                            ),
                          ),
                        );
                      },
                      child: Image.asset('assets/EcoPonto.png'),
                    ),
                  ),
                  Marker(
                    width: 40.0,
                    height: 40.0,
                    point: LatLng(-24.6172, -53.7099),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EcoPontoPage(
                              title: 'EcoPonto 2',
                              description: 'Descrição detalhada sobre o EcoPonto 2',
                            ),
                          ),
                        );
                      },
                      child: Image.asset('assets/EcoPonto.png'),
                    ),
                  ),
                  Marker(
                    width: 50.0,
                    height: 50.0,
                    point: LatLng(-24.6180, -53.7103),
                    child: Image.asset('assets/Veiculo.png'),
                  ),
                  Marker(
                    width: 50.0,
                    height: 50.0,
                    point: LatLng(-24.6182, -53.7106),
                    child: Image.asset('assets/Veiculo.png'),
                  ),
                ],
              ),
            ],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: _isDrawerOpen ? 0 : -MediaQuery.of(context).size.width * 0.8,
            top: 0,
            bottom: 0,
            right: 0,
            child: Visibility(
              visible: _isDrawerOpen,
              child: Container(
                color: Colors.white.withOpacity(0.9),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    ListTile(
                      title: const Text('Usuário'),
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/user_log.png"),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.map),
                      title: const Text('Mapa'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.security),
                      title: const Text('Segurança'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SegurancaPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Logout'),
                      onTap: () => _logout(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _centralizarNoBiopark,
              backgroundColor: const Color(0xFF0057A0),
              child: const Icon(Icons.my_location),
            ),
          ),
          AnimatedBuilder(
            animation: _offsetAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: _offsetAnimation.value,
                child: child,
              );
            },
            child: const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
