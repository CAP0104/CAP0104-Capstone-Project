Ńâ
ż
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
ú
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%ˇŃ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized
"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8Ôő

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
v
PlaceholderPlaceholder*+
_output_shapes
:(˙˙˙˙˙˙˙˙˙*
dtype0* 
shape:(˙˙˙˙˙˙˙˙˙
Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
o

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙

+raw/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@raw/kernel*
_output_shapes
:*
dtype0*
valueB"      

)raw/kernel/Initializer/random_uniform/minConst*
_class
loc:@raw/kernel*
_output_shapes
: *
dtype0*
valueB
 *|Ý˝

)raw/kernel/Initializer/random_uniform/maxConst*
_class
loc:@raw/kernel*
_output_shapes
: *
dtype0*
valueB
 *|Ý=
Ç
3raw/kernel/Initializer/random_uniform/RandomUniformRandomUniform+raw/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@raw/kernel*
_output_shapes
:	*
dtype0
Ć
)raw/kernel/Initializer/random_uniform/subSub)raw/kernel/Initializer/random_uniform/max)raw/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@raw/kernel*
_output_shapes
: 
Ů
)raw/kernel/Initializer/random_uniform/mulMul3raw/kernel/Initializer/random_uniform/RandomUniform)raw/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@raw/kernel*
_output_shapes
:	
Ë
%raw/kernel/Initializer/random_uniformAdd)raw/kernel/Initializer/random_uniform/mul)raw/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@raw/kernel*
_output_shapes
:	


raw/kernelVarHandleOp*
_class
loc:@raw/kernel*
_output_shapes
: *
dtype0*
shape:	*
shared_name
raw/kernel
e
+raw/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOp
raw/kernel*
_output_shapes
: 
e
raw/kernel/AssignAssignVariableOp
raw/kernel%raw/kernel/Initializer/random_uniform*
dtype0
j
raw/kernel/Read/ReadVariableOpReadVariableOp
raw/kernel*
_output_shapes
:	*
dtype0

raw/bias/Initializer/zerosConst*
_class
loc:@raw/bias*
_output_shapes	
:*
dtype0*
valueB*    

raw/biasVarHandleOp*
_class
loc:@raw/bias*
_output_shapes
: *
dtype0*
shape:*
shared_name
raw/bias
a
)raw/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpraw/bias*
_output_shapes
: 
V
raw/bias/AssignAssignVariableOpraw/biasraw/bias/Initializer/zeros*
dtype0
b
raw/bias/Read/ReadVariableOpReadVariableOpraw/bias*
_output_shapes	
:*
dtype0
h
raw/Tensordot/ReadVariableOpReadVariableOp
raw/kernel*
_output_shapes
:	*
dtype0
\
raw/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
g
raw/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
M
raw/Tensordot/ShapeShape
ExpandDims*
T0*
_output_shapes
:
]
raw/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
raw/Tensordot/GatherV2GatherV2raw/Tensordot/Shaperaw/Tensordot/freeraw/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
_
raw/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
´
raw/Tensordot/GatherV2_1GatherV2raw/Tensordot/Shaperaw/Tensordot/axesraw/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
]
raw/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
h
raw/Tensordot/ProdProdraw/Tensordot/GatherV2raw/Tensordot/Const*
T0*
_output_shapes
: 
_
raw/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
n
raw/Tensordot/Prod_1Prodraw/Tensordot/GatherV2_1raw/Tensordot/Const_1*
T0*
_output_shapes
: 
[
raw/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

raw/Tensordot/concatConcatV2raw/Tensordot/freeraw/Tensordot/axesraw/Tensordot/concat/axis*
N*
T0*
_output_shapes
:
s
raw/Tensordot/stackPackraw/Tensordot/Prodraw/Tensordot/Prod_1*
N*
T0*
_output_shapes
:

raw/Tensordot/transpose	Transpose
ExpandDimsraw/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙

raw/Tensordot/ReshapeReshaperaw/Tensordot/transposeraw/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

raw/Tensordot/MatMulMatMulraw/Tensordot/Reshaperaw/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
raw/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
]
raw/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

raw/Tensordot/concat_1ConcatV2raw/Tensordot/GatherV2raw/Tensordot/Const_2raw/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

