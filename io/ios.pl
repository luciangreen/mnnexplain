% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, simplify, [1*z+(x+z)+(y+1+z*0)], z+(x+z)+(y+1)).
io(2, explain, [1*(1*z)], "1*(1*z) becomes 1*z, because one times a number is the number. 1*z becomes z, because one times a number is the number.").
io(3, trace_length, [y*(1-0)*(3+(z+x))], 0).
io(4, simplify, [0*y+z*y-(3+0-(2+3))], z*y-(3-(2+3))).
io(5, explain, [0+y-0], "0+y-0 becomes y-0, because adding to zero gives the other number.").
io(6, trace_length, [3*y], 0).
io(7, simplify, [3+(2+z)+(3*2-3)], 3+(2+z)+(3*2-3)).
io(8, explain, [3-(x-1)], "Nothing to simplify.").
io(9, trace_length, [2*(0*2-1*1)], 2).
io(10, simplify, [x*1+2+3], x+2+3).
io(11, explain, [z*3+2], "Nothing to simplify.").
io(12, trace_length, [3], 0).
io(13, simplify, [(2*0-(3+0))*y], (0-3)*y).
io(14, explain, [z], "Nothing to simplify.").
io(15, trace_length, [z-x+x+(y*x-3)], 0).
io(16, simplify, [1], 1).
io(17, explain, [(x-1)*1], "(x-1)*1 becomes x-1, because multiplying by one changes nothing.").
io(18, trace_length, [0], 0).
io(19, simplify, [x*x+(x+0)-0*(0*z)], x*x+x-0).
io(20, explain, [2+y-3*2], "Nothing to simplify.").
io(21, trace_length, [(2+2*3)*x], 0).
io(22, simplify, [1-(3*0+y*z)], 1-y*z).
io(23, explain, [3*z-(2+3)], "Nothing to simplify.").
io(24, trace_length, [y], 0).
io(25, simplify, [0-2+(3+x)+x], 0-2+(3+x)+x).
io(26, explain, [0*3*(3+2)], "0*3*(3+2) becomes 0*(3+2), because zero times anything is zero. 0*(3+2) becomes 0, because zero times anything is zero.").
io(27, trace_length, [(z+3)*(0-0)*3], 0).
io(28, simplify, [z-(1+x+(z+2))], z-(1+x+(z+2))).
io(29, explain, [3+2-(x+z)], "Nothing to simplify.").
io(30, trace_length, [x], 0).
io(31, simplify, [(2-y-x)*(x+1-(z+y))], (2-y-x)*(x+1-(z+y))).
io(32, explain, [x+z+1], "Nothing to simplify.").
io(33, trace_length, [3*x-1*(1-2)], 1).
io(34, simplify, [z-(1-z)+y], z-(1-z)+y).
io(35, explain, [3+1+y*1], "3+1+y*1 becomes 3+1+y, because multiplying by one changes nothing.").
io(36, trace_length, [(3-y)*(2*2-2)], 0).
io(37, simplify, [x], x).
io(38, explain, [1+2], "Nothing to simplify.").
io(39, trace_length, [0+0-1*2-x*x*(3-1)], 2).
io(40, simplify, [0+y+(1+0)+(x*0-(0-y))], y+1+(0-(0-y))).
io(41, explain, [z-y-3*x], "Nothing to simplify.").
io(42, trace_length, [1], 0).
io(43, simplify, [z], z).
io(44, explain, [2+2+0], "2+2+0 becomes 2+2, because adding zero changes nothing.").
io(45, trace_length, [2], 0).
io(46, simplify, [x-y-x*3+1*y], x-y-x*3+y).
io(47, explain, [2], "Nothing to simplify.").
io(48, trace_length, [2*(1-2)*(x+z-(x-x))], 0).
io(49, simplify, [(z-(x-z))*(2+2-1)], (z-(x-z))*(2+2-1)).
io(50, explain, [z*1*(3+1)], "z*1*(3+1) becomes z*(3+1), because multiplying by one changes nothing.").
io(51, trace_length, [3-z+3*2-y], 0).
io(52, simplify, [y+1], y+1).
io(53, explain, [2-2+(2-x)], "Nothing to simplify.").
io(54, trace_length, [2*(1*2+z*z)], 1).
io(55, simplify, [z], z).
io(56, explain, [(3-0)*(x-x)], "Nothing to simplify.").
io(57, trace_length, [2], 0).
io(58, simplify, [1], 1).
io(59, explain, [1+3-(2+x)], "Nothing to simplify.").
io(60, trace_length, [1-(y+x+(3-2))], 0).
io(61, simplify, [2-0-(3-x)-0], 2-0-(3-x)-0).
io(62, explain, [2], "Nothing to simplify.").
io(63, trace_length, [(2*3-(3+0))*(z+x-z)], 1).
io(64, simplify, [0+0-z*0+(y*x-1*z)], 0-0+(y*x-z)).
io(65, explain, [0*1+(3+1)], "0*1+(3+1) becomes 0+(3+1), because multiplying by one changes nothing. 0+(3+1) becomes 3+1, because adding to zero gives the other number.").
io(66, trace_length, [1-y*z-3*z*(x-z)], 0).
io(67, simplify, [3-z+y*(x*2)], 3-z+y*(x*2)).
io(68, explain, [3-y-y], "Nothing to simplify.").
io(69, trace_length, [1*(1-1)+0], 2).
io(70, simplify, [2], 2).
io(71, explain, [z+x+(z-z)], "Nothing to simplify.").
io(72, trace_length, [0+(y-z)-(3+2)*(2-0)], 1).
io(73, simplify, [3*y-(x+0)-(1-x)*(2-0)], 3*y-x-(1-x)*(2-0)).
io(74, explain, [z-(y+2)], "Nothing to simplify.").
io(75, trace_length, [z*3+(3+x)-(x*1+(x+1))], 1).
io(76, simplify, [0], 0).
io(77, explain, [3*0+(z-0)], "3*0+(z-0) becomes 0+(z-0), because anything times zero is zero. 0+(z-0) becomes z-0, because adding to zero gives the other number.").
io(78, trace_length, [3*2*(2-y)*(3-1+(0+y))], 1).
io(79, simplify, [0+3-(2+2)-(2+1)*y], 3-(2+2)-(2+1)*y).
io(80, explain, [x-2*2], "Nothing to simplify.").
io(81, trace_length, [y], 0).
io(82, simplify, [z*(1*(3*z))], z*(3*z)).
io(83, explain, [y-2+z*2], "Nothing to simplify.").
io(84, trace_length, [(z+1)*(y+y)+(3+z-x*y)], 0).
io(85, simplify, [(0-y)*(x+0)*(x*y-(1+2))], (0-y)*x*(x*y-(1+2))).
io(86, explain, [y-2+0*1], "y-2+0*1 becomes y-2+0, because multiplying by one changes nothing. y-2+0 becomes y-2, because adding zero changes nothing.").
io(87, trace_length, [1*0], 1).
io(88, simplify, [(z*x+2*y)*3], (z*x+2*y)*3).
io(89, explain, [y+3*z], "Nothing to simplify.").
io(90, trace_length, [y], 0).
io(91, simplify, [0*3*x-3*x*(2*0)], 0-0).
io(92, explain, [z+z+y], "Nothing to simplify.").
io(93, trace_length, [y*(2*2+1*1)], 1).
io(94, simplify, [x-(3-3)+(y+z+(3+0))], x-(3-3)+(y+z+3)).
io(95, explain, [x-3*z], "Nothing to simplify.").
io(96, trace_length, [x], 0).
io(97, simplify, [3*(0*y*0)], 0).
io(98, explain, [y-(0-0)], "Nothing to simplify.").
io(99, trace_length, [3-3], 0).
io(100, simplify, [x-z*3-(2*2+1*3)], x-z*3-(2*2+3)).
io(101, explain, [0], "Nothing to simplify.").
io(102, trace_length, [x-y-(z-3)-(y+z)*(3*2)], 0).
io(103, simplify, [0], 0).
io(104, explain, [x], "Nothing to simplify.").
io(105, trace_length, [(1-x)*(1-1)*(3-3)], 0).
io(106, simplify, [1-3], 1-3).
io(107, explain, [x], "Nothing to simplify.").
io(108, trace_length, [x*x+(1+0)+y], 1).
io(109, simplify, [z], z).
io(110, explain, [(y-z)*3], "Nothing to simplify.").
io(111, trace_length, [z*0*(1*2)-1], 2).
io(112, simplify, [1*z+(y+y+3*0)], z+(y+y)).
io(113, explain, [z+y+3], "Nothing to simplify.").
io(114, trace_length, [y+(3*z-2*1)], 1).
io(115, simplify, [(0*3-2*1)*(1-(z-x))], (0-2)*(1-(z-x))).
io(116, explain, [1-0+(0-1)], "Nothing to simplify.").
io(117, trace_length, [2+z-3*z+(x*0-(y-x))], 1).
io(118, simplify, [3*(1*y)*2], 3*y*2).
io(119, explain, [3+1+(z+3)], "Nothing to simplify.").
io(120, trace_length, [2*3+(3-2)-(2*y+3)], 0).
io(121, simplify, [3*x+z+(3+y+(x-z))], 3*x+z+(3+y+(x-z))).
io(122, explain, [(0-x)*3], "Nothing to simplify.").
io(123, trace_length, [0], 0).
io(124, simplify, [(3+x-x*2)*1], 3+x-x*2).
io(125, explain, [2], "Nothing to simplify.").
io(126, trace_length, [z-(0-z-3)], 0).
io(127, simplify, [(x-2+y*2)*(0-2*z)], (x-2+y*2)*(0-2*z)).
io(128, explain, [x*z*(x+3)], "Nothing to simplify.").
io(129, trace_length, [1*x-(3-0)-3], 1).
io(130, simplify, [x-y-(0+3)+(0+x)*(z-1)], x-y-3+x*(z-1)).
io(131, explain, [0+(2-0)], "0+(2-0) becomes 2-0, because adding to zero gives the other number.").
io(132, trace_length, [0*2*(2-x)-2], 2).
io(133, simplify, [(z-2)*(3*1)], (z-2)*3).
io(134, explain, [0+y-(z+x)], "0+y-(z+x) becomes y-(z+x), because adding to zero gives the other number.").
io(135, trace_length, [(0+1)*(2*0)-0], 3).
io(136, simplify, [0+(2-3)+(y+0-(y-0))], 2-3+(y-(y-0))).
io(137, explain, [3-x+0*y], "3-x+0*y becomes 3-x+0, because zero times anything is zero. 3-x+0 becomes 3-x, because adding zero changes nothing.").
io(138, trace_length, [(z-x)*(3*2)-(1-2+0*0)], 2).
io(139, simplify, [(2-z+y)*(2*2-(3-x))], (2-z+y)*(2*2-(3-x))).
io(140, explain, [3], "Nothing to simplify.").
io(141, trace_length, [1], 0).
io(142, simplify, [(x-x)*1+(1-y)], x-x+(1-y)).
io(143, explain, [x*1+(3-3)], "x*1+(3-3) becomes x+(3-3), because multiplying by one changes nothing.").
io(144, trace_length, [1+(1-x-(2-0))], 0).
io(145, simplify, [0], 0).
io(146, explain, [0+z], "0+z becomes z, because adding to zero gives the other number.").
io(147, trace_length, [1*1*(z-y)-x*(0-2)], 2).
io(148, simplify, [x*2*(y*x)-x*1*(3-y)], x*2*(y*x)-x*(3-y)).
io(149, explain, [z], "Nothing to simplify.").
io(150, trace_length, [z], 0).
io(151, simplify, [(z-3)*(3*2)-z], (z-3)*(3*2)-z).
io(152, explain, [1*z*(0+3)], "1*z*(0+3) becomes z*(0+3), because one times a number is the number. z*(0+3) becomes z*3, because adding to zero gives the other number.").
io(153, trace_length, [1+z*1-2*0*(z*3)], 3).
io(154, simplify, [3+y], 3+y).
io(155, explain, [y-3-(z+1)], "Nothing to simplify.").
io(156, trace_length, [3], 0).
io(157, simplify, [(x*x+(z-1))*((x+x)*(2+x))], (x*x+(z-1))*((x+x)*(2+x))).
io(158, explain, [y], "Nothing to simplify.").
io(159, trace_length, [(1+1)*(1+0+2*0)], 4).
io(160, simplify, [2*(x+y)*((3+y)*1)], 2*(x+y)*(3+y)).
io(161, explain, [z*2*(2-2)], "Nothing to simplify.").
io(162, trace_length, [(z*3-(z+y))*(0*2+1*x)], 3).
io(163, simplify, [x+z*2*y], x+z*2*y).
io(164, explain, [0-y-0*0], "0-y-0*0 becomes 0-y-0, because anything times zero is zero.").
io(165, trace_length, [0], 0).
io(166, simplify, [3], 3).
io(167, explain, [1*0+(x-y)], "1*0+(x-y) becomes 0+(x-y), because one times a number is the number. 0+(x-y) becomes x-y, because adding to zero gives the other number.").
io(168, trace_length, [x], 0).
io(169, simplify, [y], y).
io(170, explain, [z], "Nothing to simplify.").
io(171, trace_length, [x*0+z*2-y*0*(z-2)], 4).
io(172, simplify, [0*2*(x-0)*(x*0-1*x)], 0).
io(173, explain, [x+3-0], "Nothing to simplify.").
io(174, trace_length, [2+(1+3+(3-3))], 0).
io(175, simplify, [(x-1)*z], (x-1)*z).
io(176, explain, [3-2-0*2], "3-2-0*2 becomes 3-2-0, because zero times anything is zero.").
io(177, trace_length, [x*(3*2)-(1+2-(2+z))], 0).
io(178, simplify, [y-z-(z-2)*(y+3)], y-z-(z-2)*(y+3)).
io(179, explain, [y+2], "Nothing to simplify.").
io(180, trace_length, [3-(1+2-x*1)], 1).
io(181, simplify, [3*2-(0-2)-1], 3*2-(0-2)-1).
io(182, explain, [y*(1*3)], "y*(1*3) becomes y*3, because one times a number is the number.").
io(183, trace_length, [0+(2-z)*(2+z)], 1).
io(184, simplify, [(0-y-(1-1))*(3+2-(x+0))], (0-y-(1-1))*(3+2-x)).
io(185, explain, [z], "Nothing to simplify.").
io(186, trace_length, [(3*z+(0-1))*(y-3-y)], 0).
io(187, simplify, [y*(z*0-3*y)], y*(0-3*y)).
io(188, explain, [(0-0)*(y-1)], "Nothing to simplify.").
io(189, trace_length, [3-(3+(1-x))], 0).
io(190, simplify, [(0-1)*x-(0+0-1*z)], (0-1)*x-(0-z)).
io(191, explain, [3*3+0*x], "3*3+0*x becomes 3*3+0, because zero times anything is zero. 3*3+0 becomes 3*3, because adding zero changes nothing.").
io(192, trace_length, [x-0+y-y], 0).
io(193, simplify, [x*(0+0)+(2+1*1)], 2+1).
io(194, explain, [3], "Nothing to simplify.").
io(195, trace_length, [0], 0).
io(196, simplify, [(3-z)*(3+z)+x], (3-z)*(3+z)+x).
io(197, explain, [1-z*3], "Nothing to simplify.").
io(198, trace_length, [1], 0).
io(199, simplify, [(3-3+x*y)*(z*0+(y-1))], (3-3+x*y)*(y-1)).
io(200, explain, [x], "Nothing to simplify.").
