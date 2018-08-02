within AixLib.Building.Benchmark.Transfer.Transfer_RLT;
model Full_Transfer_RLT
  replaceable package Medium_Water =
    AixLib.Media.Water "Medium in the component";
  replaceable package Medium_Air =
    AixLib.Media.Air "Medium in the component";
  RLT Workshop annotation (Placement(transformation(extent={{60,72},{80,52}})));
  Modelica.Fluid.Interfaces.FluidPort_b Air_out[5](redeclare package Medium =
        Medium_Air)
    "Fluid connector b (positive design flow direction is from port_a to port_b)"
    annotation (Placement(transformation(extent={{30,90},{50,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a Air_in(redeclare package Medium =
        Medium_Air)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{-50,90},{-30,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b Fluid_out_hot(redeclare package Medium =
        Medium_Water)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  Modelica.Fluid.Interfaces.FluidPort_a Fluid_in_hot(redeclare package Medium =
        Medium_Water)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,70},{-90,90}})));
  Modelica.Fluid.Interfaces.FluidPort_b Fluid_out_cold(redeclare package Medium =
        Medium_Water)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,-90},{-90,-70}})));
  Modelica.Fluid.Interfaces.FluidPort_a Fluid_in_cold(redeclare package Medium =
        Medium_Water)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
  BusSystem.ControlBus controlBus
    annotation (Placement(transformation(extent={{82,-20},{122,20}})));
  RLT Canteen annotation (Placement(transformation(extent={{32,72},{52,52}})));
  RLT MultiPersonOffice
    annotation (Placement(transformation(extent={{4,72},{24,52}})));
  RLT ConferenceRoom
    annotation (Placement(transformation(extent={{-24,72},{-4,52}})));
  RLT OpenPlanOffice
    annotation (Placement(transformation(extent={{-52,72},{-32,52}})));
  RLT Central annotation (Placement(transformation(extent={{-78,72},{-58,52}})));
