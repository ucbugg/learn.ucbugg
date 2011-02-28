//Maya ASCII 2011 scene
//Name: blobber.ma
//Last modified: Sun, Feb 27, 2011 08:00:01 PM
//Codeset: 949
requires maya "2011";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2011";
fileInfo "version" "2011 x64";
fileInfo "cutIdentifier" "201003190311-771506";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.722899044593916 109.56603228874886 131.73000876438087 ;
	setAttr ".r" -type "double3" -29.138352731727192 -16.20000000012228 8.2801613946451451e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".fcp" 100000;
	setAttr ".fd" 500;
	setAttr ".coi" 149.79306634839924;
	setAttr ".ow" 1000;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 33.999075509722182 6.3393862133982699 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 11.547093182753542 10012.609905372688 89.594784218386081 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".fd" 500;
	setAttr ".coi" 10010;
	setAttr ".ow" 1214.8664413449951;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 73.597112258310403 10025.243616390328 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".fd" 500;
	setAttr ".coi" 10010;
	setAttr ".ow" 110.75115772182274;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10010.367018306653 570.56998494574725 -33.382170605388112 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fcp" 100000;
	setAttr ".fd" 500;
	setAttr ".coi" 10010;
	setAttr ".ow" 450.47338055576319;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 759.88133429827008 0 ;
	setAttr ".s" -type "double3" 1.4150737824074413 1 1 ;
