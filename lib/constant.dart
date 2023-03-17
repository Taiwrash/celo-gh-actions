import 'package:flutter/material.dart';

enum BlockchainFlavor {
  ropsten,
  rinkeby,
  ethMainNet,
  polygonMainNet,
  mumbai,
  unknown,
}

class GlobalColors {
  GlobalColors._();
  static const Color primary = Color(0xFFFCFF51);
}

class GlobalConstants {
  static const String apiUrl = "https://forno.celo.org";
  static const String mainnetApiUrl = "https://forno.celo.org";
  static const String testnetApiUrl =
      "https://alfajores-forno.celo-testnet.org";
  static const String bridge = "https://bridge.walletconnect.org";
  static const String name = "Celo Composer - Flutter";
  static const String url = "https://celo.org";
  static const int chainId = 5;
  static const int testnetChainId = 44787;
  static const int mainnetChainId = 42220;
  static const String contractAddress = '---';
}

extension BlockchainFlavorExtention on BlockchainFlavor {
  static BlockchainFlavor fromChainId(int chainId) {
    switch (chainId) {
      case 80001:
        return BlockchainFlavor.mumbai;
      case 137:
        return BlockchainFlavor.polygonMainNet;
      case 3:
        return BlockchainFlavor.ropsten;
      case 4:
        return BlockchainFlavor.rinkeby;
      case 1:
        return BlockchainFlavor.ethMainNet;
      default:
        return BlockchainFlavor.unknown;
    }
  }
}
