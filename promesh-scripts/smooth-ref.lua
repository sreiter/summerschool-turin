--------------------------------------------------------------------------------
-- Lua-Script for ProMesh4
-- The variable 'mesh' contains the mesh object on which the script shall operate
-- The pm-declare- comments define the resutling tool's name ('pm-declare-name')
-- and the script's input parameters ('pm-declare-input'). Sample names and
-- parameters are provided. They can be erased or changed as required.
--
-- 'pm-declare-input' has the following sections, each separated by '|':
--		1: the name under which the input-parameter is accessible in the script
--		2: the name of the input-parameter as it appears in promesh
--		3: the type of the input-value (double, integer, boolean, string)
--		4: default-, minimal- and maximal-values, number of digits (only double)
--		   and the step-size, which defines how much a value is increased or
--		   decreased when the up/down arrows are pressed. The different values
--		   can be set through 'val', 'min', 'max', 'digits', and 'step'. If more
--		   than one value is specified, they have to be separated by ';'.
--
-- If you're editing a script while ProMesh is running, press
-- Scripts-RefreshToolDialogs to update the associated tools content.
--------------------------------------------------------------------------------

-- pm-declare-name: smooth-ref
-- pm-declare-input: creaseAngle | crease angle | double | val = 20; min = 0; max = 360; digits = 2; step = 0.1

ClearSelection(mesh)
SelectCreaseEdges (mesh, 20)
ExtendSelection (mesh, 1)
RefineSmooth (mesh)
ConvertToTriangles (mesh)
