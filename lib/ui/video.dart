import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: "0296f1bdb53c4239b1d2083c5143c5a1",
        channelName: 'firstchannel',
        tempToken:
            "007eJxTYGCauGfnJpf8K+byPTEdkv/5XRco3V/zSPvR7/Xxn4NNn0gpMBgYWZqlGSalJJkaJ5sYGVsmGaYYGVgYJ5samgCJRMMJ72KTGwIZGXwfMDEzMkAgiM/DkJZZVFySnJGYl5eaw8AAAHDLIuI="),
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
              AgoraVideoButtons(
                client: _client,
                enabledButtons: [
                  BuiltInButtons.callEnd,
                  BuiltInButtons.toggleCamera,
                  BuiltInButtons.toggleMic
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