createNode transform -n "transform2" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 203 ".pt";
	setAttr ".pt[1:5]" -type "float3" -0.013234135 0.016094834 0.0029267371  
		0.1243289 -0.61261696 0.10480628  2.3021839 -10.509699 -4.0649023  0.23187523 -0.0330212 
		-0.25372294  0.044162251 0.06316033 0.27826223 ;
	setAttr ".pt[8]" -type "float3" 0.040863723 -0.17839865 0.05605682 ;
	setAttr ".pt[10:17]" -type "float3" 0.94575679 2.7853837 1.5745802  5.8178563 
		-9.7452955 4.9567118  0.84099245 -8.1664743 -0.36493975  -3.5542562 -29.527723 18.929415  
		-1.4386263 1.4526069 0.66843987  22.563076 -29.451138 7.3284159  0.87836367 8.124876 
		-2.2312353  0.16097316 0.4682619 -2.7831569 ;
	setAttr ".pt[20:22]" -type "float3" 0.31181931 0.0049889544 -0.80592048  
		0.073189043 -0.52821958 2.1550474  0.57230353 -1.1988801 0.91119009 ;
	setAttr ".pt[25]" -type "float3" 0.53713661 -0.69385171 0.33020496 ;
	setAttr ".pt[28]" -type "float3" -4.3430362 5.1372972 3.1466718 ;
	setAttr ".pt[30:46]" -type "float3" -2.1464241 -3.8969631 2.322041  -2.8451867 
		-0.73475152 1.4534506  -3.0349615 0.156268 2.8469703  0.10198299 1.1757025 -1.5158584  
		0.26781374 2.0981584 -1.6804178  2.1997647 1.4793036 -3.0498507  -0.32853669 -1.6516658 
		-2.1517882  -2.5483465 1.1922538 1.0904639  -3.3896539 2.1904418 3.0653536  0.026431795 
		-0.10043536 -0.012667306  -17.680931 51.051785 38.912777  -5.5919232 44.443623 0.46380326  
		0.34777862 0.85709065 -0.24008003  -2.9514263 43.989594 -1.9271737  0.83854663 -3.3888426 
		1.7114705  0.36753249 43.415833 -0.47501171  0.40469664 -2.0555415 -0.54658389 ;
	setAttr ".pt[48:49]" -type "float3" 0.070772 -0.31371257 -0.094856225  0.016793378 
		-0.053280894 -0.20092893 ;
	setAttr ".pt[51:62]" -type "float3" 0.06262619 -0.2268576 0.078020617  -1.0477679 
		1.8510263 1.7399113  1.8754847 -8.7033587 -0.62179768  1.2878137 0.58180147 -2.8873293  
		4.1259279 73.72081 34.628551  -0.17063548 -2.0769744 -0.25413316  1.1882955 26.005823 
		21.361034  2.9927852 28.657133 20.166689  -0.7030192 25.433149 18.101858  0.23739243 
		24.574324 21.601566  0 23.932741 20.636162  -0.86915624 24.48081 19.237186 ;
	setAttr ".pt[65:66]" -type "float3" -3.0819993 0.91688299 0.66982162  -0.57566327 
		1.2881097 -1.0316429 ;
	setAttr ".pt[68]" -type "float3" -4.6964598 0.1569269 8.1177073 ;
	setAttr ".pt[71:74]" -type "float3" -0.52120185 -0.28611314 1.3910506  0.34279695 
		1.3318882 2.5484512  1.5382649 -0.96012044 -1.1889639  1.3947608 -5.8982062 -1.4872483 ;
	setAttr ".pt[78]" -type "float3" -0.61682487 1.2922363 -0.0089040203 ;
	setAttr ".pt[80:82]" -type "float3" -3.4444458 6.118968 5.5230269  0.47439304 
		-0.70685661 -0.34121716  -4.9781785 -6.4631133 -4.1420445 ;
	setAttr ".pt[84:91]" -type "float3" -3.5653586 4.8422523 -2.8010509  0.57101464 
		1.5728488 1.2954563  -0.35341573 2.1496894 -0.28457835  0.82177204 2.0304074 -1.7734371  
		-0.60232383 0.70538253 -0.77226233  -0.044453625 0.099596687 -0.017288778  -1.0702149 
		1.1050352 0.97223532  0.25306487 -1.3139201 0.083473571 ;
	setAttr ".pt[93:94]" -type "float3" 1.6020728 1.4263572 -3.0222049  0.27882835 
		-0.12878524 0.15257196 ;
	setAttr ".pt[96:103]" -type "float3" -0.034029532 0.032422755 0.034145333  
		1.3388243 -1.9110149 4.5751109  -0.56201988 -25.237543 3.2951658  0.82527751 0.32285964 
		-4.290215  -6.2611027 68.736931 39.55138  -0.22940324 25.494286 20.644686  -0.010814922 
		1.7586714 -0.3010934  0.0064434623 0.40460798 -0.36615133 ;
	setAttr ".pt[107:112]" -type "float3" -0.0072367713 0.12745036 -0.051571328  
		-0.32777542 -3.012718 -1.6398851  -0.21175328 5.2666593 9.6901522  0.0004479714 0.95798045 
		-0.55843073  -0.32525209 24.406191 16.858967  -0.10939412 40.6064 -0.90481359 ;
	setAttr ".pt[114]" -type "float3" -0.20480333 0.78508687 -1.4522589 ;
	setAttr ".pt[116:127]" -type "float3" -0.4546431 0.61325228 -1.6449611  -0.50938445 
		1.1849669 -1.454329  -0.72712946 0.79968345 -1.881597  1.9303826 2.4962335 -1.340162  
		2.7491062 2.2961507 -2.2784405  0.75034064 1.8726921 -1.0286393  0.93940747 1.6130364 
		-1.3682446  0.58122629 -1.6929914 -0.28583553  0.300852 -1.6919351 -0.049576286  
		0.025790507 -0.44761723 -0.0076269871  0.055050261 -0.12827198 0.068915129  -0.61365128 
		-1.0440397 -0.61940205 ;
	setAttr ".pt[129:130]" -type "float3" 1.8130336 0.7031157 -3.7373836  -0.11004817 
		-0.086189784 0.42030168 ;
	setAttr ".pt[132:138]" -type "float3" 0.0076953499 -0.19614084 -0.10992059  
		-0.54409897 0.5238778 -1.2663244  0.87358326 -6.5881214 3.9724941  0.61534041 0.91521132 
		-0.77137876  1.8269839 1.735123 -1.6105238  -4.8597775 -1.1588795 -0.25390491  -4.2761793 
		-5.9831624 4.6595793 ;
	setAttr ".pt[140:147]" -type "float3" 0.67041409 -2.801137 0.67484879  0.47818714 
		-0.87567896 -0.0071058655  -0.041600902 -0.29638445 -0.34034663  0.35894489 -0.22698236 
		-0.26177886  0.7171762 -1.7034516 1.0070648  -0.36436743 -2.3311083 0.035094779  
		1.2464319 27.297508 21.980177  -0.084785424 0.1064505 0.027393427 ;
	setAttr ".pt[151:155]" -type "float3" -1.553035 3.193459 0.64961368  -1.0704138 
		1.3473039 0.42046857  0.46311206 1.9609706 0.6194151  0.58285284 24.591074 21.328156  
		-2.6233833 44.951843 1.0542257 ;
	setAttr ".pt[157:168]" -type "float3" -0.6498661 0.69021952 1.0657179  17.182079 
		-28.316597 1.9853164  0.29278597 -2.7201447 1.6402217  -5.438354 -1.248697 5.2686839  
		-0.46993712 0.84534168 -1.4126158  0.18284515 -0.021177545 1.5967187  -0.40363172 
		0.8599121 -1.0845677  -0.085863546 -0.16871583 0.038826276  -0.63013637 0.65840983 
		-1.2733651  1.1022539 -0.15375093 2.3289557  -0.77064317 0.10544983 -0.79701215  
		-2.9634385 -3.4361682 3.6694415 ;
	setAttr ".pt[174:196]" -type "float3" -0.066789232 34.09877 9.6526518  0.1569393 
		34.292862 4.9341373  0.1328603 31.32563 0.64254093  0.97115648 26.691917 -5.7156267  
		5.3626122 43.575886 12.353004  -3.2811 42.531887 12.018521  -10.014582 35.304638 
		8.6810045  -3.4792602 33.719585 -3.4855311  -1.0801017 32.988224 2.012383  -2.2191546 
		33.231907 4.7475653  -0.11142464 -1.9504977 -3.8687348  0.89688611 -1.6362706 0.50606525  
		0.015357597 -0.060750872 0.016851613  0.23673463 -0.40196791 -0.002807105  0.44551975 
		-1.7114984 0.61040008  0.047321621 -1.4503483 0.96556664  -0.4382363 -1.5875721 -0.35564756  
		-0.6579181 -1.7437143 0.63163304  -0.14625175 -2.1332531 0.53166991  -0.85592455 
		-2.0255644 -0.84974861  -5.6888285 -5.2132869 -11.542346  -4.9583478 7.2500668 -10.653923  
		-0.025046235 0.038239524 -0.44359952 ;
	setAttr ".pt[198:202]" -type "float3" 0.73346853 -0.87807047 -1.954167  -0.47433019 
		0.84724641 -6.1031647  0.023548588 -0.0073929857 0.011560577  0.037385702 -0.039091263 
		0.022991564  0.013148555 -0.0089495871 0.0037022298 ;
	setAttr ".pt[205:210]" -type "float3" -0.055305801 -0.018785322 0.06493742  
		1.1306634 1.1772738 -2.8862672  -0.20914748 0.13986839 1.1570709  -0.24478088 0.3015033 
		-0.86219341  -0.060047552 -0.1961455 0.017911367  -0.26838019 0.81843603 -1.3984946 ;
	setAttr ".pt[212]" -type "float3" 0.38947406 0.33367485 -2.2413783 ;
	setAttr ".pt[214:224]" -type "float3" 0.29365766 -3.4329171 1.3742011  16.611956 
		-27.063387 9.6325674  -1.4173464 -17.834265 13.726958  0.060606498 -0.046518289 -0.21361652  
		-15.645817 49.719925 21.397566  -7.8822613 34.271069 2.6281765  0.59786904 24.814707 
		19.685547  0.111934 -1.8067012 0.10099891  0.81638062 2.1162598 -1.0387739  -1.0547241 
		1.1312224 -0.14277874  -0.0069509349 0.014421784 0.0055066193 ;
	setAttr ".pt[228:232]" -type "float3" -0.5659852 0.65525448 -0.39830193  0.010731817 
		-1.6470078 0.26501769  0.4539766 27.099224 20.120996  1.2908105 31.816902 0.46653485  
		-0.50153136 -1.76768 8.5718374 ;
	setAttr ".pt[234:238]" -type "float3" 0.29557839 0.12333307 -0.46331346  0.022364369 
		-0.42902076 0.26835281  0.099342436 -0.44699934 -0.023059331  0.013855184 -0.011372243 
		0.042363744  -0.041924715 -0.083405636 0.074662715 ;
	setAttr ".pt[243:257]" -type "float3" 0.14882103 -1.1227736 0.98020351  1.5876282 
		1.0584555 -1.8991299  -0.01398705 -1.5002031 0.31387532  -0.79499048 -0.34556198 
		-0.63190114  -0.2144098 2.6238568 -1.6011999  -0.89143795 -1.0513067 -0.67767572  
		0.26814833 1.9923385 -2.226887  -0.79983222 0.30134404 -0.39134389  -0.3648622 2.2566674 
		-0.66962612  -0.03678441 0.023839736 -0.10825333  -0.015293634 0.055898212 -0.014132602  
		-0.0033307199 -0.0013208064 -0.036860131  -0.015429951 0.038621057 -0.022541288  
		-0.29309604 1.2164066 -1.1358377  -0.6135428 -1.1380011 -1.2849454 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0 759.88133429827008 0 ;
	setAttr ".s" -type "double3" -1.4150737824074413 1 1 ;
