ľŐ
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
"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8ęę
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
Ľ
*batch_normalization/gamma/Initializer/onesConst*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
¸
batch_normalization/gammaVarHandleOp*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: *
dtype0*
shape:(**
shared_namebatch_normalization/gamma

:batch_normalization/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/gamma*
_output_shapes
: 

 batch_normalization/gamma/AssignAssignVariableOpbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
dtype0

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:(*
dtype0
¤
*batch_normalization/beta/Initializer/zerosConst*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ľ
batch_normalization/betaVarHandleOp*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: *
dtype0*
shape:(*)
shared_namebatch_normalization/beta

9batch_normalization/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/beta*
_output_shapes
: 

batch_normalization/beta/AssignAssignVariableOpbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
dtype0

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:(*
dtype0
˛
1batch_normalization/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Ę
batch_normalization/moving_meanVarHandleOp*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: *
dtype0*
shape:(*0
shared_name!batch_normalization/moving_mean

@batch_normalization/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization/moving_mean*
_output_shapes
: 

&batch_normalization/moving_mean/AssignAssignVariableOpbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
dtype0

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:(*
dtype0
š
4batch_normalization/moving_variance/Initializer/onesConst*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ö
#batch_normalization/moving_varianceVarHandleOp*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#batch_normalization/moving_variance

Dbatch_normalization/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#batch_normalization/moving_variance*
_output_shapes
: 
Ś
*batch_normalization/moving_variance/AssignAssignVariableOp#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
dtype0

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:(*
dtype0
x
"batch_normalization/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:(*
dtype0
y
$batch_normalization/ReadVariableOp_1ReadVariableOpbatch_normalization/beta*
_output_shapes
:(*
dtype0

3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:(*
dtype0

5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:(*
dtype0

$batch_normalization/FusedBatchNormV3FusedBatchNormV3raw/Relu"batch_normalization/ReadVariableOp$batch_normalization/ReadVariableOp_13batch_normalization/FusedBatchNormV3/ReadVariableOp5batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"      

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ˝

+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ=
Î
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
*
dtype0
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:


dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0

dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes	
:*
dtype0*
valueB*    


dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
m
dense/Tensordot/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0
^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
i
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
i
dense/Tensordot/ShapeShape$batch_normalization/FusedBatchNormV3*
T0*
_output_shapes
:
_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
¸
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shapedense/Tensordot/freedense/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ź
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shapedense/Tensordot/axesdense/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
n
dense/Tensordot/ProdProddense/Tensordot/GatherV2dense/Tensordot/Const*
T0*
_output_shapes
: 
a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
t
dense/Tensordot/Prod_1Proddense/Tensordot/GatherV2_1dense/Tensordot/Const_1*
T0*
_output_shapes
: 
]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

dense/Tensordot/concatConcatV2dense/Tensordot/freedense/Tensordot/axesdense/Tensordot/concat/axis*
N*
T0*
_output_shapes
:
y
dense/Tensordot/stackPackdense/Tensordot/Proddense/Tensordot/Prod_1*
N*
T0*
_output_shapes
:

dense/Tensordot/transpose	Transpose$batch_normalization/FusedBatchNormV3dense/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense/Tensordot/ReshapeReshapedense/Tensordot/transposedense/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense/Tensordot/MatMulMatMuldense/Tensordot/Reshapedense/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
¤
dense/Tensordot/concat_1ConcatV2dense/Tensordot/GatherV2dense/Tensordot/Const_2dense/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense/TensordotReshapedense/Tensordot/MatMuldense/Tensordot/concat_1*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
d
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0

dense/BiasAddBiasAdddense/Tensordotdense/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
\

dense/ReluReludense/BiasAdd*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Š
,batch_normalization_1/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
ž
batch_normalization_1/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_1/gamma

<batch_normalization_1/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/gamma*
_output_shapes
: 

"batch_normalization_1/gamma/AssignAssignVariableOpbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
dtype0

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:(*
dtype0
¨
,batch_normalization_1/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ť
batch_normalization_1/betaVarHandleOp*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_1/beta

;batch_normalization_1/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_1/beta*
_output_shapes
: 

!batch_normalization_1/beta/AssignAssignVariableOpbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
dtype0

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:(*
dtype0
ś
3batch_normalization_1/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Đ
!batch_normalization_1/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_1/moving_mean

Bbatch_normalization_1/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_1/moving_mean*
_output_shapes
: 
Ą
(batch_normalization_1/moving_mean/AssignAssignVariableOp!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:(*
dtype0
˝
6batch_normalization_1/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ü
%batch_normalization_1/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_1/moving_variance

Fbatch_normalization_1/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_1/moving_variance*
_output_shapes
: 
Ź
,batch_normalization_1/moving_variance/AssignAssignVariableOp%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
dtype0

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:(*
dtype0
|
$batch_normalization_1/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:(*
dtype0
}
&batch_normalization_1/ReadVariableOp_1ReadVariableOpbatch_normalization_1/beta*
_output_shapes
:(*
dtype0

5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:(*
dtype0

7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:(*
dtype0
 
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3
dense/Relu$batch_normalization_1/ReadVariableOp&batch_normalization_1/ReadVariableOp_15batch_normalization_1/FusedBatchNormV3/ReadVariableOp7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
_output_shapes
:*
dtype0*
valueB"      

-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *   ž

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *   >
Ô
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
*
dtype0
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/kernelVarHandleOp*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
q
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*
dtype0
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0

dense_1/bias/Initializer/zerosConst*
_class
loc:@dense_1/bias*
_output_shapes	
:*
dtype0*
valueB*    

dense_1/biasVarHandleOp*
_class
loc:@dense_1/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
b
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
dtype0
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0
q
 dense_1/Tensordot/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0
`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
k
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
m
dense_1/Tensordot/ShapeShape&batch_normalization_1/FusedBatchNormV3*
T0*
_output_shapes
:
a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ŕ
dense_1/Tensordot/GatherV2GatherV2dense_1/Tensordot/Shapedense_1/Tensordot/freedense_1/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_1/Tensordot/GatherV2_1GatherV2dense_1/Tensordot/Shapedense_1/Tensordot/axes!dense_1/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
t
dense_1/Tensordot/ProdProddense_1/Tensordot/GatherV2dense_1/Tensordot/Const*
T0*
_output_shapes
: 
c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
z
dense_1/Tensordot/Prod_1Proddense_1/Tensordot/GatherV2_1dense_1/Tensordot/Const_1*
T0*
_output_shapes
: 
_
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ą
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/freedense_1/Tensordot/axesdense_1/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_1/Tensordot/stackPackdense_1/Tensordot/Proddense_1/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
Ľ
dense_1/Tensordot/transpose	Transpose&batch_normalization_1/FusedBatchNormV3dense_1/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transposedense_1/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_1/Tensordot/MatMulMatMuldense_1/Tensordot/Reshape dense_1/Tensordot/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ź
dense_1/Tensordot/concat_1ConcatV2dense_1/Tensordot/GatherV2dense_1/Tensordot/Const_2dense_1/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_1/TensordotReshapedense_1/Tensordot/MatMuldense_1/Tensordot/concat_1*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
h
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0

dense_1/BiasAddBiasAdddense_1/Tensordotdense_1/BiasAdd/ReadVariableOp*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
`
dense_1/ReluReludense_1/BiasAdd*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Š
,batch_normalization_2/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
ž
batch_normalization_2/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_2/gamma

<batch_normalization_2/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/gamma*
_output_shapes
: 

"batch_normalization_2/gamma/AssignAssignVariableOpbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
dtype0

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:(*
dtype0
¨
,batch_normalization_2/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ť
batch_normalization_2/betaVarHandleOp*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_2/beta

;batch_normalization_2/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_2/beta*
_output_shapes
: 

!batch_normalization_2/beta/AssignAssignVariableOpbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
dtype0

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:(*
dtype0
ś
3batch_normalization_2/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Đ
!batch_normalization_2/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_2/moving_mean

Bbatch_normalization_2/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_2/moving_mean*
_output_shapes
: 
Ą
(batch_normalization_2/moving_mean/AssignAssignVariableOp!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:(*
dtype0
˝
6batch_normalization_2/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ü
%batch_normalization_2/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_2/moving_variance

Fbatch_normalization_2/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_2/moving_variance*
_output_shapes
: 
Ź
,batch_normalization_2/moving_variance/AssignAssignVariableOp%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
dtype0

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:(*
dtype0
|
$batch_normalization_2/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:(*
dtype0
}
&batch_normalization_2/ReadVariableOp_1ReadVariableOpbatch_normalization_2/beta*
_output_shapes
:(*
dtype0

5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:(*
dtype0

7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:(*
dtype0
˘
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dense_1/Relu$batch_normalization_2/ReadVariableOp&batch_normalization_2/ReadVariableOp_15batch_normalization_2/FusedBatchNormV3/ReadVariableOp7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*L
_output_shapes:
8:(˙˙˙˙˙˙˙˙˙:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
_output_shapes
:*
dtype0*
valueB"   @   

-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *ó5ž

-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
_output_shapes
: *
dtype0*
valueB
 *ó5>
Ó
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	@*
dtype0
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	@
Ű
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	@

dense_2/kernelVarHandleOp*!
_class
loc:@dense_2/kernel*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 
q
dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*
dtype0
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
dtype0

dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
_output_shapes
:@*
dtype0*
valueB@*    

dense_2/biasVarHandleOp*
_class
loc:@dense_2/bias*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 
b
dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
dtype0
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
p
 dense_2/Tensordot/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@*
dtype0
`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
k
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
m
dense_2/Tensordot/ShapeShape&batch_normalization_2/FusedBatchNormV3*
T0*
_output_shapes
:
a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ŕ
dense_2/Tensordot/GatherV2GatherV2dense_2/Tensordot/Shapedense_2/Tensordot/freedense_2/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_2/Tensordot/GatherV2_1GatherV2dense_2/Tensordot/Shapedense_2/Tensordot/axes!dense_2/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
t
dense_2/Tensordot/ProdProddense_2/Tensordot/GatherV2dense_2/Tensordot/Const*
T0*
_output_shapes
: 
c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
z
dense_2/Tensordot/Prod_1Proddense_2/Tensordot/GatherV2_1dense_2/Tensordot/Const_1*
T0*
_output_shapes
: 
_
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ą
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/freedense_2/Tensordot/axesdense_2/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_2/Tensordot/stackPackdense_2/Tensordot/Proddense_2/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
Ľ
dense_2/Tensordot/transpose	Transpose&batch_normalization_2/FusedBatchNormV3dense_2/Tensordot/concat*
T0*0
_output_shapes
:(˙˙˙˙˙˙˙˙˙

dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transposedense_2/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_2/Tensordot/MatMulMatMuldense_2/Tensordot/Reshape dense_2/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@
a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ź
dense_2/Tensordot/concat_1ConcatV2dense_2/Tensordot/GatherV2dense_2/Tensordot/Const_2dense_2/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_2/TensordotReshapedense_2/Tensordot/MatMuldense_2/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
g
dense_2/BiasAdd/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0

dense_2/BiasAddBiasAdddense_2/Tensordotdense_2/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
_
dense_2/ReluReludense_2/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@
Š
,batch_normalization_3/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
ž
batch_normalization_3/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_3/gamma*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_3/gamma

<batch_normalization_3/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/gamma*
_output_shapes
: 

"batch_normalization_3/gamma/AssignAssignVariableOpbatch_normalization_3/gamma,batch_normalization_3/gamma/Initializer/ones*
dtype0

/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:(*
dtype0
¨
,batch_normalization_3/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ť
batch_normalization_3/betaVarHandleOp*-
_class#
!loc:@batch_normalization_3/beta*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_3/beta

;batch_normalization_3/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_3/beta*
_output_shapes
: 

!batch_normalization_3/beta/AssignAssignVariableOpbatch_normalization_3/beta,batch_normalization_3/beta/Initializer/zeros*
dtype0

.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:(*
dtype0
ś
3batch_normalization_3/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Đ
!batch_normalization_3/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_3/moving_mean*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_3/moving_mean

Bbatch_normalization_3/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_3/moving_mean*
_output_shapes
: 
Ą
(batch_normalization_3/moving_mean/AssignAssignVariableOp!batch_normalization_3/moving_mean3batch_normalization_3/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:(*
dtype0
˝
6batch_normalization_3/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ü
%batch_normalization_3/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_3/moving_variance*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_3/moving_variance

Fbatch_normalization_3/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_3/moving_variance*
_output_shapes
: 
Ź
,batch_normalization_3/moving_variance/AssignAssignVariableOp%batch_normalization_3/moving_variance6batch_normalization_3/moving_variance/Initializer/ones*
dtype0

9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:(*
dtype0
|
$batch_normalization_3/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:(*
dtype0
}
&batch_normalization_3/ReadVariableOp_1ReadVariableOpbatch_normalization_3/beta*
_output_shapes
:(*
dtype0

5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:(*
dtype0

7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:(*
dtype0
Ą
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3dense_2/Relu$batch_normalization_3/ReadVariableOp&batch_normalization_3/ReadVariableOp_15batch_normalization_3/FusedBatchNormV3/ReadVariableOp7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*K
_output_shapes9
7:(˙˙˙˙˙˙˙˙˙@:(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ł
/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
_output_shapes
:*
dtype0*
valueB"@       

-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  ž

-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
_output_shapes
: *
dtype0*
valueB
 *  >
Ň
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ *
dtype0
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ 
Ú
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ 

dense_3/kernelVarHandleOp*!
_class
loc:@dense_3/kernel*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_3/kernel
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 
q
dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*
dtype0
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0

dense_3/bias/Initializer/zerosConst*
_class
loc:@dense_3/bias*
_output_shapes
: *
dtype0*
valueB *    

dense_3/biasVarHandleOp*
_class
loc:@dense_3/bias*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 
b
dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
dtype0
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
o
 dense_3/Tensordot/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0
`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
k
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
m
dense_3/Tensordot/ShapeShape&batch_normalization_3/FusedBatchNormV3*
T0*
_output_shapes
:
a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ŕ
dense_3/Tensordot/GatherV2GatherV2dense_3/Tensordot/Shapedense_3/Tensordot/freedense_3/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_3/Tensordot/GatherV2_1GatherV2dense_3/Tensordot/Shapedense_3/Tensordot/axes!dense_3/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
t
dense_3/Tensordot/ProdProddense_3/Tensordot/GatherV2dense_3/Tensordot/Const*
T0*
_output_shapes
: 
c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
z
dense_3/Tensordot/Prod_1Proddense_3/Tensordot/GatherV2_1dense_3/Tensordot/Const_1*
T0*
_output_shapes
: 
_
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ą
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/freedense_3/Tensordot/axesdense_3/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_3/Tensordot/stackPackdense_3/Tensordot/Proddense_3/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
¤
dense_3/Tensordot/transpose	Transpose&batch_normalization_3/FusedBatchNormV3dense_3/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙@

dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transposedense_3/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_3/Tensordot/MatMulMatMuldense_3/Tensordot/Reshape dense_3/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ź
dense_3/Tensordot/concat_1ConcatV2dense_3/Tensordot/GatherV2dense_3/Tensordot/Const_2dense_3/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_3/TensordotReshapedense_3/Tensordot/MatMuldense_3/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
g
dense_3/BiasAdd/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0

dense_3/BiasAddBiasAdddense_3/Tensordotdense_3/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
_
dense_3/ReluReludense_3/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 
Š
,batch_normalization_4/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
ž
batch_normalization_4/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_4/gamma*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_4/gamma

<batch_normalization_4/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/gamma*
_output_shapes
: 

"batch_normalization_4/gamma/AssignAssignVariableOpbatch_normalization_4/gamma,batch_normalization_4/gamma/Initializer/ones*
dtype0

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:(*
dtype0
¨
,batch_normalization_4/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ť
batch_normalization_4/betaVarHandleOp*-
_class#
!loc:@batch_normalization_4/beta*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_4/beta

;batch_normalization_4/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_4/beta*
_output_shapes
: 

!batch_normalization_4/beta/AssignAssignVariableOpbatch_normalization_4/beta,batch_normalization_4/beta/Initializer/zeros*
dtype0

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:(*
dtype0
ś
3batch_normalization_4/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Đ
!batch_normalization_4/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_4/moving_mean*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_4/moving_mean

Bbatch_normalization_4/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_4/moving_mean*
_output_shapes
: 
Ą
(batch_normalization_4/moving_mean/AssignAssignVariableOp!batch_normalization_4/moving_mean3batch_normalization_4/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:(*
dtype0
˝
6batch_normalization_4/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ü
%batch_normalization_4/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_4/moving_variance*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_4/moving_variance

Fbatch_normalization_4/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_4/moving_variance*
_output_shapes
: 
Ź
,batch_normalization_4/moving_variance/AssignAssignVariableOp%batch_normalization_4/moving_variance6batch_normalization_4/moving_variance/Initializer/ones*
dtype0

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:(*
dtype0
|
$batch_normalization_4/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:(*
dtype0
}
&batch_normalization_4/ReadVariableOp_1ReadVariableOpbatch_normalization_4/beta*
_output_shapes
:(*
dtype0

5batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:(*
dtype0

7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:(*
dtype0
Ą
&batch_normalization_4/FusedBatchNormV3FusedBatchNormV3dense_3/Relu$batch_normalization_4/ReadVariableOp&batch_normalization_4/ReadVariableOp_15batch_normalization_4/FusedBatchNormV3/ReadVariableOp7batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1*
T0*
U0*K
_output_shapes9
7:(˙˙˙˙˙˙˙˙˙ :(:(:(:(:*
data_formatNCHW*
epsilon%o:*
is_training( 
Ł
/dense_4/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_4/kernel*
_output_shapes
:*
dtype0*
valueB"       

-dense_4/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľž

-dense_4/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_4/kernel*
_output_shapes
: *
dtype0*
valueB
 *óľ>
Ň
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: *
dtype0
Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
č
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: 
Ú
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: 

dense_4/kernelVarHandleOp*!
_class
loc:@dense_4/kernel*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_4/kernel
m
/dense_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_4/kernel*
_output_shapes
: 
q
dense_4/kernel/AssignAssignVariableOpdense_4/kernel)dense_4/kernel/Initializer/random_uniform*
dtype0
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: *
dtype0

dense_4/bias/Initializer/zerosConst*
_class
loc:@dense_4/bias*
_output_shapes
:*
dtype0*
valueB*    

dense_4/biasVarHandleOp*
_class
loc:@dense_4/bias*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
-dense_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_4/bias*
_output_shapes
: 
b
dense_4/bias/AssignAssignVariableOpdense_4/biasdense_4/bias/Initializer/zeros*
dtype0
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
o
 dense_4/Tensordot/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

: *
dtype0
`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
k
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          
m
dense_4/Tensordot/ShapeShape&batch_normalization_4/FusedBatchNormV3*
T0*
_output_shapes
:
a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ŕ
dense_4/Tensordot/GatherV2GatherV2dense_4/Tensordot/Shapedense_4/Tensordot/freedense_4/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ä
dense_4/Tensordot/GatherV2_1GatherV2dense_4/Tensordot/Shapedense_4/Tensordot/axes!dense_4/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
t
dense_4/Tensordot/ProdProddense_4/Tensordot/GatherV2dense_4/Tensordot/Const*
T0*
_output_shapes
: 
c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
z
dense_4/Tensordot/Prod_1Proddense_4/Tensordot/GatherV2_1dense_4/Tensordot/Const_1*
T0*
_output_shapes
: 
_
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ą
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/freedense_4/Tensordot/axesdense_4/Tensordot/concat/axis*
N*
T0*
_output_shapes
:

dense_4/Tensordot/stackPackdense_4/Tensordot/Proddense_4/Tensordot/Prod_1*
N*
T0*
_output_shapes
:
¤
dense_4/Tensordot/transpose	Transpose&batch_normalization_4/FusedBatchNormV3dense_4/Tensordot/concat*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙ 

dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transposedense_4/Tensordot/stack*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

dense_4/Tensordot/MatMulMatMuldense_4/Tensordot/Reshape dense_4/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:
a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ź
dense_4/Tensordot/concat_1ConcatV2dense_4/Tensordot/GatherV2dense_4/Tensordot/Const_2dense_4/Tensordot/concat_1/axis*
N*
T0*
_output_shapes
:

dense_4/TensordotReshapedense_4/Tensordot/MatMuldense_4/Tensordot/concat_1*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
g
dense_4/BiasAdd/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0

dense_4/BiasAddBiasAdddense_4/Tensordotdense_4/BiasAdd/ReadVariableOp*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
_
dense_4/ReluReludense_4/BiasAdd*
T0*/
_output_shapes
:(˙˙˙˙˙˙˙˙˙
Š
,batch_normalization_5/gamma/Initializer/onesConst*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
:(*
dtype0*
valueB(*  ?
ž
batch_normalization_5/gammaVarHandleOp*.
_class$
" loc:@batch_normalization_5/gamma*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_5/gamma

<batch_normalization_5/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/gamma*
_output_shapes
: 

"batch_normalization_5/gamma/AssignAssignVariableOpbatch_normalization_5/gamma,batch_normalization_5/gamma/Initializer/ones*
dtype0

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:(*
dtype0
¨
,batch_normalization_5/beta/Initializer/zerosConst*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
:(*
dtype0*
valueB(*    
ť
batch_normalization_5/betaVarHandleOp*-
_class#
!loc:@batch_normalization_5/beta*
_output_shapes
: *
dtype0*
shape:(*+
shared_namebatch_normalization_5/beta

;batch_normalization_5/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpbatch_normalization_5/beta*
_output_shapes
: 

!batch_normalization_5/beta/AssignAssignVariableOpbatch_normalization_5/beta,batch_normalization_5/beta/Initializer/zeros*
dtype0

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:(*
dtype0
ś
3batch_normalization_5/moving_mean/Initializer/zerosConst*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
:(*
dtype0*
valueB(*    
Đ
!batch_normalization_5/moving_meanVarHandleOp*4
_class*
(&loc:@batch_normalization_5/moving_mean*
_output_shapes
: *
dtype0*
shape:(*2
shared_name#!batch_normalization_5/moving_mean

Bbatch_normalization_5/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOp!batch_normalization_5/moving_mean*
_output_shapes
: 
Ą
(batch_normalization_5/moving_mean/AssignAssignVariableOp!batch_normalization_5/moving_mean3batch_normalization_5/moving_mean/Initializer/zeros*
dtype0

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:(*
dtype0
˝
6batch_normalization_5/moving_variance/Initializer/onesConst*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
:(*
dtype0*
valueB(*  ?
Ü
%batch_normalization_5/moving_varianceVarHandleOp*8
_class.
,*loc:@batch_normalization_5/moving_variance*
_output_shapes
: *
dtype0*
shape:(*6
shared_name'%batch_normalization_5/moving_variance

Fbatch_normalization_5/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp%batch_normalization_5/moving_variance*
_output_shapes
: 
Ź
,batch_normalization_5/moving_variance/AssignAssignVariableOp%batch_normalization_5/moving_variance6batch_normalization_5/moving_variance/Initializer/ones*
dtype0

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:(*
dtype0
|
$batch_normalization_5/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:(*
dtype0
}
&batch_normalization_5/ReadVariableOp_1ReadVariableOpbatch_normalization_5/beta*
_output_shapes
:(*
dtype0

5batch_normalization_5/FusedBatchNormV3/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:(*
dtype0

7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:(*
dtype0
Ą
&batch_normalization_5/FusedBatchNormV3FusedBatchNormV3dense_4/Relu$batch_normalization_5/ReadVariableOp&batch_normalization_5/ReadVariableOp_15batch_normalization_5/FusedBatchNormV3/ReadVariableOp7batch_normalization_5/FusedBatchNormV3/ReadVariableOp_1*
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
q
predictions/Tensordot/ShapeShape&batch_normalization_5/FusedBatchNormV3*
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
Ź
predictions/Tensordot/transpose	Transpose&batch_normalization_5/FusedBatchNormV3predictions/Tensordot/concat*
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
)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ŕ(
valueś(Bł( BŹ(
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
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_4/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_5/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_5/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_5/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE%batch_normalization_5/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step/Read/ReadVariableOpraw/bias/Read/ReadVariableOpraw/kernel/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp$predictions/bias/Read/ReadVariableOp&predictions/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp/batch_normalization_4/gamma/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp"/device:CPU:0*5
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
c
save/AssignVariableOp_3AssignVariableOpbatch_normalization/betasave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
d
save/AssignVariableOp_4AssignVariableOpbatch_normalization/gammasave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
j
save/AssignVariableOp_5AssignVariableOpbatch_normalization/moving_meansave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
n
save/AssignVariableOp_6AssignVariableOp#batch_normalization/moving_variancesave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
W
save/AssignVariableOp_7AssignVariableOpdense_4/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Y
save/AssignVariableOp_8AssignVariableOpdense_4/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
f
save/AssignVariableOp_9AssignVariableOpbatch_normalization_5/betasave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
h
save/AssignVariableOp_10AssignVariableOpbatch_normalization_5/gammasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
n
save/AssignVariableOp_11AssignVariableOp!batch_normalization_5/moving_meansave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
r
save/AssignVariableOp_12AssignVariableOp%batch_normalization_5/moving_variancesave/Identity_13*
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
W
save/AssignVariableOp_15AssignVariableOp
dense/biassave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Y
save/AssignVariableOp_16AssignVariableOpdense/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
g
save/AssignVariableOp_17AssignVariableOpbatch_normalization_1/betasave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
h
save/AssignVariableOp_18AssignVariableOpbatch_normalization_1/gammasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
n
save/AssignVariableOp_19AssignVariableOp!batch_normalization_1/moving_meansave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
r
save/AssignVariableOp_20AssignVariableOp%batch_normalization_1/moving_variancesave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
Y
save/AssignVariableOp_21AssignVariableOpdense_1/biassave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
[
save/AssignVariableOp_22AssignVariableOpdense_1/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
g
save/AssignVariableOp_23AssignVariableOpbatch_normalization_2/betasave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
h
save/AssignVariableOp_24AssignVariableOpbatch_normalization_2/gammasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
n
save/AssignVariableOp_25AssignVariableOp!batch_normalization_2/moving_meansave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
r
save/AssignVariableOp_26AssignVariableOp%batch_normalization_2/moving_variancesave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
Y
save/AssignVariableOp_27AssignVariableOpdense_2/biassave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
[
save/AssignVariableOp_28AssignVariableOpdense_2/kernelsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
g
save/AssignVariableOp_29AssignVariableOpbatch_normalization_3/betasave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
h
save/AssignVariableOp_30AssignVariableOpbatch_normalization_3/gammasave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
n
save/AssignVariableOp_31AssignVariableOp!batch_normalization_3/moving_meansave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
r
save/AssignVariableOp_32AssignVariableOp%batch_normalization_3/moving_variancesave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
Y
save/AssignVariableOp_33AssignVariableOpdense_3/biassave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
[
save/AssignVariableOp_34AssignVariableOpdense_3/kernelsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
g
save/AssignVariableOp_35AssignVariableOpbatch_normalization_4/betasave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
h
save/AssignVariableOp_36AssignVariableOpbatch_normalization_4/gammasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
n
save/AssignVariableOp_37AssignVariableOp!batch_normalization_4/moving_meansave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
r
save/AssignVariableOp_38AssignVariableOp%batch_normalization_4/moving_variancesave/Identity_39*
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
)
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*Ŕ(
valueś(Bł( BŹ(
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
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 
fd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_4/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 
ge
VARIABLE_VALUEbatch_normalization_5/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_5/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE!batch_normalization_5/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE%batch_normalization_5/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
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


group_deps"Ż
trainable_variables
p
raw/kernel:0raw/kernel/Assign raw/kernel/Read/ReadVariableOp:0(2'raw/kernel/Initializer/random_uniform:08
_

raw/bias:0raw/bias/Assignraw/bias/Read/ReadVariableOp:0(2raw/bias/Initializer/zeros:08
˘
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
Ş
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Ş
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
Ş
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
§
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
Ş
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
§
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08

dense_4/kernel:0dense_4/kernel/Assign$dense_4/kernel/Read/ReadVariableOp:0(2+dense_4/kernel/Initializer/random_uniform:08
o
dense_4/bias:0dense_4/bias/Assign"dense_4/bias/Read/ReadVariableOp:0(2 dense_4/bias/Initializer/zeros:08
Ş
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
§
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08

predictions/kernel:0predictions/kernel/Assign(predictions/kernel/Read/ReadVariableOp:0(2/predictions/kernel/Initializer/random_uniform:08

predictions/bias:0predictions/bias/Assign&predictions/bias/Read/ReadVariableOp:0(2$predictions/bias/Initializer/zeros:08"ź1
	variablesŽ1Ť1
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
p
raw/kernel:0raw/kernel/Assign raw/kernel/Read/ReadVariableOp:0(2'raw/kernel/Initializer/random_uniform:08
_

raw/bias:0raw/bias/Assignraw/bias/Read/ReadVariableOp:0(2raw/bias/Initializer/zeros:08
˘
batch_normalization/gamma:0 batch_normalization/gamma/Assign/batch_normalization/gamma/Read/ReadVariableOp:0(2,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assign.batch_normalization/beta/Read/ReadVariableOp:0(2,batch_normalization/beta/Initializer/zeros:08
˝
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign5batch_normalization/moving_mean/Read/ReadVariableOp:0(23batch_normalization/moving_mean/Initializer/zeros:0@H
Ě
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign9batch_normalization/moving_variance/Read/ReadVariableOp:0(26batch_normalization/moving_variance/Initializer/ones:0@H
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
Ş
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign1batch_normalization_1/gamma/Read/ReadVariableOp:0(2.batch_normalization_1/gamma/Initializer/ones:08
§
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign0batch_normalization_1/beta/Read/ReadVariableOp:0(2.batch_normalization_1/beta/Initializer/zeros:08
Ĺ
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign7batch_normalization_1/moving_mean/Read/ReadVariableOp:0(25batch_normalization_1/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign;batch_normalization_1/moving_variance/Read/ReadVariableOp:0(28batch_normalization_1/moving_variance/Initializer/ones:0@H

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
Ş
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign1batch_normalization_2/gamma/Read/ReadVariableOp:0(2.batch_normalization_2/gamma/Initializer/ones:08
§
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign0batch_normalization_2/beta/Read/ReadVariableOp:0(2.batch_normalization_2/beta/Initializer/zeros:08
Ĺ
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign7batch_normalization_2/moving_mean/Read/ReadVariableOp:0(25batch_normalization_2/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign;batch_normalization_2/moving_variance/Read/ReadVariableOp:0(28batch_normalization_2/moving_variance/Initializer/ones:0@H

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08
Ş
batch_normalization_3/gamma:0"batch_normalization_3/gamma/Assign1batch_normalization_3/gamma/Read/ReadVariableOp:0(2.batch_normalization_3/gamma/Initializer/ones:08
§
batch_normalization_3/beta:0!batch_normalization_3/beta/Assign0batch_normalization_3/beta/Read/ReadVariableOp:0(2.batch_normalization_3/beta/Initializer/zeros:08
Ĺ
#batch_normalization_3/moving_mean:0(batch_normalization_3/moving_mean/Assign7batch_normalization_3/moving_mean/Read/ReadVariableOp:0(25batch_normalization_3/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_3/moving_variance:0,batch_normalization_3/moving_variance/Assign;batch_normalization_3/moving_variance/Read/ReadVariableOp:0(28batch_normalization_3/moving_variance/Initializer/ones:0@H

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08
Ş
batch_normalization_4/gamma:0"batch_normalization_4/gamma/Assign1batch_normalization_4/gamma/Read/ReadVariableOp:0(2.batch_normalization_4/gamma/Initializer/ones:08
§
batch_normalization_4/beta:0!batch_normalization_4/beta/Assign0batch_normalization_4/beta/Read/ReadVariableOp:0(2.batch_normalization_4/beta/Initializer/zeros:08
Ĺ
#batch_normalization_4/moving_mean:0(batch_normalization_4/moving_mean/Assign7batch_normalization_4/moving_mean/Read/ReadVariableOp:0(25batch_normalization_4/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_4/moving_variance:0,batch_normalization_4/moving_variance/Assign;batch_normalization_4/moving_variance/Read/ReadVariableOp:0(28batch_normalization_4/moving_variance/Initializer/ones:0@H

dense_4/kernel:0dense_4/kernel/Assign$dense_4/kernel/Read/ReadVariableOp:0(2+dense_4/kernel/Initializer/random_uniform:08
o
dense_4/bias:0dense_4/bias/Assign"dense_4/bias/Read/ReadVariableOp:0(2 dense_4/bias/Initializer/zeros:08
Ş
batch_normalization_5/gamma:0"batch_normalization_5/gamma/Assign1batch_normalization_5/gamma/Read/ReadVariableOp:0(2.batch_normalization_5/gamma/Initializer/ones:08
§
batch_normalization_5/beta:0!batch_normalization_5/beta/Assign0batch_normalization_5/beta/Read/ReadVariableOp:0(2.batch_normalization_5/beta/Initializer/zeros:08
Ĺ
#batch_normalization_5/moving_mean:0(batch_normalization_5/moving_mean/Assign7batch_normalization_5/moving_mean/Read/ReadVariableOp:0(25batch_normalization_5/moving_mean/Initializer/zeros:0@H
Ô
'batch_normalization_5/moving_variance:0,batch_normalization_5/moving_variance/Assign;batch_normalization_5/moving_variance/Read/ReadVariableOp:0(28batch_normalization_5/moving_variance/Initializer/ones:0@H
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