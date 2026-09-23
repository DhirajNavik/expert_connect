// linear_step_indicator.dart
import 'package:client/core/utils/app_palettes.dart';
import 'package:client/core/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'label_model.dart';
import 'node.dart';
import 'constant.dart';

class LinearStepIndicator extends StatefulWidget {
  final PageController controller;
  final int steps;
  final double? iconSize;
  final double? lineHeight;
  final IconData? completedIcon;
  final Color? activeBorderColor;
  final Color? inActiveBorderColor;
  final Color? activeLineColor;
  final Color? inActiveLineColor;
  final Color? activeNodeColor;
  final Color? inActiveNodeColor;
  final double? nodeThickness;
  final BoxShape shape;
  final Color? iconColor;
  final Color? backgroundColor;
  final Complete? complete;
  final double? verticalPadding;
  final List<StepperLabelModel> labels;
  final TextStyle? activeLabelHeadingStyle;
  final TextStyle? ativeLabelBodyStyle;

  // New parameter to control how many nodes to show
  final int visibleNodesCount;

  const LinearStepIndicator({
    Key? key,
    required this.steps,
    required this.controller,
    this.activeBorderColor,
    this.inActiveBorderColor,
    this.activeLineColor,
    this.inActiveLineColor,
    this.activeNodeColor,
    this.inActiveNodeColor,
    this.iconSize,
    this.completedIcon,
    this.nodeThickness,
    this.verticalPadding,
    this.lineHeight,
    this.shape = BoxShape.circle,
    this.iconColor,
    this.backgroundColor,
    this.complete,
    this.labels = const <StepperLabelModel>[],
    this.activeLabelHeadingStyle,
    this.ativeLabelBodyStyle,
    this.visibleNodesCount = 2, // Default: show current and next node
  }) : assert(steps > 0, "steps value must be a non-zero positive integer"),
       assert(
         labels.length == steps || labels.length == 0,
         "Provide exactly $steps strings for labels",
       ),
       super(key: key);

  @override
  _LinearStepIndicatorState createState() => _LinearStepIndicatorState();
}

class _LinearStepIndicatorState extends State<LinearStepIndicator> {
  late List<Node> nodes;
  late int currentStep;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    nodes = List<Node>.generate(
      widget.steps,
      (index) => Node(step: index, completed: false),
    );
    currentStep = widget.controller.initialPage;

    widget.controller.addListener(_handlePageChange);