createNode transform -n "transform1" -p "pCube2";
	setAttr ".v" no;
createNode transform -n "polySurface1";
createNode transform -n "transform4" -p "polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform4";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[3]" -type "float3" 0 -6.2496543 0 ;
	setAttr ".pt[44]" -type "float3" 0 0 -24.66604 ;
	setAttr ".pt[56]" -type "float3" 0 -17.990671 0 ;
	setAttr ".pt[158]" -type "float3" 0 23.819353 11.661061 ;
	setAttr ".pt[233]" -type "float3" 0 -8.2187796 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "polySurface2";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "transform3" -p "polySurface2";
	setAttr ".v" no;
createNode transform -n "Model";
	setAttr ".s" -type "double3" 0.060745413938142478 0.060745413938142478 0.060745413938142478 ;
createNode transform -n "headMesh" -p "Model";
	setAttr ".t" -type "double3" 0 1006.7034482529086 2.5708340250679544 ;
	setAttr ".s" -type "double3" 1.8810805126761136 2.3251913289054826 1.8886039571782227 ;
createNode mesh -n "headMeshShape" -p "headMesh";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[2:5]" -type "float3" 21.304289 2.1316282e-014 -21.304289  
		-21.304289 2.1316282e-014 -21.304289  21.304289 2.1316282e-014 21.304289  -21.304289 
		2.1316282e-014 21.304289 ;
	setAttr ".pt[8:11]" -type "float3" -19.848156 15.258137 -19.848156  19.848156 
		15.258137 -19.848156  19.848156 15.258137 19.848156  -19.848156 15.258137 19.848156 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "bodyMesh" -p "Model";
createNode mesh -n "bodyMeshShape" -p "bodyMesh";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt";
	setAttr ".pt[0]" -type "float3" -2.537792 7.5993633 25.665468 ;
	setAttr ".pt[19:20]" -type "float3" 5.2939062 1.2215563 3.8816831  0.94412661 
		-18.488297 10.456998 ;
	setAttr ".pt[44]" -type "float3" 0 1.1444092e-005 0 ;
	setAttr ".pt[46:47]" -type "float3" -1.3396058 -5.8373337 10.497599  2.3153162 
		8.1321421 33.43364 ;
	setAttr ".pt[91:92]" -type "float3" 3.5177329 0.58210826 8.3765764  7.9767494 
		3.2732515 17.827192 ;
	setAttr ".pt[269]" -type "float3" 4.7683716e-007 1.1444092e-005 1.6689301e-006 ;
	setAttr ".pt[291:293]" -type "float3" 0 -6.6757202e-006 -3.8146973e-006  4.7808871 
		-2.4509799 15.827449  -2.4758139 4.2649722 13.871518 ;
	setAttr ".pt[337]" -type "float3" -2.7077441 2.4796357 8.4517183 ;
	setAttr ".pt[498]" -type "float3" 8.9870739 1.3109331 7.0421295 ;
	setAttr ".pt[512:517]" -type "float3" 1.9073486e-006 -2.9087067e-005 -1.847744e-006  
		-3.9437759 2.0098517 10.109478  -0.47241986 5.1214056 20.118048  2.4226038 0.4908064 
		20.014299  2.8089676 0.021253824 18.366833  6.9973154 2.3484788 16.603697 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