equation
  connect(Air_in, Central.Air_in) annotation (Line(points={{-40,100},{-40,80},{
          -77.8,80},{-77.8,68.6}}, color={0,127,255}));
  connect(Central.Air_out, OpenPlanOffice.Air_in) annotation (Line(points={{-58,
          68.6},{-56,68.6},{-56,68.6},{-51.8,68.6}}, color={0,127,255}));
  connect(ConferenceRoom.Air_in, OpenPlanOffice.Air_in) annotation (Line(points=
         {{-23.8,68.6},{-28,68.6},{-28,74},{-56,74},{-56,68.6},{-51.8,68.6}},
        color={0,127,255}));
  connect(MultiPersonOffice.Air_in, OpenPlanOffice.Air_in) annotation (Line(
        points={{4.2,68.6},{0,68.6},{0,74},{-56,74},{-56,68.6},{-51.8,68.6}},
        color={0,127,255}));
  connect(Canteen.Air_in, OpenPlanOffice.Air_in) annotation (Line(points={{32.2,
          68.6},{28,68.6},{28,74},{-56,74},{-56,68.6},{-51.8,68.6}}, color={0,
          127,255}));
  connect(Workshop.Air_in, OpenPlanOffice.Air_in) annotation (Line(points={{
          60.2,68.6},{56,68.6},{56,74},{-56,74},{-56,68.6},{-51.8,68.6}}, color=
         {0,127,255}));
  connect(OpenPlanOffice.Air_out, Air_out[1]) annotation (Line(points={{-32,
          68.6},{-32,80},{40,80},{40,92}}, color={0,127,255}));
  connect(ConferenceRoom.Air_out, Air_out[2]) annotation (Line(points={{-4,68.6},
          {-4,80},{40,80},{40,96}}, color={0,127,255}));
  connect(MultiPersonOffice.Air_out, Air_out[3]) annotation (Line(points={{24,
          68.6},{24,80},{40,80},{40,100}}, color={0,127,255}));
  connect(Canteen.Air_out, Air_out[4]) annotation (Line(points={{52,68.6},{52,
          80},{40,80},{40,104}}, color={0,127,255}));
  connect(Workshop.Air_out, Air_out[5]) annotation (Line(points={{80,68.6},{80,
          80},{40,80},{40,108}}, color={0,127,255}));
  connect(Central.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{-76,52},{-76,40},{-100,40}}, color={0,127,255}));
  connect(OpenPlanOffice.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{-50,52},{-50,40},{-100,40}}, color={0,127,255}));
  connect(ConferenceRoom.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{-22,52},{-22,40},{-100,40}}, color={0,127,255}));
  connect(MultiPersonOffice.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{6,52},{6,40},{-100,40}}, color={0,127,255}));
  connect(Canteen.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{34,52},{34,40},{-100,40}}, color={0,127,255}));
  connect(Workshop.Fluid_out_warm, Fluid_out_hot)
    annotation (Line(points={{62,52},{62,40},{-100,40}}, color={0,127,255}));
  connect(Central.Fluid_out_cold, Fluid_out_cold) annotation (Line(points={{-64,
          52},{-64,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,255}));
  connect(OpenPlanOffice.Fluid_out_cold, Fluid_out_cold) annotation (Line(
        points={{-38,52},{-38,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,
          255}));
  connect(ConferenceRoom.Fluid_out_cold, Fluid_out_cold) annotation (Line(
        points={{-10,52},{-10,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,
          255}));
  connect(MultiPersonOffice.Fluid_out_cold, Fluid_out_cold) annotation (Line(
        points={{18,52},{18,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,255}));
  connect(Canteen.Fluid_out_cold, Fluid_out_cold) annotation (Line(points={{46,
          52},{46,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,255}));
  connect(Workshop.Fluid_out_cold, Fluid_out_cold) annotation (Line(points={{74,
          52},{74,0},{-80,0},{-80,-80},{-100,-80}}, color={0,127,255}));
  connect(Workshop.X_w1, controlBus.X_Workshop) annotation (Line(points={{70,52},
          {70,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,127}));
  connect(Canteen.X_w1, controlBus.X_Canteen) annotation (Line(points={{42,52},
          {42,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,127}));
  connect(MultiPersonOffice.X_w1, controlBus.X_MultiPersonRoom) annotation (
      Line(points={{14,52},{14,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,
          127}));
  connect(ConferenceRoom.X_w1, controlBus.X_ConfernceRoom) annotation (Line(
        points={{-14,52},{-14,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,127}));
  connect(OpenPlanOffice.X_w1, controlBus.X_OpenPlanOffice) annotation (Line(
        points={{-42,52},{-42,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,127}));
  connect(Central.X_w1, controlBus.X_Central) annotation (Line(points={{-68,52},
          {-68,28},{86,28},{86,0.1},{102.1,0.1}}, color={0,0,127}));
  connect(Central.Fluid_in_cold, Fluid_in_cold) annotation (Line(points={{-60,
          52},{-60,-40},{-100,-40}}, color={0,127,255}));
  connect(OpenPlanOffice.Fluid_in_cold, Fluid_in_cold) annotation (Line(points=
          {{-34,52},{-34,-40},{-100,-40}}, color={0,127,255}));
  connect(ConferenceRoom.Fluid_in_cold, Fluid_in_cold)
    annotation (Line(points={{-6,52},{-6,-40},{-100,-40}}, color={0,127,255}));
  connect(MultiPersonOffice.Fluid_in_cold, Fluid_in_cold)
    annotation (Line(points={{22,52},{22,-40},{-100,-40}}, color={0,127,255}));
  connect(Canteen.Fluid_in_cold, Fluid_in_cold)
    annotation (Line(points={{50,52},{50,-40},{-100,-40}}, color={0,127,255}));
  connect(Workshop.Fluid_in_cold, Fluid_in_cold)
    annotation (Line(points={{78,52},{78,-40},{-100,-40}}, color={0,127,255}));
  connect(Fluid_in_hot, Central.Fluid_in_warm) annotation (Line(points={{-100,
          80},{-86,80},{-86,20},{-72,20},{-72,52}}, color={0,127,255}));
  connect(OpenPlanOffice.Fluid_in_warm, Central.Fluid_in_warm) annotation (Line(
        points={{-46,52},{-46,20},{-72,20},{-72,52}}, color={0,127,255}));
  connect(ConferenceRoom.Fluid_in_warm, Central.Fluid_in_warm) annotation (Line(
        points={{-18,52},{-20,52},{-20,20},{-72,20},{-72,52}}, color={0,127,255}));
  connect(MultiPersonOffice.Fluid_in_warm, Central.Fluid_in_warm) annotation (
      Line(points={{10,52},{10,20},{-72,20},{-72,52}}, color={0,127,255}));
  connect(Canteen.Fluid_in_warm, Central.Fluid_in_warm) annotation (Line(points
        ={{38,52},{38,20},{-72,20},{-72,52}}, color={0,127,255}));
  connect(Workshop.Fluid_in_warm, Central.Fluid_in_warm) annotation (Line(
        points={{66,52},{66,20},{-72,20},{-72,52}}, color={0,127,255}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Full_Transfer_RLT;