    // Scroll to center the current node after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToCurrentNode();
    });
  }

  void _handlePageChange() {
    if (!widget.controller.hasClients) return;

    final page = widget.controller.page ?? currentStep.toDouble();
    final newStep = page.round();

    if (newStep != currentStep) {
      setState(() {
        // Mark previous steps as completed
        for (int i = 0; i < newStep; i++) {
          if (i < nodes.length) {
            nodes[i].completed = true;
          }
        }
        currentStep = newStep;
      });

      // Scroll to show current node
      _scrollToCurrentNode();
    }

    // Handle last step completion
    if (newStep == widget.steps - 1 && widget.complete != null) {
      widget.complete!().then((shouldComplete) {
        if (shouldComplete && mounted) {
          setState(() {
            nodes[widget.steps - 1].completed = true;
          });
        }
      });
    }
  }

  void _scrollToCurrentNode() {
    // _scrollController.animateTo(
    //   Dimens.screenWidth * 0.7,

    //   duration: const Duration(milliseconds: 1000),
    //   curve: Curves.easeIn,
    // );
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handlePageChange);
    _scrollController.dispose();
    super.dispose();
  }

  Color _getBorderColor(Node node) {
    if (node.completed || currentStep > node.step) {
      return widget.activeBorderColor ?? kActiveColor;
    }
    return widget.inActiveBorderColor ?? kInActiveColor;
  }

  List<Node> getVisibleNodes() {
    final visibleNodes = <Node>[];
    final startIndex = currentStep;
    final endIndex = (currentStep + widget.visibleNodesCount).clamp(
      0,
      nodes.length,
    );

    for (int i = startIndex; i < endIndex; i++) {
      if (i < nodes.length) {
        visibleNodes.add(nodes[i]);
      }
    }

    return visibleNodes;
  }

  @override
  Widget build(BuildContext context) {
    final visibleNodes = getVisibleNodes();

    return Container(
      padding: EdgeInsets.symmetric(vertical: Dimens.verPaddingX4),
      decoration: ShapeDecoration(
        color: widget.backgroundColor,

        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimens.radiusX5),
            bottomRight: Radius.circular(Dimens.radiusX5),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: .start,
        mainAxisSize: .max,
        spacing: Dimens.gapX3,
        children: [
          // Nodes Row
          for (int index = 0; index < 1; index++) ...[
            _buildStep(index, visibleNodes),
          ],
          // Labels Row
          if (widget.labels.isNotEmpty) ...[
            AnimatedContainer(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.horizontalspacing,
              ),
              duration: Duration(milliseconds: 300),
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .end,
                mainAxisSize: .max,
                spacing: Dimens.gapX1,
                children: [
                  Text(
                    widget.labels[visibleNodes.first.step].heading,
                    textAlign: TextAlign.center,
                    style: widget.activeLabelHeadingStyle,
                  ),
                  Text(
                    widget.labels[visibleNodes.first.step].body,
                    textAlign: TextAlign.center,
                    style: widget.ativeLabelBodyStyle,
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildStep(int index, List<Node> visibleNodes) {
    final nodeIndex = currentStep + index;
    if (nodeIndex >= nodes.length) return const SizedBox();

    final node = nodes[nodeIndex];

    final isLastNode = nodeIndex == widget.steps - 1;

    return Row(
      children: [
        if (currentStep == node.step && currentStep < 1)
          Padding(padding: EdgeInsets.only(left: Dimens.horizontalspacing)),

        if (nodeIndex > 0)
          Container(
            width: Dimens.screenWidth * 0.1,
            height: widget.lineHeight ?? kDefaultLineHeight,
            color: nodes[nodeIndex - 1].completed || currentStep > nodeIndex - 1
                ? widget.activeLineColor ?? kActiveLineColor
                : widget.inActiveLineColor ?? kInActiveLineColor,
          ),

        if (isLastNode)
          Expanded(
            child: Container(
              height: widget.lineHeight ?? kDefaultLineHeight,
              color: widget.activeLineColor,
            ),
          ),
        for (var node in visibleNodes) ...[
          Container(
            margin: isLastNode
                ? EdgeInsets.only(right: Dimens.horizontalspacing)
                : null,
            padding: EdgeInsets.all(
              node.completed ? Dimens.allPaddingX1 : Dimens.allPaddingX2B,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: node.completed ? null : AppPalettes.white,

              border: Border.all(
                color: _getBorderColor(node),
                width: widget.nodeThickness ?? kDefaultThickness,
              ),
              shape: widget.shape,
            ),
            child: node.completed || currentStep > node.step
                ? Icon(
                    widget.completedIcon ?? kCompletedIcon,
                    size: (widget.iconSize ?? kIconSize) * 1.5,
                    color: widget.iconColor ?? kIconColor,
                  )
                : Text(
                    "${node.step + 1}",
                    style: TextStyle(
                      color: AppPalettes.primary,
                      fontSize: currentStep == node.step
                          ? widget.iconSize
                          : (widget.iconSize ?? kIconSize) * 0.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
          node.step == currentStep && !isLastNode
              ? Expanded(
                  child: Container(
                    height: widget.lineHeight ?? kDefaultLineHeight,
                    color: node.completed || currentStep > node.step
                        ? widget.activeLineColor ?? kActiveLineColor
                        : widget.inActiveLineColor ?? kInActiveLineColor,
                  ),
                )
              : !isLastNode
              ? SizedBox(
                  width: Dimens.screenWidth * 0.15,

                  height: widget.lineHeight ?? kDefaultLineHeight,
                  child: CustomPaint(
                    painter: DottedLinePainter(
                      color: widget.inActiveLineColor ?? kInActiveLineColor,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ],
    );
  }
}

// Custom painter for dotted line
class DottedLinePainter extends CustomPainter {
  final Color color;

  DottedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = size.height
      ..style = PaintingStyle.stroke;

    const dashWidth = 5;
    const dashSpace = 3;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
