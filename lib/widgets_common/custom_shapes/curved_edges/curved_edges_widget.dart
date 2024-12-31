import 'package:flutter/material.dart';
import 'package:lk_cric_park/widgets_common/custom_shapes/curved_edges/curved_edges.dart';

class SiajCurvedEdgeWidget extends StatelessWidget {
  const SiajCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SiajCustomCurvedEdges(),
      child: child,
    );
  }
}