parent -s -nc -r -add "|pCube1|transform2|pCubeShape1" "transform1" ;
parent -s -nc -r -add "|polySurface1|transform4|polySurfaceShape1" "transform3" ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 100 0 ;
	setAttr ".w" 100;
	setAttr ".h" 100;
	setAttr ".d" 100;
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 9 "f[0]" "f[2]" "f[4]" "f[6]" "f[8]" "f[10]" "f[12]" "f[14]" "f[20:23]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 25 -50 0 ;
	setAttr ".rs" 46071;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[2:11]" -type "float3" 0 48.221664 0  0 48.221664 0  0 83.936913 
		0  11.216132 64.697906 0  0 83.936913 0  11.216132 64.697906 0  0 83.936913 0  11.216132 
		64.697906 0  0 48.221664 0  0 48.221664 0 ;
	setAttr ".tk[16]" -type "float3" 0 48.221664 0 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[17:22]" -type "float3"  0 -82.369774 0 0 -82.369774 
		0 0 -82.369774 0 0 -82.369774 0 0 -82.369774 0 0 -82.369774 0;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[14]" "f[17]";
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 55.608063 81.459785 0 ;
	setAttr ".rs" 41582;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 89.472305 104.88811 0 ;
	setAttr ".rs" 45309;
	setAttr ".lt" -type "double3" -5.329070518200752e-014 5.8272508261630456e-014 121.10646698243997 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[22:27]" -type "float3"  33.864239 23.428318 0 33.864239 
		23.428318 0 33.864239 23.428318 0 33.864239 23.428318 0 33.864239 23.428318 0 33.864239 
		23.428318 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 227.62863 81.174301 0 ;
	setAttr ".rs" 35373;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2:3]" -type "float3" 0 0 15.963408  0 0 15.963408 ;
	setAttr ".tk[28:33]" -type "float3" 19.956417 3.6580076 10.865582  19.956417 
		3.6580076 -1.2352736e-014  17.519037 -10.788054 10.865582  17.519037 -10.788054 -1.2352736e-014  
		19.956417 3.6580076 -10.865582  17.519037 -10.788054 -10.865582 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 25 -132.36978 0 ;
	setAttr ".rs" 41954;
	setAttr ".lt" -type "double3" -7.1054273576010019e-015 7.8343207592877672e-015 76.71735594777067 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[3]" -type "float3" 9.2832327 -12.973988 -5.7220459e-006 ;
	setAttr ".tk[10:11]" -type "float3" 9.2832327 -12.973988 -5.7220459e-006  
		9.2832327 -12.973988 -5.7220459e-006 ;
	setAttr ".tk[15]" -type "float3" 9.2832327 -12.973988 -5.7220459e-006 ;
	setAttr ".tk[28:39]" -type "float3" -27.031326 -60.123554 -2.0498242  -27.031326 
		-60.123554 -12.868824  -29.458263 -74.507675 -2.0498242  -29.458263 -74.507675 -12.868824  
		-27.031326 -60.123554 -23.687813  -29.458263 -74.507675 -23.687813  128.38918 -157.82407 
		76.497414  128.38918 -157.82407 60.925507  124.89605 -178.52725 76.497414  124.89605 
		-178.52725 60.925507  128.38918 -157.82407 45.353619  124.89605 -178.52725 45.353619 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[10:11]" -type "float3" 0 0 -23.180822  0 0 -23.180822 ;
	setAttr ".tk[40:42]" -type "float3" 0 0 -22.394026  18.719133 0 -22.394026  
		18.719133 0 0 ;
	setAttr ".tk[44:45]" -type "float3" 18.719133 0 17.632923  0 0 17.632923 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "f[36]" "f[39]";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[0:6]" "e[26]" "e[32]" "e[72]" "e[75]" "e[80]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.17292328178882599;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[21:38]" -type "float3"  12.814779 -38.964542 1.4303637 
		1.4573789 -38.964542 -1.2229927 18.937248 -31.617657 9.7587614 7.5798459 -31.617657 
		7.1054087 -9.9000216 -38.964542 -3.8763466 -3.7775555 -31.617657 4.4520617 -27.007553 
		5.3290705e-014 36.759251 -33.439346 5.3290705e-014 35.256634 -29.767559 -1.4210855e-013 
		38.484535 -36.199348 -1.4210855e-013 36.981918 -39.871143 5.3290705e-014 33.754017 
		-42.631138 -1.4210855e-013 35.479301 -112.38326 2.8421709e-013 74.806374 -117.73545 
		2.8421709e-013 73.555969 -114.67999 2.8421709e-013 76.242043 -120.03217 2.8421709e-013 
		74.991653 -123.08761 2.8421709e-013 72.30558 -125.38436 2.8421709e-013 73.741249;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[48:49]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 57.029079 -209.08713 -2.3805542 ;
	setAttr ".rs" 36107;
	setAttr ".lt" -type "double3" 0 7.3290975087416457e-015 190.99267919066909 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[48:49]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 57.029079 -400.07983 -2.3805542 ;
	setAttr ".rs" 64701;
	setAttr ".lt" -type "double3" 0 -1.5956227684933675e-014 199.86046105610609 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 333.09061 -87.001358 135.19933 ;
	setAttr ".rs" 63192;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[44]" -type "float3" 0 0 -19.048632 ;
	setAttr ".tk[57]" -type "float3" 0 0 34.181961 ;
	setAttr ".tk[59]" -type "float3" 0 0 34.181961 ;
	setAttr ".tk[61:68]" -type "float3" 0 0 27.616812  0 0 27.616812  0 -102.54592 
		23.487431  0 -102.54592 -0.79860479  0 -102.54592 23.487431  0 -102.54592 -0.79860479  
		0 -102.54592 -23.487431  0 -102.54592 -23.487431 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[48:49]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 57.029079 -702.48615 -2.3805542 ;
	setAttr ".rs" 35455;
	setAttr ".lt" -type "double3" 0 -5.8225016335169194e-015 58.222216187070899 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[39]" -type "float3" 0 0 20.618557 ;
	setAttr ".tk[63:64]" -type "float3" 0 0 0  0 0 0 ;
	setAttr ".tk[69:74]" -type "float3" 32.770401 -25.005264 31.459267  32.770401 
		-25.005264 31.459267  32.770401 -25.005264 31.459267  32.770401 -25.005264 31.459267  
		32.770401 -25.005264 31.459267  32.770401 -25.005264 31.459267 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[73]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 57.029079 -731.59723 44.145489 ;
	setAttr ".rs" 49121;
	setAttr ".c[0]"  0 1 1;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[116:117]" "e[119]" "e[121]" "e[123]" "e[125]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.52407467365264893;
	setAttr ".dr" no;
	setAttr ".re" 125;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[3]" -type "float3" -21.958145 0 0 ;
	setAttr ".tk[11]" -type "float3" -21.958145 0 0 ;
	setAttr ".tk[14:20]" -type "float3" 11.839791 0 0  -21.958145 0 0  0 0 -8.7073679  
		0 0 -8.7073679  26.858225 0 12.463408  0 0 3.150825  0 0 33.634186 ;
	setAttr ".tk[40:41]" -type "float3" 0 0 0  16.087439 0 0 ;
	setAttr ".tk[46]" -type "float3" 0 0 33.634186 ;
	setAttr ".tk[54]" -type "float3" 0 0 -8.7073679 ;
	setAttr ".tk[60]" -type "float3" -5.298069 0 0 ;
	setAttr ".tk[81:84]" -type "float3" 0 -17.127382 105.03924  0 -17.127382 
		105.03924  0 -2.740402 105.03924  0 -2.740402 105.03924 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[81:82]" "e[84]" "e[86]" "e[88]" "e[90]" "e[92]" "e[94]" "e[96]" "e[98]" "e[100]" "e[108]" "e[115]" "e[120]" "e[127]" "e[145]" "e[148]" "e[153]" "e[156]" "e[160]" "e[168]" "e[173]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51056689023971558;
	setAttr ".dr" no;
	setAttr ".re" 82;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[85:90]" -type "float3"  -6.7179108 0 -16.13983 2.9998455 
		0 3.6636059 -6.7179108 0 16.13983 9.6214151 0 16.13983 9.6214151 0 3.6636059 9.6214151 
		0 -16.13983;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[10:11]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 361.57111 647.87469 142.94283 ;
	setAttr ".rs" 64803;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 87 ".tk";
	setAttr ".tk[0:1]" -type "float3" 0 -29.702572 34.994404  0 -29.702572 
		0 ;
	setAttr ".tk[5]" -type "float3" 0 -21.502626 -17.787924 ;
	setAttr ".tk[9:20]" -type "float3" 0 -19.699745 10.477737  -9.2832336 -27.903976 
		0  10.26716 -7.2309446 28.240652  0 27.420727 -8.3474226  0 27.420727 -8.3474226  
		0 -29.702572 0  0 -22.904844 0  0 -25.956295 13.141734  0 -25.956295 42.474838  0 
		-25.956295 0  0 -25.956295 0  0 -25.956295 0 ;
	setAttr ".tk[22:23]" -type "float3" 0 -16.361105 0  0 -14.905928 19.594269 ;
	setAttr ".tk[26]" -type "float3" 0 -21.460783 -16.790504 ;
	setAttr ".tk[28]" -type "float3" 0 -16.361105 0 ;
	setAttr ".tk[39:47]" -type "float3" 0 0 1.9073486e-006  0 -13.422979 -1.9073486e-006  
		0 -27.872118 -9.5367432e-007  0 -32.98333 -9.5367432e-007  0 -27.872118 9.5367432e-007  
		0 0 0  0 -27.872118 9.5367432e-007  0 -25.956295 0  0 -29.702572 30.246473 ;
	setAttr ".tk[52:92]" -type "float3" 0 -20.4433 0  0 27.420727 -8.3474226  
		0 -25.956295 9.9195642  0 -27.872118 -14.485803  0 -32.98333 -9.5367432e-007  14.488237 
		-52.501934 15.212549  0 -52.501934 5.4394403  -14.427217 -52.501934 27.59968  0 -52.501934 
		5.4394403  6.6596241 -52.501934 -54.021656  -11.033677 -52.501934 -38.846531  0 0 
		24.997925  0 0 8.3132629  0 0 24.997925  0 0 8.3132629  0 0 -7.2741127  0 0 -7.2741127  
		-12.643876 0 -23.715752  -12.643876 0 -23.715752  -12.643876 0 -23.715752  -12.643876 
		0 -23.715752  -12.643876 0 -23.715752  -12.643876 0 -23.715752  0 0 0  0 0 1.9073486e-006  
		0 0 0  0 0 1.9073486e-006  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  0 0 0  -8.4663153 -74.589432 
		-23.606609  -5.4172592 -74.589432 6.9108415  -10.082893 -74.589432 25.885555  15.177623 
		-74.589432 25.848516  5.4172592 -74.589432 6.9108415  14.197813 -74.589432 -26.682922  
		0 -25.956295 7.4089894  0 -29.702572 19.284826 ;
	setAttr ".tk[94]" -type "float3" 0 -17.330574 -21.906755 ;
	setAttr ".tk[96:112]" -type "float3" 0 -20.20186 7.5690727  0 -9.969697 0  
		0 27.420727 -8.3474226  0 -25.956295 20.254112  0 -27.872118 -11.880943  0 -52.501934 
		15.212549  0.72018445 -74.589432 17.635132  0 0 24.997925  0 0 0  0 0 1.9073486e-006  
		0 0 0  0 0 0  0 0 0  0 0 -7.2741127  0.72018445 -74.589432 -10.111759  0 -52.501934 
		-18.921595  0 -27.872118 31.76881 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[67]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 339.75714 660.37732 161.38319 ;
	setAttr ".rs" 46336;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[113:118]" -type "float3"  26.518776 -23.905651 51.699219 
		26.518776 -23.905651 51.699219 26.518776 -31.892063 51.699219 26.518776 -31.892063 
		51.699219 26.518776 -23.905651 51.699219 26.518776 -31.892063 51.699219;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n"
		+ "                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n"
		+ "            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n"
		+ "                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 4096\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 4096\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n"
		+ "            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range -1 -1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 4096\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[9:10]" "e[15:16]" "e[37]" "e[44]" "e[49]" "e[56]" "e[61]" "e[68]" "e[89]" "e[95]" "e[132]" "e[139]" "e[179]" "e[185]" "e[221]" "e[224]" "e[229]" "e[232]" "e[236]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.66083598136901855;
	setAttr ".dr" no;
	setAttr ".re" 179;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 51 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -26.777925 10.711768 ;
	setAttr ".tk[2]" -type "float3" 0 -62.020851 10.268613 ;
	setAttr ".tk[4:5]" -type "float3" 0 -68.987 0  0 -28.495646 0 ;
	setAttr ".tk[18]" -type "float3" -9.9184818 0 0 ;
	setAttr ".tk[21:38]" -type "float3" -0.74772072 -19.187227 34.466221  2.4114361 
		-14.636251 21.296358  -5.5705938 -35.575539 26.699299  -2.411437 -39.721741 18.979744  
		5.5705924 -19.187227 8.1264944  0.74771976 -33.752251 10.480296  11.423799 -61.758701 
		70.403069  4.022573 -59.505295 71.432892  11.133245 -61.66222 69.629646  4.1199412 
		-40.42144 68.128845  -3.0205181 -57.339329 70.126419  -1.5815746 -60.529907 62.662552  
		-37.413544 -53.463215 79.849045  -40.074181 -52.636505 66.624825  -45.988476 -53.541161 
		74.437347  -40.043991 -33.544216 64.371719  -45.103207 -51.094143 62.670593  -43.552368 
		-54.319973 55.089523 ;
	setAttr ".tk[40:41]" -type "float3" 0 -53.309174 0  0 -53.309174 0 ;
	setAttr ".tk[43]" -type "float3" 0 -53.309174 0 ;
	setAttr ".tk[45]" -type "float3" 0 -53.309174 0 ;
	setAttr ".tk[47:49]" -type "float3" 0 -26.777925 6.3378201  0 -63.785233 
		10.268613  0 -68.987 0 ;
	setAttr ".tk[55]" -type "float3" 0 -53.309174 0 ;
	setAttr ".tk[69:74]" -type "float3" -38.369564 -53.275471 81.547989  -43.398575 
		-51.733105 77.593773  -38.548222 -53.214275 80.657349  -48.031265 -51.10725 83.223122  
		-63.181305 -41.607143 95.965927  -63.359962 -41.54594 95.075287 ;
	setAttr ".tk[93:94]" -type "float3" 0.2560049 -56.018829 7.1878304  -12.575063 
		-34.201778 0 ;
	setAttr ".tk[100]" -type "float3" 0 -53.309174 0 ;
	setAttr ".tk[112:122]" -type "float3" 0 -53.309174 0  -52.594948 -49.104347 
		92.780609  -57.623978 -47.561966 88.826431  -52.861015 -49.021805 92.460228  -57.890034 
		-47.479416 88.505981  -62.652992 -46.019581 84.872169  -62.919064 -45.937031 84.551743  
		-70.583267 -81.869797 97.223824  -71.932922 -94.913788 96.108238  -80.744408 -56.112625 
		99.337151  -82.093399 -69.097168 98.217339 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 29 "e[11:12]" "e[20]" "e[22]" "e[30]" "e[41]" "e[43]" "e[53]" "e[55]" "e[65]" "e[67]" "e[77]" "e[80]" "e[91]" "e[103]" "e[112]" "e[114]" "e[124]" "e[126]" "e[136]" "e[138]" "e[149]" "e[151]" "e[163]" "e[171]" "e[181]" "e[203]" "e[226]" "e[228]" "e[258]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.58955943584442139;
	setAttr ".re" 181;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[193]" "e[215]" "e[283]" "e[301]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.53371280431747437;
	setAttr ".dr" no;
	setAttr ".re" 215;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2:5]" -type "float3" 0.0029135386 -0.0099329278 0.0017546337  
		3.9549708 -12.520187 -5.4448185  4.4140768 4.5744314 -1.9249407  -0.46386552 0.41636759 
		0.49091506 ;
	setAttr ".tk[15]" -type "float3" 2.2885184 -2.1038029 0.061131597 ;
	setAttr ".tk[48:49]" -type "float3" 0.004053581 -0.023661098 -0.004605114  
		2.7554834 7.4345407 -6.3313665 ;
	setAttr ".tk[93:94]" -type "float3" 0.015784377 0.048812859 -0.045347702  
		6.039495 -1.3224362 5.1937127 ;
	setAttr ".tk[140:143]" -type "float3" 0.54680973 -5.5734224 2.6363676  5.1097918 
		-5.0664496 10.089151  3.1412301 -2.514406 3.5161974  4.6913738 -6.1834726 6.6041994 ;
	setAttr ".tk[158]" -type "float3" 2.9847896 -5.2037373 0.31905624 ;
	setAttr ".tk[170:173]" -type "float3" 0 0 0  0 0 0  0 0 0  0 0 0 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[116:117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[195]" "e[213]" "e[285]" "e[299]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.56650149822235107;
	setAttr ".re" 213;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[153:154]" "e[156]" "e[158]" "e[205]" "e[209]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.83054327964782715;
	setAttr ".dr" no;
	setAttr ".re" 154;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 33 "e[13:14]" "e[19]" "e[21]" "e[28]" "e[35]" "e[39]" "e[47]" "e[51]" "e[59]" "e[63]" "e[73]" "e[75]" "e[93]" "e[102]" "e[106]" "e[110]" "e[118]" "e[122]" "e[130]" "e[134]" "e[142]" "e[146]" "e[165]" "e[169]" "e[183]" "e[201]" "e[219]" "e[223]" "e[256]" "e[346]" "e[352]" "e[366]" "e[372]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.4479774534702301;
	setAttr ".re" 102;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[45:46]" "e[48]" "e[50]" "e[52]" "e[54]" "e[248]" "e[270]" "e[311]" "e[329]" "e[400]" "e[418]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.4820341169834137;
	setAttr ".re" 54;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[0]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[2:4]" -type "float3" -0.014068604 0 0  4.3111877 -2.0571568 
		0  -4.4042282 0 0 ;
	setAttr ".tk[6:8]" -type "float3" -0.011169434 0 0  7.6122251 -18.320166 
		0  -0.011169434 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[22]" -type "float3" 0 -7.9327908 0 ;
	setAttr ".tk[28]" -type "float3" 0 -7.9327908 0 ;
	setAttr ".tk[32]" -type "float3" 0 -7.9327908 0 ;
	setAttr ".tk[34]" -type "float3" 0 -7.9327908 0 ;
	setAttr ".tk[38:39]" -type "float3" 0 -7.9327908 0  -0.011169434 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[143:144]" -type "float3" -4.6802063 0 0  -0.011169434 0 0 ;
	setAttr ".tk[170]" -type "float3" 7.4861088 0 0 ;
	setAttr ".tk[173]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[200]" -type "float3" -0.011169434 0 0 ;
	setAttr ".tk[203]" -type "float3" 7.6122251 -18.320166 0 ;
	setAttr ".tk[233]" -type "float3" -0.011169434 0 0 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[57:58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[250]" "e[268]" "e[313]" "e[327]" "e[402]" "e[416]";
	setAttr ".ix" -type "matrix" 1.4150737824074413 0 0 0 0 1 0 0 0 0 1 0 0 759.88133429827008 0 1;
	setAttr ".wt" 0.44393962621688843;
	setAttr ".re" 327;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:247]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:247]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:495]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 32 "vtx[0:20]" "vtx[39:56]" "vtx[91:100]" "vtx[112]" "vtx[123:126]" "vtx[140:145]" "vtx[155:158]" "vtx[170:173]" "vtx[177:179]" "vtx[200:203]" "vtx[215:218]" "vtx[232:233]" "vtx[258]" "vtx[260]" "vtx[262]" "vtx[264]" "vtx[266]" "vtx[268]" "vtx[270]" "vtx[274]" "vtx[278]" "vtx[297]" "vtx[300]" "vtx[302:309]" "vtx[311:312]" "vtx[314]" "vtx[381]" "vtx[400:403]" "vtx[430:431]" "vtx[435]" "vtx[458:459]" "vtx[490:491]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 5;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 101 ".tk";
	setAttr ".tk[0:10]" -type "float3" 0.061691158 8.8554401 -25.481808  -2.5245967 
		-3.6462371 -1.8498552  0.075840361 25.122982 -11.92877  7.5520535 29.785717 -5.6209517  
		0.12243001 -4.8304377 -0.096876681  0.75125134 -0.41742706 1.0994987  0.0075072041 
		-1.8414395 -0.3412835  1.3485551e-006 -1.9311905e-005 0  0 -22.372025 5.4122524  
		0 4.7683716e-007 0  -0.55746621 10.233397 10.573363 ;
	setAttr ".tk[12]" -type "float3" 0 10.233397 10.573363 ;
	setAttr ".tk[16]" -type "float3" 0 10.233397 10.573363 ;
	setAttr ".tk[19:20]" -type "float3" 0.98594922 -1.6945558 0.64551759  0.023683831 
		-40.38842 -5.7101936 ;
	setAttr ".tk[23:32]" -type "float3" -2.4903566e-006 -8.1146136e-006 -2.6077032e-008  
		4.818663e-006 1.244247e-005 -7.5809658e-007  1.7881393e-006 4.6491623e-006 -3.4272671e-007  
		2.7902424e-006 6.8545341e-006 1.15484e-006  -30.303617 19.639212 7.6293945e-006  
		-30.303617 19.639212 7.6293945e-006  -30.303617 19.639212 7.6293945e-006  -30.303617 
		19.639212 7.6293945e-006  -30.303617 19.639212 7.6293945e-006  -30.303617 19.639212 
		7.6293945e-006 ;
	setAttr ".tk[39]" -type "float3" 0 10.233397 -4.2678356 ;
	setAttr ".tk[42]" -type "float3" 0 -19.097902 0 ;
	setAttr ".tk[44]" -type "float3" 0.0023580147 -21.478186 35.266422 ;
	setAttr ".tk[46:52]" -type "float3" 8.7959499 -15.701899 -10.623919  10.153009 
		8.8597546 -18.796341  7.9044785 31.172371 -13.391323  3.7956116 -4.4860635 2.9532351  
		1.4914602 -2.1989002 -0.49997577  0 -13.845755 3.3495731  2.575489 -3.2476466 0 ;
	setAttr ".tk[55:56]" -type "float3" 0 0 -0.88388765  0 -9.1348286 0 ;
	setAttr ".tk[91:97]" -type "float3" 6.0695105 -6.9413533 3.3295074  4.1871581 
		-13.179998 -6.9916797  10.521234 35.606461 -11.795695  7.7114186 -3.9888761 10.177319  
		0.17355093 -1.7579589 -0.34941196  -0.022944875 0.013684222 0.016935509  11.678009 
		-22.815371 0 ;
	setAttr ".tk[123]" -type "float3" 0 10.040909 10.619928 ;
	setAttr ".tk[126:128]" -type "float3" 0 0 0  5.1744282e-006 -2.3353845e-005 
		-4.2840838e-008  -30.303617 19.639212 7.6293945e-006 ;
	setAttr ".tk[138:144]" -type "float3" -30.303617 19.639212 7.6293945e-006  
		-2.0042062e-006 -3.0040741e-005 1.847744e-006  3.4056897 -0.88773096 0.59020334  
		6.2451153 -5.5545611 6.1176138  2.6812181 -9.1490116 1.3943648  0.11747366 -11.90469 
		-1.4808135  0 -25.723328 0 ;
	setAttr ".tk[158:160]" -type "float3" 0.016358331 -0.020647708 0.0017659835  
		-3.5464764e-006 2.8729439e-005 -1.5497208e-006  -30.303617 19.639212 7.6293945e-006 ;
	setAttr ".tk[168:173]" -type "float3" -30.303617 19.639212 7.6293945e-006  
		9.3504786e-007 -1.4081597e-006 2.682209e-007  -0.012813948 -0.032113396 0.016781559  
		6.7522817 -3.8405931 3.8072791  5.9595819 -2.8292856 -1.6158967  0.091358528 -4.7166829 
		-0.29671565 ;
	setAttr ".tk[200:205]" -type "float3" 1.8545781e-005 -7.296144 1.7722402  
		0.10111713 -3.4245172 0.85277915  0.13781869 -0.073295228 0.026793912  -2.1457672e-006 
		-1.9073486e-006 4.7683716e-007  1.4021061e-006 -4.5076013e-007 -4.0233135e-007  -30.303617 
		19.639212 7.6293945e-006 ;
	setAttr ".tk[213]" -type "float3" -30.303617 19.639212 7.6293945e-006 ;
	setAttr ".tk[233]" -type "float3" 0 0 -1.914279 ;
	setAttr ".tk[258:260]" -type "float3" 2.597358 -4.6220508 -2.6119411  -7.9942932 
		28.90674 -6.2114878  -0.15369596 -0.061190087 0.2300518 ;
	setAttr ".tk[269]" -type "float3" -0.99648446 -1.8714952 0.50996768 ;
	setAttr ".tk[274]" -type "float3" -2.8312206e-007 -6.1765313e-006 1.5869737e-006 ;
	setAttr ".tk[292:298]" -type "float3" -8.789629 -15.651235 -4.683845  -10.085162 
		8.7946644 -19.024748  -8.0073013 30.876726 -14.234733  -3.3863931 -4.1597128 2.9099274  
		-1.1171556 -1.6313909 -0.37186036  0 -13.845755 3.3495731  -11.678009 -13.636554 
		0 ;
	setAttr ".tk[301:302]" -type "float3" 0 0 -0.88388765  0 -9.1348286 0 ;
	setAttr ".tk[337:341]" -type "float3" -6.0414329 -6.9686046 -2.967566  -4.1366014 
		-13.34783 -7.31952  -10.698048 35.346279 -12.52987  -7.2945771 -3.6617203 9.8021526  
		-0.015872711 -0.27080959 -0.06055849 ;
	setAttr ".tk[343]" -type "float3" -8.4712477 -22.815371 0 ;
	setAttr ".tk[385:387]" -type "float3" -2.3058679 -1.0347209 0.35878506  -5.8650961 
		-5.5576925 5.8460498  -2.9729993 -10.025741 0.18982083 ;
	setAttr ".tk[400:401]" -type "float3" -0.048892505 -0.2887238 0.30962104  
		-2.3789625 -3.3358338 -0.029582217 ;
	setAttr ".tk[414:415]" -type "float3" -5.9955425 -3.2589817 3.396472  -5.4268003 
		-2.4465077 -1.6841379 ;
	setAttr ".tk[442:443]" -type "float3" -0.055194531 -3.4208751 0.84114182  
		-0.015750485 -0.0076802876 0.0032090764 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 3 "f[248:258]" "f[260:372]" "f[374:495]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[248:249]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:247]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:495]";
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 29 "vtx[0:26]" "vtx[39:56]" "vtx[91:100]" "vtx[112]" "vtx[123:127]" "vtx[139:145]" "vtx[155:159]" "vtx[169:183]" "vtx[200:204]" "vtx[214:219]" "vtx[231:233]" "vtx[258:260]" "vtx[262]" "vtx[264]" "vtx[266]" "vtx[268]" "vtx[270:271]" "vtx[274]" "vtx[278]" "vtx[297]" "vtx[300]" "vtx[302:314]" "vtx[349:358]" "vtx[370]" "vtx[381:383]" "vtx[399:403]" "vtx[429:437]" "vtx[458:460]" "vtx[489:491]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 5;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[24:25]" "e[27]" "e[29]" "e[31]" "e[85]" "e[99]" "e[175]" "e[189]" "e[305]" "e[424]" "e[523]" "e[525]" "e[527]" "e[578]" "e[592]" "e[668]" "e[682]" "e[795]" "e[912]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.74983972311019897;
	setAttr ".dr" no;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 0 100 0 ;
	setAttr ".w" 100;
	setAttr ".h" 100;
	setAttr ".d" 100;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1.8810805126761136 0 0 0 0 2.3251913289054826 0 0 0 0 1.8886039571782227 0
		 0 1019.6765309496511 0 1;
	setAttr ".wt" 0.5801512598991394;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupParts2.og" "|pCube1|transform2|pCubeShape1.i";
