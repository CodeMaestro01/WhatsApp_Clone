import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late List<CameraDescription> _cameras;
  CameraController? _controller;
  bool _isRearCamera = true;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _startCamera(_isRearCamera ? _cameras.first : _cameras.last);
  }

  void _startCamera(CameraDescription cameraDescription) {
    _controller = CameraController(cameraDescription, ResolutionPreset.high);
    _controller?.initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  void _switchCamera() {
    setState(() {
      _isRearCamera = !_isRearCamera;
      _startCamera(_isRearCamera ? _cameras.first : _cameras.last);
    });
  }

  void _takePicture() async {
    if (!_controller!.value.isInitialized) return;
    final picture = await _controller!.takePicture();
    // Handle the picture (save/share/preview)
    debugPrint("Picture taken: ${picture.path}");
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _controller != null && _controller!.value.isInitialized
          ? Stack(
              children: [
                CameraPreview(_controller!),
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.flash_off, color: Colors.white),
                        onPressed: () {
                          // Implement flash toggle if needed
                        },
                      ),
                      GestureDetector(
                        onTap: _takePicture,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                          ),
                        ),
                      ),
                      IconButton(
                        icon:
                            const Icon(Icons.cameraswitch, color: Colors.white),
                        onPressed: _switchCamera,
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
