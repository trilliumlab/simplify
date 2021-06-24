
import 'dart:math';

import 'package:simplify_dart/simplify_dart.dart';
import 'package:test/test.dart';

const List<Point<double>> points = [
    Point(224.55,250.15),Point(226.91,244.19),Point(233.31,241.45),Point(234.98,236.06),
    Point(244.21,232.76),Point(262.59,215.31),Point(267.76,213.81),Point(273.57,201.84),
    Point(273.12,192.16),Point(277.62,189.03),Point(280.36,181.41),Point(286.51,177.74),
    Point(292.41,159.37),Point(296.91,155.64),Point(314.95,151.37),Point(319.75,145.16),
    Point(330.33,137.57),Point(341.48,139.96),Point(369.98,137.89),Point(387.39,142.51),
    Point(391.28,139.39),Point(409.52,141.14),Point(414.82,139.75),Point(427.72,127.30),
    Point(439.60,119.74),Point(474.93,107.87),Point(486.51,106.75),Point(489.20,109.45),
    Point(493.79,108.63),Point(504.74,119.66),Point(512.96,122.35),Point(518.63,120.89),
    Point(524.09,126.88),Point(529.57,127.86),Point(534.21,140.93),Point(539.27,147.24),
    Point(567.69,148.91),Point(575.25,157.26),Point(580.62,158.15),Point(601.53,156.85),
    Point(617.74,159.86),Point(622.00,167.04),Point(629.55,194.60),Point(638.90,195.61),
    Point(641.26,200.81),Point(651.77,204.56),Point(671.55,222.55),Point(683.68,217.45),
    Point(695.25,219.15),Point(700.64,217.98),Point(703.12,214.36),Point(712.26,215.87),
    Point(721.49,212.81),Point(727.81,213.36),Point(729.98,208.73),Point(735.32,208.20),
    Point(739.94,204.77),Point(769.98,208.42),Point(779.60,216.87),Point(784.20,218.16),
    Point(800.24,214.62),Point(810.53,219.73),Point(817.19,226.82),Point(820.77,236.17),
    Point(827.23,236.16),Point(829.89,239.89),Point(851.00,248.94),Point(859.88,255.49),
    Point(865.21,268.53),Point(857.95,280.30),Point(865.48,291.45),Point(866.81,298.66),
    Point(864.68,302.71),Point(867.79,306.17),Point(859.87,311.37),Point(860.08,314.35),
    Point(858.29,314.94),Point(858.10,327.60),Point(854.54,335.40),Point(860.92,343.00),
    Point(856.43,350.15),Point(851.42,352.96),Point(849.84,359.59),Point(854.56,365.53),
    Point(849.74,370.38),Point(844.09,371.89),Point(844.75,380.44),Point(841.52,383.67),
    Point(839.57,390.40),Point(845.59,399.05),Point(848.40,407.55),Point(843.71,411.30),
    Point(844.09,419.88),Point(839.51,432.76),Point(841.33,441.04),Point(847.62,449.22),
    Point(847.16,458.44),Point(851.38,462.79),Point(853.97,471.15),Point(866.36,480.77),
];

const List<Point<double>> simplified = [
    Point(224.55,250.15),Point(267.76,213.81),Point(296.91,155.64),Point(330.33,137.57),
    Point(409.52,141.14),Point(439.60,119.74),Point(486.51,106.75),Point(529.57,127.86),
    Point(539.27,147.24),Point(617.74,159.86),Point(629.55,194.60),Point(671.55,222.55),
    Point(727.81,213.36),Point(739.94,204.77),Point(769.98,208.42),Point(779.60,216.87),
    Point(800.24,214.62),Point(820.77,236.17),Point(859.88,255.49),Point(865.21,268.53),
    Point(857.95,280.30),Point(867.79,306.17),Point(859.87,311.37),Point(854.54,335.40),
    Point(860.92,343.00),Point(849.84,359.59),Point(854.56,365.53),Point(844.09,371.89),
    Point(839.57,390.40),Point(848.40,407.55),Point(839.51,432.76),Point(853.97,471.15),
    Point(866.36,480.77)
];


void main() {
  test('simplifies points correctly with the given tolerance', () {
    final result = simplify(points, tolerance: 5);
    expect(result, equals(simplified));
  });

  test('just return the points if it has only one point', () {
    final result = simplify(const [Point(1, 2)]);
    expect(result, equals(const [Point(1, 2)]));
  });

  test('ust return the points if it has no points', () {
    final result = simplify(const []);
    expect(result, equals(const []));
  });
}