connectAttr "groupId1.id" "|pCube1|transform2|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube1|transform2|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId3.id" "|pCube2|transform1|pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "|pCube2|transform1|pCubeShape1.iog.og[0].gco"
		;
connectAttr "groupId2.id" "|pCube1|transform2|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId4.id" "|pCube2|transform1|pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "|polySurface1|transform4|polySurfaceShape1.i";
connectAttr "groupId5.id" "|polySurface1|transform4|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface1|transform4|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|polySurface2|transform3|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface2|transform3|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "polySplitRing13.out" "headMeshShape.i";
connectAttr "polySplitRing12.out" "bodyMeshShape.i";
connectAttr "groupId7.id" "bodyMeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "bodyMeshShape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "deleteComponent1.ig";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyExtrudeFace2.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "deleteComponent3.ig";
connectAttr "polyTweak7.out" "polySplitRing1.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "deleteComponent3.og" "polyTweak7.ip";
connectAttr "polySplitRing1.out" "polyExtrudeFace6.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace9.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace9.out" "polyExtrudeFace10.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyTweak10.out" "polySplitRing2.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing3.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace11.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polySplitRing3.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace12.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing4.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak14.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak15.out" "polySplitRing6.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak15.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polyTweak16.out" "polySplitRing10.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak16.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "|pCube1|transform2|pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "|pCube1|transform2|pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "|pCube1|transform2|pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "|pCube2|transform1|pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polySplitRing11.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "polyMergeVert1.ip";
connectAttr "|polySurface1|transform4|polySurfaceShape1.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "|polySurface1|transform4|polySurfaceShape1.o" "polyUnite2.ip[0]";
connectAttr "|polySurface1|transform4|polySurfaceShape1.o" "polyUnite2.ip[1]";
connectAttr "|polySurface1|transform4|polySurfaceShape1.wm" "polyUnite2.im[0]";
connectAttr "|polySurface2|transform3|polySurfaceShape1.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyMergeVert2.ip";
connectAttr "bodyMeshShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polySplitRing12.ip";
connectAttr "bodyMeshShape.wm" "polySplitRing12.mp";
connectAttr "polyCube2.out" "polySplitRing13.ip";
connectAttr "headMeshShape.wm" "polySplitRing13.mp";
connectAttr "|pCube1|transform2|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube1|transform2|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube2|transform1|pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|pCube2|transform1|pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface1|transform4|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface2|transform3|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "bodyMeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "headMeshShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
// End of blobber.ma