raw/TensordotReshaperaw/Tensordot/MatMulraw/Tensordot/concat_1*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
`
raw/BiasAdd/ReadVariableOpReadVariableOpraw/bias*
_output_shapes	
:*
dtype0
|
raw/BiasAddBiasAddraw/Tensordotraw/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
X
raw/ReluReluraw/BiasAdd*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Ť
-batch_normalization_18/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_18/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_18/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_18/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_18/gamma

=batch_normalization_18/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_18/gamma*
_output_shapes
: 

#batch_normalization_18/gamma/AssignAssignVariableOpbatch_normalization_18/gamma-batch_normalization_18/gamma/Initializer/ones*
dtype0

0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_18/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_18/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_18/betaVarHandleOp*.
_class$
" loc:@batch_normalization_18/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_18/beta

<batch_normalization_18/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_18/beta*
_output_shapes
: 

"batch_normalization_18/beta/AssignAssignVariableOpbatch_normalization_18/beta-batch_normalization_18/beta/Initializer/zeros*
dtype0

/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_18/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_18/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_18/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_18/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_18/moving_mean

Cbatch_normalization_18/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_18/moving_mean*
_output_shapes
: 
¤
)batch_normalization_18/moving_mean/AssignAssignVariableOp"batch_normalization_18/moving_mean4batch_normalization_18/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_18/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_18/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_18/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_18/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_18/moving_variance

Gbatch_normalization_18/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_18/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_18/moving_variance/AssignAssignVariableOp&batch_normalization_18/moving_variance7batch_normalization_18/moving_variance/Initializer/ones*
dtype0

:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_18/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_18/ReadVariableOp_1ReadVariableOpbatch_normalization_18/beta*
_output_shapes
:(*
dtype0

6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes
:(*
dtype0
Ł
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3raw/Relu%batch_normalization_18/ReadVariableOp'batch_normalization_18/ReadVariableOp_16batch_normalization_18/FusedBatchNormV3/ReadVariableOp8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ľ
0dense_15/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_15/kernel*
_output_shapes
:*
dtype0*
valueB"      

.dense_15/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_15/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ˝

.dense_15/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_15/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ=
×
8dense_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_15/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_15/kernel* 
_output_shapes
:
*
dtype0
Ú
.dense_15/kernel/Initializer/random_uniform/subSub.dense_15/kernel/Initializer/random_uniform/max.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
î
.dense_15/kernel/Initializer/random_uniform/mulMul8dense_15/kernel/Initializer/random_uniform/RandomUniform.dense_15/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_15/kernel* 
_output_shapes
:

ŕ
*dense_15/kernel/Initializer/random_uniformAdd.dense_15/kernel/Initializer/random_uniform/mul.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel* 
_output_shapes
:

 
dense_15/kernelVarHandleOp*"
_class
loc:@dense_15/kernel*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_15/kernel
o
0dense_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/kernel*
_output_shapes
: 
t
dense_15/kernel/AssignAssignVariableOpdense_15/kernel*dense_15/kernel/Initializer/random_uniform*
dtype0
u
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel* 
_output_shapes
:
*
dtype0

dense_15/bias/Initializer/zerosConst* 
_class
loc:@dense_15/bias*
_output_shapes	
:*
dtype0*
valueB*    

dense_15/biasVarHandleOp* 
_class
loc:@dense_15/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
.dense_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/bias*
_output_shapes
: 
e
dense_15/bias/AssignAssignVariableOpdense_15/biasdense_15/bias/Initializer/zeros*
dtype0
l
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes	
:*
dtype0
s
!dense_15/Tensordot/ReadVariableOpReadVariableOpdense_15/kernel* 
_output_shapes
:
*
dtype0
a
dense_15/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
l
dense_15/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
o
dense_15/Tensordot/ShapeShape'batch_normalization_18/FusedBatchNormV3*
T0*
_output_shapes
:
b
 dense_15/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_15/Tensordot/GatherV2GatherV2dense_15/Tensordot/Shapedense_15/Tensordot/free dense_15/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
d
"dense_15/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Č
dense_15/Tensordot/GatherV2_1GatherV2dense_15/Tensordot/Shapedense_15/Tensordot/axes"dense_15/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
b
dense_15/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
w
dense_15/Tensordot/ProdProddense_15/Tensordot/GatherV2dense_15/Tensordot/Const*
T0*
_output_shapes
: 
d
dense_15/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
dense_15/Tensordot/Prod_1Proddense_15/Tensordot/GatherV2_1dense_15/Tensordot/Const_1*
T0*
_output_shapes
: 
`
dense_15/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ľ
dense_15/Tensordot/concatConcatV2dense_15/Tensordot/freedense_15/Tensordot/axesdense_15/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_15/Tensordot/stackPackdense_15/Tensordot/Proddense_15/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
¨
dense_15/Tensordot/transpose	Transpose'batch_normalization_18/FusedBatchNormV3dense_15/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense_15/Tensordot/ReshapeReshapedense_15/Tensordot/transposedense_15/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_15/Tensordot/MatMulMatMuldense_15/Tensordot/Reshape!dense_15/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
dense_15/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
b
 dense_15/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
dense_15/Tensordot/concat_1ConcatV2dense_15/Tensordot/GatherV2dense_15/Tensordot/Const_2 dense_15/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_15/TensordotReshapedense_15/Tensordot/MatMuldense_15/Tensordot/concat_1*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
j
dense_15/BiasAdd/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes	
:*
dtype0

dense_15/BiasAddBiasAdddense_15/Tensordotdense_15/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
b
dense_15/ReluReludense_15/BiasAdd*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Ť
-batch_normalization_19/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_19/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_19/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_19/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_19/gamma

=batch_normalization_19/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_19/gamma*
_output_shapes
: 

#batch_normalization_19/gamma/AssignAssignVariableOpbatch_normalization_19/gamma-batch_normalization_19/gamma/Initializer/ones*
dtype0

0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_19/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_19/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_19/betaVarHandleOp*.
_class$
" loc:@batch_normalization_19/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_19/beta

<batch_normalization_19/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_19/beta*
_output_shapes
: 

"batch_normalization_19/beta/AssignAssignVariableOpbatch_normalization_19/beta-batch_normalization_19/beta/Initializer/zeros*
dtype0

/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_19/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_19/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_19/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_19/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_19/moving_mean

Cbatch_normalization_19/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_19/moving_mean*
_output_shapes
: 
¤
)batch_normalization_19/moving_mean/AssignAssignVariableOp"batch_normalization_19/moving_mean4batch_normalization_19/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_19/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_19/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_19/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_19/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_19/moving_variance

Gbatch_normalization_19/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_19/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_19/moving_variance/AssignAssignVariableOp&batch_normalization_19/moving_variance7batch_normalization_19/moving_variance/Initializer/ones*
dtype0

:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_19/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_19/ReadVariableOp_1ReadVariableOpbatch_normalization_19/beta*
_output_shapes
:(*
dtype0

6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes
:(*
dtype0
¨
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3dense_15/Relu%batch_normalization_19/ReadVariableOp'batch_normalization_19/ReadVariableOp_16batch_normalization_19/FusedBatchNormV3/ReadVariableOp8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ľ
0dense_16/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_16/kernel*
_output_shapes
:*
dtype0*
valueB"      

.dense_16/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_16/kernel*
_output_shapes
: *
dtype0*
valueB
 *   ž

.dense_16/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_16/kernel*
_output_shapes
: *
dtype0*
valueB
 *   >
×
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
*
dtype0
Ú
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
î
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:

ŕ
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:

 
dense_16/kernelVarHandleOp*"
_class
loc:@dense_16/kernel*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_16/kernel
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
t
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*
dtype0
u
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel* 
_output_shapes
:
*
dtype0

dense_16/bias/Initializer/zerosConst* 
_class
loc:@dense_16/bias*
_output_shapes	
:*
dtype0*
valueB*    

dense_16/biasVarHandleOp* 
_class
loc:@dense_16/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
e
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros*
dtype0
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:*
dtype0
s
!dense_16/Tensordot/ReadVariableOpReadVariableOpdense_16/kernel* 
_output_shapes
:
*
dtype0
a
dense_16/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
l
dense_16/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
o
dense_16/Tensordot/ShapeShape'batch_normalization_19/FusedBatchNormV3*
T0*
_output_shapes
:
b
 dense_16/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_16/Tensordot/GatherV2GatherV2dense_16/Tensordot/Shapedense_16/Tensordot/free dense_16/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
d
"dense_16/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Č
dense_16/Tensordot/GatherV2_1GatherV2dense_16/Tensordot/Shapedense_16/Tensordot/axes"dense_16/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
b
dense_16/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
w
dense_16/Tensordot/ProdProddense_16/Tensordot/GatherV2dense_16/Tensordot/Const*
T0*
_output_shapes
: 
d
dense_16/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
dense_16/Tensordot/Prod_1Proddense_16/Tensordot/GatherV2_1dense_16/Tensordot/Const_1*
T0*
_output_shapes
: 
`
dense_16/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ľ
dense_16/Tensordot/concatConcatV2dense_16/Tensordot/freedense_16/Tensordot/axesdense_16/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_16/Tensordot/stackPackdense_16/Tensordot/Proddense_16/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
¨
dense_16/Tensordot/transpose	Transpose'batch_normalization_19/FusedBatchNormV3dense_16/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense_16/Tensordot/ReshapeReshapedense_16/Tensordot/transposedense_16/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_16/Tensordot/MatMulMatMuldense_16/Tensordot/Reshape!dense_16/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
e
dense_16/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
b
 dense_16/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
dense_16/Tensordot/concat_1ConcatV2dense_16/Tensordot/GatherV2dense_16/Tensordot/Const_2 dense_16/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_16/TensordotReshapedense_16/Tensordot/MatMuldense_16/Tensordot/concat_1*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:*
dtype0

dense_16/BiasAddBiasAdddense_16/Tensordotdense_16/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
b
dense_16/ReluReludense_16/BiasAdd*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Ť
-batch_normalization_20/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_20/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_20/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_20/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_20/gamma

=batch_normalization_20/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_20/gamma*
_output_shapes
: 

#batch_normalization_20/gamma/AssignAssignVariableOpbatch_normalization_20/gamma-batch_normalization_20/gamma/Initializer/ones*
dtype0

0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_20/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_20/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_20/betaVarHandleOp*.
_class$
" loc:@batch_normalization_20/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_20/beta

<batch_normalization_20/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_20/beta*
_output_shapes
: 

"batch_normalization_20/beta/AssignAssignVariableOpbatch_normalization_20/beta-batch_normalization_20/beta/Initializer/zeros*
dtype0

/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_20/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_20/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_20/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_20/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_20/moving_mean

Cbatch_normalization_20/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_20/moving_mean*
_output_shapes
: 
¤
)batch_normalization_20/moving_mean/AssignAssignVariableOp"batch_normalization_20/moving_mean4batch_normalization_20/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_20/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_20/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_20/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_20/moving_variance

Gbatch_normalization_20/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_20/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_20/moving_variance/AssignAssignVariableOp&batch_normalization_20/moving_variance7batch_normalization_20/moving_variance/Initializer/ones*
dtype0

:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_20/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_20/ReadVariableOp_1ReadVariableOpbatch_normalization_20/beta*
_output_shapes
:(*
dtype0

6batch_normalization_20/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes
:(*
dtype0
¨
'batch_normalization_20/FusedBatchNormV3FusedBatchNormV3dense_16/Relu%batch_normalization_20/ReadVariableOp'batch_normalization_20/ReadVariableOp_16batch_normalization_20/FusedBatchNormV3/ReadVariableOp8batch_normalization_20/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ľ
0dense_17/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_17/kernel*
_output_shapes
:*
dtype0*
valueB"   @   

.dense_17/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_17/kernel*
_output_shapes
: *
dtype0*
valueB
 *ó5ž

.dense_17/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_17/kernel*
_output_shapes
: *
dtype0*
valueB
 *ó5>
Ö
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	@*
dtype0
Ú
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
: 
í
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	@
ß
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	@

dense_17/kernelVarHandleOp*"
_class
loc:@dense_17/kernel*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_17/kernel
o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
t
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*
dtype0
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	@*
dtype0

dense_17/bias/Initializer/zerosConst* 
_class
loc:@dense_17/bias*
_output_shapes
:@*
dtype0*
valueB@*    

dense_17/biasVarHandleOp* 
_class
loc:@dense_17/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_17/bias
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
e
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros*
dtype0
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:@*
dtype0
r
!dense_17/Tensordot/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	@*
dtype0
a
dense_17/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
l
dense_17/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
o
dense_17/Tensordot/ShapeShape'batch_normalization_20/FusedBatchNormV3*
T0*
_output_shapes
:
b
 dense_17/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_17/Tensordot/GatherV2GatherV2dense_17/Tensordot/Shapedense_17/Tensordot/free dense_17/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
d
"dense_17/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Č
dense_17/Tensordot/GatherV2_1GatherV2dense_17/Tensordot/Shapedense_17/Tensordot/axes"dense_17/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
b
dense_17/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
w
dense_17/Tensordot/ProdProddense_17/Tensordot/GatherV2dense_17/Tensordot/Const*
T0*
_output_shapes
: 
d
dense_17/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
dense_17/Tensordot/Prod_1Proddense_17/Tensordot/GatherV2_1dense_17/Tensordot/Const_1*
T0*
_output_shapes
: 
`
dense_17/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ľ
dense_17/Tensordot/concatConcatV2dense_17/Tensordot/freedense_17/Tensordot/axesdense_17/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_17/Tensordot/stackPackdense_17/Tensordot/Proddense_17/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
¨
dense_17/Tensordot/transpose	Transpose'batch_normalization_20/FusedBatchNormV3dense_17/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense_17/Tensordot/ReshapeReshapedense_17/Tensordot/transposedense_17/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_17/Tensordot/MatMulMatMuldense_17/Tensordot/Reshape!dense_17/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
d
dense_17/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@
b
 dense_17/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
dense_17/Tensordot/concat_1ConcatV2dense_17/Tensordot/GatherV2dense_17/Tensordot/Const_2 dense_17/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_17/TensordotReshapedense_17/Tensordot/MatMuldense_17/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
i
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:@*
dtype0

dense_17/BiasAddBiasAdddense_17/Tensordotdense_17/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
a
dense_17/ReluReludense_17/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
Ť
-batch_normalization_21/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_21/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_21/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_21/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_21/gamma

=batch_normalization_21/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_21/gamma*
_output_shapes
: 

#batch_normalization_21/gamma/AssignAssignVariableOpbatch_normalization_21/gamma-batch_normalization_21/gamma/Initializer/ones*
dtype0

0batch_normalization_21/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_21/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_21/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_21/betaVarHandleOp*.
_class$
" loc:@batch_normalization_21/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_21/beta

<batch_normalization_21/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_21/beta*
_output_shapes
: 

"batch_normalization_21/beta/AssignAssignVariableOpbatch_normalization_21/beta-batch_normalization_21/beta/Initializer/zeros*
dtype0

/batch_normalization_21/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_21/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_21/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_21/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_21/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_21/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_21/moving_mean

Cbatch_normalization_21/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_21/moving_mean*
_output_shapes
: 
¤
)batch_normalization_21/moving_mean/AssignAssignVariableOp"batch_normalization_21/moving_mean4batch_normalization_21/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_21/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_21/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_21/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_21/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_21/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_21/moving_variance

Gbatch_normalization_21/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_21/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_21/moving_variance/AssignAssignVariableOp&batch_normalization_21/moving_variance7batch_normalization_21/moving_variance/Initializer/ones*
dtype0

:batch_normalization_21/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_21/ReadVariableOpReadVariableOpbatch_normalization_21/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_21/ReadVariableOp_1ReadVariableOpbatch_normalization_21/beta*
_output_shapes
:(*
dtype0

6batch_normalization_21/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_21/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_21/moving_variance*
_output_shapes
:(*
dtype0
§
'batch_normalization_21/FusedBatchNormV3FusedBatchNormV3dense_17/Relu%batch_normalization_21/ReadVariableOp'batch_normalization_21/ReadVariableOp_16batch_normalization_21/FusedBatchNormV3/ReadVariableOp8batch_normalization_21/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*K
_output_shapes9
7:(˙˙˙˙˙˙˙˙˙@:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ľ
0dense_18/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_18/kernel*
_output_shapes
:*
dtype0*
valueB"@       

.dense_18/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_18/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ž

.dense_18/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_18/kernel*
_output_shapes
: *
dtype0*
valueB
 *  >
Ő
8dense_18/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_18/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes

:@ *
dtype0
Ú
.dense_18/kernel/Initializer/random_uniform/subSub.dense_18/kernel/Initializer/random_uniform/max.dense_18/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes
: 
ě
.dense_18/kernel/Initializer/random_uniform/mulMul8dense_18/kernel/Initializer/random_uniform/RandomUniform.dense_18/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes

:@ 
Ţ
*dense_18/kernel/Initializer/random_uniformAdd.dense_18/kernel/Initializer/random_uniform/mul.dense_18/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_18/kernel*
_output_shapes

:@ 

dense_18/kernelVarHandleOp*"
_class
loc:@dense_18/kernel*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_18/kernel
o
0dense_18/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/kernel*
_output_shapes
: 
t
dense_18/kernel/AssignAssignVariableOpdense_18/kernel*dense_18/kernel/Initializer/random_uniform*
dtype0
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:@ *
dtype0

dense_18/bias/Initializer/zerosConst* 
_class
loc:@dense_18/bias*
_output_shapes
: *
dtype0*
valueB *    

dense_18/biasVarHandleOp* 
_class
loc:@dense_18/bias*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_18/bias
k
.dense_18/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_18/bias*
_output_shapes
: 
e
dense_18/bias/AssignAssignVariableOpdense_18/biasdense_18/bias/Initializer/zeros*
dtype0
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
: *
dtype0
q
!dense_18/Tensordot/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:@ *
dtype0
a
dense_18/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
l
dense_18/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
o
dense_18/Tensordot/ShapeShape'batch_normalization_21/FusedBatchNormV3*
T0*
_output_shapes
:
b
 dense_18/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_18/Tensordot/GatherV2GatherV2dense_18/Tensordot/Shapedense_18/Tensordot/free dense_18/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
d
"dense_18/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Č
dense_18/Tensordot/GatherV2_1GatherV2dense_18/Tensordot/Shapedense_18/Tensordot/axes"dense_18/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
b
dense_18/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
w
dense_18/Tensordot/ProdProddense_18/Tensordot/GatherV2dense_18/Tensordot/Const*
T0*
_output_shapes
: 
d
dense_18/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
dense_18/Tensordot/Prod_1Proddense_18/Tensordot/GatherV2_1dense_18/Tensordot/Const_1*
T0*
_output_shapes
: 
`
dense_18/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ľ
dense_18/Tensordot/concatConcatV2dense_18/Tensordot/freedense_18/Tensordot/axesdense_18/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_18/Tensordot/stackPackdense_18/Tensordot/Proddense_18/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
§
dense_18/Tensordot/transpose	Transpose'batch_normalization_21/FusedBatchNormV3dense_18/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@

dense_18/Tensordot/ReshapeReshapedense_18/Tensordot/transposedense_18/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_18/Tensordot/MatMulMatMuldense_18/Tensordot/Reshape!dense_18/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
d
dense_18/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
b
 dense_18/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
dense_18/Tensordot/concat_1ConcatV2dense_18/Tensordot/GatherV2dense_18/Tensordot/Const_2 dense_18/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_18/TensordotReshapedense_18/Tensordot/MatMuldense_18/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
i
dense_18/BiasAdd/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
: *
dtype0

dense_18/BiasAddBiasAdddense_18/Tensordotdense_18/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
a
dense_18/ReluReludense_18/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
Ť
-batch_normalization_22/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_22/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_22/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_22/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_22/gamma

=batch_normalization_22/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_22/gamma*
_output_shapes
: 

#batch_normalization_22/gamma/AssignAssignVariableOpbatch_normalization_22/gamma-batch_normalization_22/gamma/Initializer/ones*
dtype0

0batch_normalization_22/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_22/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_22/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_22/betaVarHandleOp*.
_class$
" loc:@batch_normalization_22/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_22/beta

<batch_normalization_22/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_22/beta*
_output_shapes
: 

"batch_normalization_22/beta/AssignAssignVariableOpbatch_normalization_22/beta-batch_normalization_22/beta/Initializer/zeros*
dtype0

/batch_normalization_22/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_22/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_22/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_22/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_22/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_22/moving_mean

Cbatch_normalization_22/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_22/moving_mean*
_output_shapes
: 
¤
)batch_normalization_22/moving_mean/AssignAssignVariableOp"batch_normalization_22/moving_mean4batch_normalization_22/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_22/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_22/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_22/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_22/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_22/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_22/moving_variance

Gbatch_normalization_22/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_22/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_22/moving_variance/AssignAssignVariableOp&batch_normalization_22/moving_variance7batch_normalization_22/moving_variance/Initializer/ones*
dtype0

:batch_normalization_22/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_22/ReadVariableOpReadVariableOpbatch_normalization_22/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_22/ReadVariableOp_1ReadVariableOpbatch_normalization_22/beta*
_output_shapes
:(*
dtype0

6batch_normalization_22/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_22/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_22/moving_variance*
_output_shapes
:(*
dtype0
§
'batch_normalization_22/FusedBatchNormV3FusedBatchNormV3dense_18/Relu%batch_normalization_22/ReadVariableOp'batch_normalization_22/ReadVariableOp_16batch_normalization_22/FusedBatchNormV3/ReadVariableOp8batch_normalization_22/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*K
_output_shapes9
7:(˙˙˙˙˙˙˙˙˙ :(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ľ
0dense_19/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_19/kernel*
_output_shapes
:*
dtype0*
valueB"       

.dense_19/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_19/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľž

.dense_19/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_19/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ>
Ő
8dense_19/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_19/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes

: *
dtype0
Ú
.dense_19/kernel/Initializer/random_uniform/subSub.dense_19/kernel/Initializer/random_uniform/max.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes
: 
ě
.dense_19/kernel/Initializer/random_uniform/mulMul8dense_19/kernel/Initializer/random_uniform/RandomUniform.dense_19/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes

: 
Ţ
*dense_19/kernel/Initializer/random_uniformAdd.dense_19/kernel/Initializer/random_uniform/mul.dense_19/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_19/kernel*
_output_shapes

: 

dense_19/kernelVarHandleOp*"
_class
loc:@dense_19/kernel*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_19/kernel
o
0dense_19/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/kernel*
_output_shapes
: 
t
dense_19/kernel/AssignAssignVariableOpdense_19/kernel*dense_19/kernel/Initializer/random_uniform*
dtype0
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

: *
dtype0

dense_19/bias/Initializer/zerosConst* 
_class
loc:@dense_19/bias*
_output_shapes
:*
dtype0*
valueB*    

dense_19/biasVarHandleOp* 
_class
loc:@dense_19/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
.dense_19/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_19/bias*
_output_shapes
: 
e
dense_19/bias/AssignAssignVariableOpdense_19/biasdense_19/bias/Initializer/zeros*
dtype0
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
q
!dense_19/Tensordot/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

: *
dtype0
a
dense_19/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
l
dense_19/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
o
dense_19/Tensordot/ShapeShape'batch_normalization_22/FusedBatchNormV3*
T0*
_output_shapes
:
b
 dense_19/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_19/Tensordot/GatherV2GatherV2dense_19/Tensordot/Shapedense_19/Tensordot/free dense_19/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
d
"dense_19/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Č
dense_19/Tensordot/GatherV2_1GatherV2dense_19/Tensordot/Shapedense_19/Tensordot/axes"dense_19/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
b
dense_19/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
w
dense_19/Tensordot/ProdProddense_19/Tensordot/GatherV2dense_19/Tensordot/Const*
T0*
_output_shapes
: 
d
dense_19/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
}
dense_19/Tensordot/Prod_1Proddense_19/Tensordot/GatherV2_1dense_19/Tensordot/Const_1*
T0*
_output_shapes
: 
`
dense_19/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ľ
dense_19/Tensordot/concatConcatV2dense_19/Tensordot/freedense_19/Tensordot/axesdense_19/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_19/Tensordot/stackPackdense_19/Tensordot/Proddense_19/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
§
dense_19/Tensordot/transpose	Transpose'batch_normalization_22/FusedBatchNormV3dense_19/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 

dense_19/Tensordot/ReshapeReshapedense_19/Tensordot/transposedense_19/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_19/Tensordot/MatMulMatMuldense_19/Tensordot/Reshape!dense_19/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
dense_19/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
b
 dense_19/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
°
dense_19/Tensordot/concat_1ConcatV2dense_19/Tensordot/GatherV2dense_19/Tensordot/Const_2 dense_19/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_19/TensordotReshapedense_19/Tensordot/MatMuldense_19/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
i
dense_19/BiasAdd/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0

dense_19/BiasAddBiasAdddense_19/Tensordotdense_19/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
a
dense_19/ReluReludense_19/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Ť
-batch_normalization_23/gamma/Initializer/onesConst*/
_class%
#!loc:@batch_normalization_23/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
Á
batch_normalization_23/gammaVarHandleOp*/
_class%
#!loc:@batch_normalization_23/gamma*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_23/gamma

=batch_normalization_23/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_23/gamma*
_output_shapes
: 

#batch_normalization_23/gamma/AssignAssignVariableOpbatch_normalization_23/gamma-batch_normalization_23/gamma/Initializer/ones*
dtype0

0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes
:(*
dtype0
Ş
-batch_normalization_23/beta/Initializer/zerosConst*.
_class$
" loc:@batch_normalization_23/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ž
batch_normalization_23/betaVarHandleOp*.
_class$
" loc:@batch_normalization_23/beta*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_23/beta

<batch_normalization_23/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_23/beta*
_output_shapes
: 

"batch_normalization_23/beta/AssignAssignVariableOpbatch_normalization_23/beta-batch_normalization_23/beta/Initializer/zeros*
dtype0

/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes
:(*
dtype0
¸
4batch_normalization_23/moving_mean/Initializer/zerosConst*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ó
"batch_normalization_23/moving_meanVarHandleOp*5
_class+
)'loc:@batch_normalization_23/moving_mean*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_23/moving_mean

Cbatch_normalization_23/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp"batch_normalization_23/moving_mean*
_output_shapes
: 
¤
)batch_normalization_23/moving_mean/AssignAssignVariableOp"batch_normalization_23/moving_mean4batch_normalization_23/moving_mean/Initializer/zeros*
dtype0

6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
:(*
dtype0
ż
7batch_normalization_23/moving_variance/Initializer/onesConst*9
_class/
-+loc:@batch_normalization_23/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
ß
&batch_normalization_23/moving_varianceVarHandleOp*9
_class/
-+loc:@batch_normalization_23/moving_variance*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_23/moving_variance

Gbatch_normalization_23/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp&batch_normalization_23/moving_variance*
_output_shapes
: 
Ż
-batch_normalization_23/moving_variance/AssignAssignVariableOp&batch_normalization_23/moving_variance7batch_normalization_23/moving_variance/Initializer/ones*
dtype0

:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:(*
dtype0
~
%batch_normalization_23/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes
:(*
dtype0

'batch_normalization_23/ReadVariableOp_1ReadVariableOpbatch_normalization_23/beta*
_output_shapes
:(*
dtype0

6batch_normalization_23/FusedBatchNormV3/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes
:(*
dtype0

8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes
:(*
dtype0
§
'batch_normalization_23/FusedBatchNormV3FusedBatchNormV3dense_19/Relu%batch_normalization_23/ReadVariableOp'batch_normalization_23/ReadVariableOp_16batch_normalization_23/FusedBatchNormV3/ReadVariableOp8batch_normalization_23/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*K
_output_shapes9
7:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ť
3predictions/kernel/Initializer/random_uniform/shapeConst*%
_class
loc:@predictions/kernel*
_output_shapes
:*
dtype0*
valueB"      

1predictions/kernel/Initializer/random_uniform/minConst*%
_class
loc:@predictions/kernel*
_output_shapes
: *
dtype0*
valueB
 *0ż

1predictions/kernel/Initializer/random_uniform/maxConst*%
_class
loc:@predictions/kernel*
_output_shapes
: *
dtype0*
valueB
 *0?
Ţ
;predictions/kernel/Initializer/random_uniform/RandomUniformRandomUniform3predictions/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@predictions/kernel*
_output_shapes

:*
dtype0
ć
1predictions/kernel/Initializer/random_uniform/subSub1predictions/kernel/Initializer/random_uniform/max1predictions/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@predictions/kernel*
_output_shapes
: 
ř
1predictions/kernel/Initializer/random_uniform/mulMul;predictions/kernel/Initializer/random_uniform/RandomUniform1predictions/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@predictions/kernel*
_output_shapes

:
ę
-predictions/kernel/Initializer/random_uniformAdd1predictions/kernel/Initializer/random_uniform/mul1predictions/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@predictions/kernel*
_output_shapes

:
§
predictions/kernelVarHandleOp*%
_class
loc:@predictions/kernel*
_output_shapes
: *
dtype0*
shape
:*#
shared_namepredictions/kernel
u
3predictions/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppredictions/kernel*
_output_shapes
: 
}
predictions/kernel/AssignAssignVariableOppredictions/kernel-predictions/kernel/Initializer/random_uniform*
dtype0
y
&predictions/kernel/Read/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes

:*
dtype0

"predictions/bias/Initializer/zerosConst*#
_class
loc:@predictions/bias*
_output_shapes
:*
dtype0*
valueB*    

predictions/biasVarHandleOp*#
_class
loc:@predictions/bias*
_output_shapes
: *
dtype0*
shape:*!
shared_namepredictions/bias
q
1predictions/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppredictions/bias*
_output_shapes
: 
n
predictions/bias/AssignAssignVariableOppredictions/bias"predictions/bias/Initializer/zeros*
dtype0
q
$predictions/bias/Read/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0
w
$predictions/Tensordot/ReadVariableOpReadVariableOppredictions/kernel*
_output_shapes

:*
dtype0
d
predictions/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
o
predictions/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
r
predictions/Tensordot/ShapeShape'batch_normalization_23/FusedBatchNormV3*
T0*
_output_shapes
:
e
#predictions/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Đ
predictions/Tensordot/GatherV2GatherV2predictions/Tensordot/Shapepredictions/Tensordot/free#predictions/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
g
%predictions/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ô
 predictions/Tensordot/GatherV2_1GatherV2predictions/Tensordot/Shapepredictions/Tensordot/axes%predictions/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
e
predictions/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

predictions/Tensordot/ProdProdpredictions/Tensordot/GatherV2predictions/Tensordot/Const*
T0*
_output_shapes
: 
g
predictions/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 

predictions/Tensordot/Prod_1Prod predictions/Tensordot/GatherV2_1predictions/Tensordot/Const_1*
T0*
_output_shapes
: 
c
!predictions/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ą
predictions/Tensordot/concatConcatV2predictions/Tensordot/freepredictions/Tensordot/axes!predictions/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

predictions/Tensordot/stackPackpredictions/Tensordot/Prodpredictions/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
­
predictions/Tensordot/transpose	Transpose'batch_normalization_23/FusedBatchNormV3predictions/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Ą
predictions/Tensordot/ReshapeReshapepredictions/Tensordot/transposepredictions/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

predictions/Tensordot/MatMulMatMulpredictions/Tensordot/Reshape$predictions/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
predictions/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
e
#predictions/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ź
predictions/Tensordot/concat_1ConcatV2predictions/Tensordot/GatherV2predictions/Tensordot/Const_2#predictions/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

predictions/TensordotReshapepredictions/Tensordot/MatMulpredictions/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
o
"predictions/BiasAdd/ReadVariableOpReadVariableOppredictions/bias*
_output_shapes
:*
dtype0

predictions/BiasAddBiasAddpredictions/Tensordot"predictions/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
ł)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*î(
valueä(Bá( BÚ(

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
estimator_global_step


kernel
bias
E
axis
	gamma
beta
moving_mean
moving_variance


kernel
bias
E
axis
	gamma
beta
moving_mean
moving_variance


kernel
bias
E
axis
	 gamma
!beta
"moving_mean
#moving_variance


$kernel
%bias
E
&axis
	'gamma
(beta
)moving_mean
*moving_variance


+kernel
,bias
E
-axis
	.gamma
/beta
0moving_mean
1moving_variance


2kernel
3bias
E
4axis
	5gamma
6beta
7moving_mean
8moving_variance


9kernel
:bias
QO
VARIABLE_VALUEglobal_step0estimator_global_step/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUE
raw/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEraw/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_20/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_20/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_20/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_20/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_21/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_21/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_21/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_21/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_22/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_22/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_22/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_22/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEdense_19/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_19/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
hf
VARIABLE_VALUEbatch_normalization_23/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_23/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_23/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_23/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEpredictions/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEpredictions/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ż
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*Ó
valueÉBĆ'B0estimator_global_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
Ŕ
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Č
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOpraw/bias/Read/ReadVariableOpraw/kernel/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp0batch_normalization_20/gamma/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp/batch_normalization_21/beta/Read/ReadVariableOp0batch_normalization_21/gamma/Read/ReadVariableOp6batch_normalization_21/moving_mean/Read/ReadVariableOp:batch_normalization_21/moving_variance/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp/batch_normalization_22/beta/Read/ReadVariableOp0batch_normalization_22/gamma/Read/ReadVariableOp6batch_normalization_22/moving_mean/Read/ReadVariableOp:batch_normalization_22/moving_variance/Read/ReadVariableOp"/device:CPU:0*5
dtypes+
)2'	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH
v
save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtypes
2
¨
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
Ô
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ľ
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
˛
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*Ó
valueÉBĆ'B0estimator_global_step/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
Ă
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ŕ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*˛
_output_shapes
:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	
N
save/Identity_1Identitysave/RestoreV2*
T0	*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpglobal_stepsave/Identity_1*
dtype0	
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
S
save/AssignVariableOp_1AssignVariableOpraw/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
raw/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
f
save/AssignVariableOp_3AssignVariableOpbatch_normalization_18/betasave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
g
save/AssignVariableOp_4AssignVariableOpbatch_normalization_18/gammasave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
m
save/AssignVariableOp_5AssignVariableOp"batch_normalization_18/moving_meansave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
q
save/AssignVariableOp_6AssignVariableOp&batch_normalization_18/moving_variancesave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
X
save/AssignVariableOp_7AssignVariableOpdense_19/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_8AssignVariableOpdense_19/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
g
save/AssignVariableOp_9AssignVariableOpbatch_normalization_23/betasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
i
save/AssignVariableOp_10AssignVariableOpbatch_normalization_23/gammasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
o
save/AssignVariableOp_11AssignVariableOp"batch_normalization_23/moving_meansave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
s
save/AssignVariableOp_12AssignVariableOp&batch_normalization_23/moving_variancesave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
]
save/AssignVariableOp_13AssignVariableOppredictions/biassave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
_
save/AssignVariableOp_14AssignVariableOppredictions/kernelsave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Z
save/AssignVariableOp_15AssignVariableOpdense_15/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
\
save/AssignVariableOp_16AssignVariableOpdense_15/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
h
save/AssignVariableOp_17AssignVariableOpbatch_normalization_19/betasave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
i
save/AssignVariableOp_18AssignVariableOpbatch_normalization_19/gammasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
o
save/AssignVariableOp_19AssignVariableOp"batch_normalization_19/moving_meansave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
s
save/AssignVariableOp_20AssignVariableOp&batch_normalization_19/moving_variancesave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
Z
save/AssignVariableOp_21AssignVariableOpdense_16/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
\
save/AssignVariableOp_22AssignVariableOpdense_16/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
h
save/AssignVariableOp_23AssignVariableOpbatch_normalization_20/betasave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
i
save/AssignVariableOp_24AssignVariableOpbatch_normalization_20/gammasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
o
save/AssignVariableOp_25AssignVariableOp"batch_normalization_20/moving_meansave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
s
save/AssignVariableOp_26AssignVariableOp&batch_normalization_20/moving_variancesave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
Z
save/AssignVariableOp_27AssignVariableOpdense_17/biassave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
\
save/AssignVariableOp_28AssignVariableOpdense_17/kernelsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
h
save/AssignVariableOp_29AssignVariableOpbatch_normalization_21/betasave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
i
save/AssignVariableOp_30AssignVariableOpbatch_normalization_21/gammasave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
o
save/AssignVariableOp_31AssignVariableOp"batch_normalization_21/moving_meansave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
s
save/AssignVariableOp_32AssignVariableOp&batch_normalization_21/moving_variancesave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
Z
save/AssignVariableOp_33AssignVariableOpdense_18/biassave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
\
save/AssignVariableOp_34AssignVariableOpdense_18/kernelsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
h
save/AssignVariableOp_35AssignVariableOpbatch_normalization_22/betasave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
i
save/AssignVariableOp_36AssignVariableOpbatch_normalization_22/gammasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
o
save/AssignVariableOp_37AssignVariableOp"batch_normalization_22/moving_meansave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
s
save/AssignVariableOp_38AssignVariableOp&batch_normalization_22/moving_variancesave/Identity_39*
dtype0
Ť
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9

save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH
y
!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 
Ľ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
 
	save/NoOpNoOp"/device:CPU:0
7
save/restore_shard_1NoOp
^save/NoOp"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1
ľ)
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*î(
valueä(Bá( BÚ(

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
layer_with_weights-6
layer-6
layer_with_weights-7
layer-7
	layer_with_weights-8
	layer-8

layer_with_weights-9

layer-9
layer_with_weights-10
layer-10
layer_with_weights-11
layer-11
layer_with_weights-12
layer-12
estimator_global_step


kernel
bias
E
axis
	gamma
beta
moving_mean
moving_variance


kernel
bias
E
axis
	gamma
beta
moving_mean
moving_variance


kernel
bias
E
axis
	 gamma
!beta
"moving_mean
#moving_variance


$kernel
%bias
E
&axis
	'gamma
(beta
)moving_mean
*moving_variance


+kernel
,bias
E
-axis
	.gamma
/beta
0moving_mean
1moving_variance


2kernel
3bias
E
4axis
	5gamma
6beta
7moving_mean
8moving_variance


9kernel
:bias
QO
VARIABLE_VALUEglobal_step0estimator_global_step/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUE
raw/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEraw/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_20/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_20/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_20/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_20/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_17/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_21/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_21/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_21/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_21/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_18/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_22/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_22/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_22/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_22/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEdense_19/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_19/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
hf
VARIABLE_VALUEbatch_normalization_23/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_23/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_23/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_23/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEpredictions/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEpredictions/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables"ą<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"¨
trainable_variables
p
raw/kernel:0raw/kernel/Assign raw/kernel/Read/ReadVariableOp:0(2'raw/kernel/Initializer/random_uniform:08
_

raw/bias:0raw/bias/Assignraw/bias/Read/ReadVariableOp:0(2raw/bias/Initializer/zeros:08
Ž
batch_normalization_18/gamma:0#batch_normalization_18/gamma/Assign2batch_normalization_18/gamma/Read/ReadVariableOp:0(2/batch_normalization_18/gamma/Initializer/ones:08
Ť
batch_normalization_18/beta:0"batch_normalization_18/beta/Assign1batch_normalization_18/beta/Read/ReadVariableOp:0(2/batch_normalization_18/beta/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08
Ž
batch_normalization_19/gamma:0#batch_normalization_19/gamma/Assign2batch_normalization_19/gamma/Read/ReadVariableOp:0(2/batch_normalization_19/gamma/Initializer/ones:08
Ť
batch_normalization_19/beta:0"batch_normalization_19/beta/Assign1batch_normalization_19/beta/Read/ReadVariableOp:0(2/batch_normalization_19/beta/Initializer/zeros:08

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Ž
batch_normalization_20/gamma:0#batch_normalization_20/gamma/Assign2batch_normalization_20/gamma/Read/ReadVariableOp:0(2/batch_normalization_20/gamma/Initializer/ones:08
Ť
batch_normalization_20/beta:0"batch_normalization_20/beta/Assign1batch_normalization_20/beta/Read/ReadVariableOp:0(2/batch_normalization_20/beta/Initializer/zeros:08

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Ž
batch_normalization_21/gamma:0#batch_normalization_21/gamma/Assign2batch_normalization_21/gamma/Read/ReadVariableOp:0(2/batch_normalization_21/gamma/Initializer/ones:08
Ť
batch_normalization_21/beta:0"batch_normalization_21/beta/Assign1batch_normalization_21/beta/Read/ReadVariableOp:0(2/batch_normalization_21/beta/Initializer/zeros:08

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08
Ž
batch_normalization_22/gamma:0#batch_normalization_22/gamma/Assign2batch_normalization_22/gamma/Read/ReadVariableOp:0(2/batch_normalization_22/gamma/Initializer/ones:08
Ť
batch_normalization_22/beta:0"batch_normalization_22/beta/Assign1batch_normalization_22/beta/Read/ReadVariableOp:0(2/batch_normalization_22/beta/Initializer/zeros:08

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08
Ž
batch_normalization_23/gamma:0#batch_normalization_23/gamma/Assign2batch_normalization_23/gamma/Read/ReadVariableOp:0(2/batch_normalization_23/gamma/Initializer/ones:08
Ť
batch_normalization_23/beta:0"batch_normalization_23/beta/Assign1batch_normalization_23/beta/Read/ReadVariableOp:0(2/batch_normalization_23/beta/Initializer/zeros:08

predictions/kernel:0predictions/kernel/Assign(predictions/kernel/Read/ReadVariableOp:0(2/predictions/kernel/Initializer/random_uniform:08

predictions/bias:0predictions/bias/Assign&predictions/bias/Read/ReadVariableOp:0(2$predictions/bias/Initializer/zeros:08"ő2
	variablesç2ä2
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
p
raw/kernel:0raw/kernel/Assign raw/kernel/Read/ReadVariableOp:0(2'raw/kernel/Initializer/random_uniform:08
_

raw/bias:0raw/bias/Assignraw/bias/Read/ReadVariableOp:0(2raw/bias/Initializer/zeros:08
Ž
batch_normalization_18/gamma:0#batch_normalization_18/gamma/Assign2batch_normalization_18/gamma/Read/ReadVariableOp:0(2/batch_normalization_18/gamma/Initializer/ones:08
Ť
batch_normalization_18/beta:0"batch_normalization_18/beta/Assign1batch_normalization_18/beta/Read/ReadVariableOp:0(2/batch_normalization_18/beta/Initializer/zeros:08
É
$batch_normalization_18/moving_mean:0)batch_normalization_18/moving_mean/Assign8batch_normalization_18/moving_mean/Read/ReadVariableOp:0(26batch_normalization_18/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_18/moving_variance:0-batch_normalization_18/moving_variance/Assign<batch_normalization_18/moving_variance/Read/ReadVariableOp:0(29batch_normalization_18/moving_variance/Initializer/ones:0@H

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08
Ž
batch_normalization_19/gamma:0#batch_normalization_19/gamma/Assign2batch_normalization_19/gamma/Read/ReadVariableOp:0(2/batch_normalization_19/gamma/Initializer/ones:08
Ť
batch_normalization_19/beta:0"batch_normalization_19/beta/Assign1batch_normalization_19/beta/Read/ReadVariableOp:0(2/batch_normalization_19/beta/Initializer/zeros:08
É
$batch_normalization_19/moving_mean:0)batch_normalization_19/moving_mean/Assign8batch_normalization_19/moving_mean/Read/ReadVariableOp:0(26batch_normalization_19/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_19/moving_variance:0-batch_normalization_19/moving_variance/Assign<batch_normalization_19/moving_variance/Read/ReadVariableOp:0(29batch_normalization_19/moving_variance/Initializer/ones:0@H

dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Ž
batch_normalization_20/gamma:0#batch_normalization_20/gamma/Assign2batch_normalization_20/gamma/Read/ReadVariableOp:0(2/batch_normalization_20/gamma/Initializer/ones:08
Ť
batch_normalization_20/beta:0"batch_normalization_20/beta/Assign1batch_normalization_20/beta/Read/ReadVariableOp:0(2/batch_normalization_20/beta/Initializer/zeros:08
É
$batch_normalization_20/moving_mean:0)batch_normalization_20/moving_mean/Assign8batch_normalization_20/moving_mean/Read/ReadVariableOp:0(26batch_normalization_20/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_20/moving_variance:0-batch_normalization_20/moving_variance/Assign<batch_normalization_20/moving_variance/Read/ReadVariableOp:0(29batch_normalization_20/moving_variance/Initializer/ones:0@H

dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Ž
batch_normalization_21/gamma:0#batch_normalization_21/gamma/Assign2batch_normalization_21/gamma/Read/ReadVariableOp:0(2/batch_normalization_21/gamma/Initializer/ones:08
Ť
batch_normalization_21/beta:0"batch_normalization_21/beta/Assign1batch_normalization_21/beta/Read/ReadVariableOp:0(2/batch_normalization_21/beta/Initializer/zeros:08
É
$batch_normalization_21/moving_mean:0)batch_normalization_21/moving_mean/Assign8batch_normalization_21/moving_mean/Read/ReadVariableOp:0(26batch_normalization_21/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_21/moving_variance:0-batch_normalization_21/moving_variance/Assign<batch_normalization_21/moving_variance/Read/ReadVariableOp:0(29batch_normalization_21/moving_variance/Initializer/ones:0@H

dense_18/kernel:0dense_18/kernel/Assign%dense_18/kernel/Read/ReadVariableOp:0(2,dense_18/kernel/Initializer/random_uniform:08
s
dense_18/bias:0dense_18/bias/Assign#dense_18/bias/Read/ReadVariableOp:0(2!dense_18/bias/Initializer/zeros:08
Ž
batch_normalization_22/gamma:0#batch_normalization_22/gamma/Assign2batch_normalization_22/gamma/Read/ReadVariableOp:0(2/batch_normalization_22/gamma/Initializer/ones:08
Ť
batch_normalization_22/beta:0"batch_normalization_22/beta/Assign1batch_normalization_22/beta/Read/ReadVariableOp:0(2/batch_normalization_22/beta/Initializer/zeros:08
É
$batch_normalization_22/moving_mean:0)batch_normalization_22/moving_mean/Assign8batch_normalization_22/moving_mean/Read/ReadVariableOp:0(26batch_normalization_22/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_22/moving_variance:0-batch_normalization_22/moving_variance/Assign<batch_normalization_22/moving_variance/Read/ReadVariableOp:0(29batch_normalization_22/moving_variance/Initializer/ones:0@H

dense_19/kernel:0dense_19/kernel/Assign%dense_19/kernel/Read/ReadVariableOp:0(2,dense_19/kernel/Initializer/random_uniform:08
s
dense_19/bias:0dense_19/bias/Assign#dense_19/bias/Read/ReadVariableOp:0(2!dense_19/bias/Initializer/zeros:08
Ž
batch_normalization_23/gamma:0#batch_normalization_23/gamma/Assign2batch_normalization_23/gamma/Read/ReadVariableOp:0(2/batch_normalization_23/gamma/Initializer/ones:08
Ť
batch_normalization_23/beta:0"batch_normalization_23/beta/Assign1batch_normalization_23/beta/Read/ReadVariableOp:0(2/batch_normalization_23/beta/Initializer/zeros:08
É
$batch_normalization_23/moving_mean:0)batch_normalization_23/moving_mean/Assign8batch_normalization_23/moving_mean/Read/ReadVariableOp:0(26batch_normalization_23/moving_mean/Initializer/zeros:0@H
Ř
(batch_normalization_23/moving_variance:0-batch_normalization_23/moving_variance/Assign<batch_normalization_23/moving_variance/Read/ReadVariableOp:0(29batch_normalization_23/moving_variance/Initializer/ones:0@H

predictions/kernel:0predictions/kernel/Assign(predictions/kernel/Read/ReadVariableOp:0(2/predictions/kernel/Initializer/random_uniform:08

predictions/bias:0predictions/bias/Assign&predictions/bias/Read/ReadVariableOp:0(2$predictions/bias/Initializer/zeros:08*Ź
serving_default
5
	raw_input(
Placeholder:0(˙˙˙˙˙˙˙˙˙C
predictions4
predictions/BiasAdd:0(˙˙˙˙˙˙˙˙˙tensorflow/serving/predict