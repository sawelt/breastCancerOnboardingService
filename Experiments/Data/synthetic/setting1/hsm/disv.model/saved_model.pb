лч
Д┌
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%═╠L>"
Ttype0:
2
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
delete_old_dirsbool(И
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-0-g3f878cff5b68°╖
К
embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameembedding_10/embeddings
Г
+embedding_10/embeddings/Read/ReadVariableOpReadVariableOpembedding_10/embeddings*
_output_shapes

:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:>*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Ш
Adam/embedding_10/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/embedding_10/embeddings/m
С
2Adam/embedding_10/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_10/embeddings/m*
_output_shapes

:*
dtype0
И
Adam/dense_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>*'
shared_nameAdam/dense_20/kernel/m
Б
*Adam/dense_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/m*
_output_shapes

:>*
dtype0
А
Adam/dense_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/m
y
(Adam/dense_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/m*
_output_shapes
:*
dtype0
И
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_21/kernel/m
Б
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes

:*
dtype0
А
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:*
dtype0
Ш
Adam/embedding_10/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/embedding_10/embeddings/v
С
2Adam/embedding_10/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_10/embeddings/v*
_output_shapes

:*
dtype0
И
Adam/dense_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>*'
shared_nameAdam/dense_20/kernel/v
Б
*Adam/dense_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/kernel/v*
_output_shapes

:>*
dtype0
А
Adam/dense_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_20/bias/v
y
(Adam/dense_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_20/bias/v*
_output_shapes
:*
dtype0
И
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_21/kernel/v
Б
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes

:*
dtype0
А
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
я<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*к<
valueа<BЭ< BЦ<
╬
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
а

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
О
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
°
#layer-0
$layer_with_weights-0
$layer-1
%layer-2
&layer_with_weights-1
&layer-3
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
и
-iter

.beta_1

/beta_2
	0decay
1learning_ratemЗ2mИ3mЙ4mК5mЛvМ2vН3vО4vП5vР*
'
0
21
32
43
54*
* 
* 
░
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

;serving_default* 
ke
VARIABLE_VALUEembedding_10/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*
* 
* 
У
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
С
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
* 
* 
О
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
ж

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
О
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
ж

4kernel
5bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses*
 
20
31
42
53*
* 
* 
У
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_20/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_20/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_21/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_21/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
'
0
21
32
43
54*
.
0
1
2
3
4
5*

h0
i1*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
С
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 

20
31*
* 
* 
У
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 
* 
* 

40
51*
* 
* 
У
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*
* 
* 
 
20
31
42
53*
 
#0
$1
%2
&3*
* 
* 
* 
:
	~total
	count
А	variables
Б	keras_api*
M

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api*
* 
* 
* 
* 
* 

20
31*
* 
* 
* 
* 
* 
* 
* 
* 
* 

40
51*
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

А	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

В0
Г1*

Е	variables*
ПИ
VARIABLE_VALUEAdam/embedding_10/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_20/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_20/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_21/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_21/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUEAdam/embedding_10/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_20/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_20/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_21/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_21/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_31Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
{
serving_default_input_32Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
╡
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_31serving_default_input_32embedding_10/embeddingsdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *.
f)R'
%__inference_signature_wrapper_3303739
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
═	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_10/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_20/kernel/Read/ReadVariableOp!dense_20/bias/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/embedding_10/embeddings/m/Read/ReadVariableOp*Adam/dense_20/kernel/m/Read/ReadVariableOp(Adam/dense_20/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp2Adam/embedding_10/embeddings/v/Read/ReadVariableOp*Adam/dense_20/kernel/v/Read/ReadVariableOp(Adam/dense_20/bias/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__traced_save_3304001
ш
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_10/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_20/kerneldense_20/biasdense_21/kerneldense_21/biastotalcounttotal_1count_1Adam/embedding_10/embeddings/mAdam/dense_20/kernel/mAdam/dense_20/bias/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/embedding_10/embeddings/vAdam/dense_20/kernel/vAdam/dense_20/bias/vAdam/dense_21/kernel/vAdam/dense_21/bias/v*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference__traced_restore_3304083═╕
╠	
·
*__inference_model_15_layer_call_fn_3303661
inputs_0
inputs_1
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_3303556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
е
╥
/__inference_sequential_10_layer_call_fn_3303805

inputs
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
Ы

Ў
E__inference_dense_21_layer_call_and_return_conditional_losses_3303905

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ь
Е
E__inference_model_15_layer_call_and_return_conditional_losses_3303484

inputs
inputs_1&
embedding_10_3303454:'
sequential_10_3303474:>#
sequential_10_3303476:'
sequential_10_3303478:#
sequential_10_3303480:
identityИв$embedding_10/StatefulPartitionedCallв%sequential_10/StatefulPartitionedCallЇ
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_10_3303454*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453ч
flatten_15/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463ь
concatenate_5/PartitionedCallPartitionedCallinputs#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472▄
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0sequential_10_3303474sequential_10_3303476sequential_10_3303478sequential_10_3303480*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303305}
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Х
NoOpNoOp%^embedding_10/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
Б`
и
#__inference__traced_restore_3304083
file_prefix:
(assignvariableop_embedding_10_embeddings:&
assignvariableop_1_adam_iter:	 (
assignvariableop_2_adam_beta_1: (
assignvariableop_3_adam_beta_2: '
assignvariableop_4_adam_decay: /
%assignvariableop_5_adam_learning_rate: 4
"assignvariableop_6_dense_20_kernel:>.
 assignvariableop_7_dense_20_bias:4
"assignvariableop_8_dense_21_kernel:.
 assignvariableop_9_dense_21_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: D
2assignvariableop_14_adam_embedding_10_embeddings_m:<
*assignvariableop_15_adam_dense_20_kernel_m:>6
(assignvariableop_16_adam_dense_20_bias_m:<
*assignvariableop_17_adam_dense_21_kernel_m:6
(assignvariableop_18_adam_dense_21_bias_m:D
2assignvariableop_19_adam_embedding_10_embeddings_v:<
*assignvariableop_20_adam_dense_20_kernel_v:>6
(assignvariableop_21_adam_dense_20_bias_v:<
*assignvariableop_22_adam_dense_21_kernel_v:6
(assignvariableop_23_adam_dense_21_bias_v:
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Ў
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ь
valueТBПB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOpAssignVariableOp(assignvariableop_embedding_10_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_20_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_20_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_21_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_21_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_embedding_10_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_20_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_20_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_21_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_21_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_embedding_10_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_20_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_20_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_21_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_21_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ▀
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
х
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:         *
alpha%
╫#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ы

Ў
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ф5
Л

 __inference__traced_save_3304001
file_prefix6
2savev2_embedding_10_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_20_kernel_read_readvariableop,
(savev2_dense_20_bias_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_embedding_10_embeddings_m_read_readvariableop5
1savev2_adam_dense_20_kernel_m_read_readvariableop3
/savev2_adam_dense_20_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop=
9savev2_adam_embedding_10_embeddings_v_read_readvariableop5
1savev2_adam_dense_20_kernel_v_read_readvariableop3
/savev2_adam_dense_20_bias_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: є
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ь
valueТBПB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ж

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_10_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_20_kernel_read_readvariableop(savev2_dense_20_bias_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_embedding_10_embeddings_m_read_readvariableop1savev2_adam_dense_20_kernel_m_read_readvariableop/savev2_adam_dense_20_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop9savev2_adam_embedding_10_embeddings_v_read_readvariableop1savev2_adam_dense_20_kernel_v_read_readvariableop/savev2_adam_dense_20_bias_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*й
_input_shapesЧ
Ф: :: : : : : :>:::: : : : ::>:::::>:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:>: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

:>: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:>: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
Ш
┴
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303419
flatten_16_input"
dense_20_3303407:>
dense_20_3303409:"
dense_21_3303413:
dense_21_3303415:
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCall╩
flatten_16/PartitionedCallPartitionedCallflatten_16_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262У
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_20_3303407dense_20_3303409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274ы
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285Ч
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0dense_21_3303413dense_21_3303415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:Y U
'
_output_shapes
:         >
*
_user_specified_nameflatten_16_input
╖
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303856

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         >X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         >:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
д
З
E__inference_model_15_layer_call_and_return_conditional_losses_3303623
input_31
input_32&
embedding_10_3303608:'
sequential_10_3303613:>#
sequential_10_3303615:'
sequential_10_3303617:#
sequential_10_3303619:
identityИв$embedding_10/StatefulPartitionedCallв%sequential_10/StatefulPartitionedCallЇ
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinput_32embedding_10_3303608*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453ч
flatten_15/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463ю
concatenate_5/PartitionedCallPartitionedCallinput_31#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472▄
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0sequential_10_3303613sequential_10_3303615sequential_10_3303617sequential_10_3303619*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303379}
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Х
NoOpNoOp%^embedding_10/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32
╖
c
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         >X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         >:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
Ш
┴
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303435
flatten_16_input"
dense_20_3303423:>
dense_20_3303425:"
dense_21_3303429:
dense_21_3303431:
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCall╩
flatten_16/PartitionedCallPartitionedCallflatten_16_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262У
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_20_3303423dense_20_3303425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274ы
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285Ч
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0dense_21_3303429dense_21_3303431*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:Y U
'
_output_shapes
:         >
*
_user_specified_nameflatten_16_input
н+
р
"__inference__wrapped_model_3303249
input_31
input_32@
.model_15_embedding_10_embedding_lookup_3303223:P
>model_15_sequential_10_dense_20_matmul_readvariableop_resource:>M
?model_15_sequential_10_dense_20_biasadd_readvariableop_resource:P
>model_15_sequential_10_dense_21_matmul_readvariableop_resource:M
?model_15_sequential_10_dense_21_biasadd_readvariableop_resource:
identityИв&model_15/embedding_10/embedding_lookupв6model_15/sequential_10/dense_20/BiasAdd/ReadVariableOpв5model_15/sequential_10/dense_20/MatMul/ReadVariableOpв6model_15/sequential_10/dense_21/BiasAdd/ReadVariableOpв5model_15/sequential_10/dense_21/MatMul/ReadVariableOp 
&model_15/embedding_10/embedding_lookupResourceGather.model_15_embedding_10_embedding_lookup_3303223input_32*
Tindices0*A
_class7
53loc:@model_15/embedding_10/embedding_lookup/3303223*+
_output_shapes
:         *
dtype0х
/model_15/embedding_10/embedding_lookup/IdentityIdentity/model_15/embedding_10/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_15/embedding_10/embedding_lookup/3303223*+
_output_shapes
:         н
1model_15/embedding_10/embedding_lookup/Identity_1Identity8model_15/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         j
model_15/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ╕
model_15/flatten_15/ReshapeReshape:model_15/embedding_10/embedding_lookup/Identity_1:output:0"model_15/flatten_15/Const:output:0*
T0*'
_output_shapes
:         d
"model_15/concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :┴
model_15/concatenate_5/concatConcatV2input_31$model_15/flatten_15/Reshape:output:0+model_15/concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:         >x
'model_15/sequential_10/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   └
)model_15/sequential_10/flatten_16/ReshapeReshape&model_15/concatenate_5/concat:output:00model_15/sequential_10/flatten_16/Const:output:0*
T0*'
_output_shapes
:         >┤
5model_15/sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp>model_15_sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0╒
&model_15/sequential_10/dense_20/MatMulMatMul2model_15/sequential_10/flatten_16/Reshape:output:0=model_15/sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ▓
6model_15/sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp?model_15_sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╓
'model_15/sequential_10/dense_20/BiasAddBiasAdd0model_15/sequential_10/dense_20/MatMul:product:0>model_15/sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         з
/model_15/sequential_10/leaky_re_lu_10/LeakyRelu	LeakyRelu0model_15/sequential_10/dense_20/BiasAdd:output:0*'
_output_shapes
:         *
alpha%
╫#<┤
5model_15/sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp>model_15_sequential_10_dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0р
&model_15/sequential_10/dense_21/MatMulMatMul=model_15/sequential_10/leaky_re_lu_10/LeakyRelu:activations:0=model_15/sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ▓
6model_15/sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp?model_15_sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╓
'model_15/sequential_10/dense_21/BiasAddBiasAdd0model_15/sequential_10/dense_21/MatMul:product:0>model_15/sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ц
'model_15/sequential_10/dense_21/SigmoidSigmoid0model_15/sequential_10/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         z
IdentityIdentity+model_15/sequential_10/dense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╤
NoOpNoOp'^model_15/embedding_10/embedding_lookup7^model_15/sequential_10/dense_20/BiasAdd/ReadVariableOp6^model_15/sequential_10/dense_20/MatMul/ReadVariableOp7^model_15/sequential_10/dense_21/BiasAdd/ReadVariableOp6^model_15/sequential_10/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2P
&model_15/embedding_10/embedding_lookup&model_15/embedding_10/embedding_lookup2p
6model_15/sequential_10/dense_20/BiasAdd/ReadVariableOp6model_15/sequential_10/dense_20/BiasAdd/ReadVariableOp2n
5model_15/sequential_10/dense_20/MatMul/ReadVariableOp5model_15/sequential_10/dense_20/MatMul/ReadVariableOp2p
6model_15/sequential_10/dense_21/BiasAdd/ReadVariableOp6model_15/sequential_10/dense_21/BiasAdd/ReadVariableOp2n
5model_15/sequential_10/dense_21/MatMul/ReadVariableOp5model_15/sequential_10/dense_21/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32
├
v
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303779
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         >W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
·
╖
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303305

inputs"
dense_20_3303275:>
dense_20_3303277:"
dense_21_3303299:
dense_21_3303301:
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCall└
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262У
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_20_3303275dense_20_3303277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274ы
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285Ч
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0dense_21_3303299dense_21_3303301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
е
╥
/__inference_sequential_10_layer_call_fn_3303792

inputs
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
д
З
E__inference_model_15_layer_call_and_return_conditional_losses_3303604
input_31
input_32&
embedding_10_3303589:'
sequential_10_3303594:>#
sequential_10_3303596:'
sequential_10_3303598:#
sequential_10_3303600:
identityИв$embedding_10/StatefulPartitionedCallв%sequential_10/StatefulPartitionedCallЇ
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinput_32embedding_10_3303589*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453ч
flatten_15/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463ю
concatenate_5/PartitionedCallPartitionedCallinput_31#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472▄
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0sequential_10_3303594sequential_10_3303596sequential_10_3303598sequential_10_3303600*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303305}
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Х
NoOpNoOp%^embedding_10/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32
╚	
Ў
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274

inputs0
matmul_readvariableop_resource:>-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:>*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         >: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
Ь
Е
E__inference_model_15_layer_call_and_return_conditional_losses_3303556

inputs
inputs_1&
embedding_10_3303541:'
sequential_10_3303546:>#
sequential_10_3303548:'
sequential_10_3303550:#
sequential_10_3303552:
identityИв$embedding_10/StatefulPartitionedCallв%sequential_10/StatefulPartitionedCallЇ
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_10_3303541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453ч
flatten_15/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463ь
concatenate_5/PartitionedCallPartitionedCallinputs#flatten_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472▄
%sequential_10/StatefulPartitionedCallStatefulPartitionedCall&concatenate_5/PartitionedCall:output:0sequential_10_3303546sequential_10_3303548sequential_10_3303550sequential_10_3303552*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303379}
IdentityIdentity.sequential_10/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Х
NoOpNoOp%^embedding_10/StatefulPartitionedCall&^sequential_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
╨
з
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453

inputs*
embedding_lookup_3303447:
identityИвembedding_lookup╗
embedding_lookupResourceGatherembedding_lookup_3303447inputs*
Tindices0*+
_class!
loc:@embedding_lookup/3303447*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3303447*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ч
╒
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303825

inputs9
'dense_20_matmul_readvariableop_resource:>6
(dense_20_biasadd_readvariableop_resource:9
'dense_21_matmul_readvariableop_resource:6
(dense_21_biasadd_readvariableop_resource:
identityИвdense_20/BiasAdd/ReadVariableOpвdense_20/MatMul/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpa
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   r
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:         >Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0Р
dense_20/MatMulMatMulflatten_16/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         y
leaky_re_lu_10/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*'
_output_shapes
:         *
alpha%
╫#<Ж
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
dense_21/MatMulMatMul&leaky_re_lu_10/LeakyRelu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
╠	
·
*__inference_model_15_layer_call_fn_3303497
input_31
input_32
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinput_31input_32unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_3303484o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32
о
H
,__inference_flatten_15_layer_call_fn_3303760

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╚	
Ў
E__inference_dense_20_layer_call_and_return_conditional_losses_3303875

inputs0
matmul_readvariableop_resource:>-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:>*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         >: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
╟
Ч
*__inference_dense_20_layer_call_fn_3303865

inputs
unknown:>
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         >: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
├
▄
/__inference_sequential_10_layer_call_fn_3303403
flatten_16_input
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         >
*
_user_specified_nameflatten_16_input
·
╖
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303379

inputs"
dense_20_3303367:>
dense_20_3303369:"
dense_21_3303373:
dense_21_3303375:
identityИв dense_20/StatefulPartitionedCallв dense_21/StatefulPartitionedCall└
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262У
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_20_3303367dense_20_3303369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_3303274ы
leaky_re_lu_10/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285Ч
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0dense_21_3303373dense_21_3303375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
╠	
·
*__inference_model_15_layer_call_fn_3303585
input_31
input_32
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinput_31input_32unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_3303556o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32
╨
з
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303755

inputs*
embedding_lookup_3303749:
identityИвembedding_lookup╗
embedding_lookupResourceGatherembedding_lookup_3303749inputs*
Tindices0*+
_class!
loc:@embedding_lookup/3303749*+
_output_shapes
:         *
dtype0г
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3303749*+
_output_shapes
:         Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
▄
/__inference_sequential_10_layer_call_fn_3303316
flatten_16_input
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:         >
*
_user_specified_nameflatten_16_input
┐
c
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303463

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╗
t
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:         >W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
▒
[
/__inference_concatenate_5_layer_call_fn_3303772
inputs_0
inputs_1
identity┼
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *S
fNRL
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303472`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
ж
H
,__inference_flatten_16_layer_call_fn_3303850

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         >* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303262`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         >"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         >:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
┌&
й
E__inference_model_15_layer_call_and_return_conditional_losses_3303691
inputs_0
inputs_17
%embedding_10_embedding_lookup_3303665:G
5sequential_10_dense_20_matmul_readvariableop_resource:>D
6sequential_10_dense_20_biasadd_readvariableop_resource:G
5sequential_10_dense_21_matmul_readvariableop_resource:D
6sequential_10_dense_21_biasadd_readvariableop_resource:
identityИвembedding_10/embedding_lookupв-sequential_10/dense_20/BiasAdd/ReadVariableOpв,sequential_10/dense_20/MatMul/ReadVariableOpв-sequential_10/dense_21/BiasAdd/ReadVariableOpв,sequential_10/dense_21/MatMul/ReadVariableOpф
embedding_10/embedding_lookupResourceGather%embedding_10_embedding_lookup_3303665inputs_1*
Tindices0*8
_class.
,*loc:@embedding_10/embedding_lookup/3303665*+
_output_shapes
:         *
dtype0╩
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_10/embedding_lookup/3303665*+
_output_shapes
:         Ы
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Э
flatten_15/ReshapeReshape1embedding_10/embedding_lookup/Identity_1:output:0flatten_15/Const:output:0*
T0*'
_output_shapes
:         [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ж
concatenate_5/concatConcatV2inputs_0flatten_15/Reshape:output:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:         >o
sequential_10/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   е
 sequential_10/flatten_16/ReshapeReshapeconcatenate_5/concat:output:0'sequential_10/flatten_16/Const:output:0*
T0*'
_output_shapes
:         >в
,sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0║
sequential_10/dense_20/MatMulMatMul)sequential_10/flatten_16/Reshape:output:04sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_10/dense_20/BiasAddBiasAdd'sequential_10/dense_20/MatMul:product:05sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Х
&sequential_10/leaky_re_lu_10/LeakyRelu	LeakyRelu'sequential_10/dense_20/BiasAdd:output:0*'
_output_shapes
:         *
alpha%
╫#<в
,sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0┼
sequential_10/dense_21/MatMulMatMul4sequential_10/leaky_re_lu_10/LeakyRelu:activations:04sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_10/dense_21/BiasAddBiasAdd'sequential_10/dense_21/MatMul:product:05sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
sequential_10/dense_21/SigmoidSigmoid'sequential_10/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"sequential_10/dense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         д
NoOpNoOp^embedding_10/embedding_lookup.^sequential_10/dense_20/BiasAdd/ReadVariableOp-^sequential_10/dense_20/MatMul/ReadVariableOp.^sequential_10/dense_21/BiasAdd/ReadVariableOp-^sequential_10/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2^
-sequential_10/dense_20/BiasAdd/ReadVariableOp-sequential_10/dense_20/BiasAdd/ReadVariableOp2\
,sequential_10/dense_20/MatMul/ReadVariableOp,sequential_10/dense_20/MatMul/ReadVariableOp2^
-sequential_10/dense_21/BiasAdd/ReadVariableOp-sequential_10/dense_21/BiasAdd/ReadVariableOp2\
,sequential_10/dense_21/MatMul/ReadVariableOp,sequential_10/dense_21/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
х
g
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303885

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:         *
alpha%
╫#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╠	
·
*__inference_model_15_layer_call_fn_3303645
inputs_0
inputs_1
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_model_15_layer_call_and_return_conditional_losses_3303484o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
Ч
╒
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303845

inputs9
'dense_20_matmul_readvariableop_resource:>6
(dense_20_biasadd_readvariableop_resource:9
'dense_21_matmul_readvariableop_resource:6
(dense_21_biasadd_readvariableop_resource:
identityИвdense_20/BiasAdd/ReadVariableOpвdense_20/MatMul/ReadVariableOpвdense_21/BiasAdd/ReadVariableOpвdense_21/MatMul/ReadVariableOpa
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   r
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:         >Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0Р
dense_20/MatMulMatMulflatten_16/Reshape:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         y
leaky_re_lu_10/LeakyRelu	LeakyReludense_20/BiasAdd:output:0*'
_output_shapes
:         *
alpha%
╫#<Ж
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ы
dense_21/MatMulMatMul&leaky_re_lu_10/LeakyRelu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
dense_21/SigmoidSigmoiddense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         c
IdentityIdentitydense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╠
NoOpNoOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         >: : : : 2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:O K
'
_output_shapes
:         >
 
_user_specified_nameinputs
о
L
0__inference_leaky_re_lu_10_layer_call_fn_3303880

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303285`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌&
й
E__inference_model_15_layer_call_and_return_conditional_losses_3303721
inputs_0
inputs_17
%embedding_10_embedding_lookup_3303695:G
5sequential_10_dense_20_matmul_readvariableop_resource:>D
6sequential_10_dense_20_biasadd_readvariableop_resource:G
5sequential_10_dense_21_matmul_readvariableop_resource:D
6sequential_10_dense_21_biasadd_readvariableop_resource:
identityИвembedding_10/embedding_lookupв-sequential_10/dense_20/BiasAdd/ReadVariableOpв,sequential_10/dense_20/MatMul/ReadVariableOpв-sequential_10/dense_21/BiasAdd/ReadVariableOpв,sequential_10/dense_21/MatMul/ReadVariableOpф
embedding_10/embedding_lookupResourceGather%embedding_10_embedding_lookup_3303695inputs_1*
Tindices0*8
_class.
,*loc:@embedding_10/embedding_lookup/3303695*+
_output_shapes
:         *
dtype0╩
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_10/embedding_lookup/3303695*+
_output_shapes
:         Ы
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         a
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Э
flatten_15/ReshapeReshape1embedding_10/embedding_lookup/Identity_1:output:0flatten_15/Const:output:0*
T0*'
_output_shapes
:         [
concatenate_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ж
concatenate_5/concatConcatV2inputs_0flatten_15/Reshape:output:0"concatenate_5/concat/axis:output:0*
N*
T0*'
_output_shapes
:         >o
sequential_10/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"    >   е
 sequential_10/flatten_16/ReshapeReshapeconcatenate_5/concat:output:0'sequential_10/flatten_16/Const:output:0*
T0*'
_output_shapes
:         >в
,sequential_10/dense_20/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_20_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0║
sequential_10/dense_20/MatMulMatMul)sequential_10/flatten_16/Reshape:output:04sequential_10/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_10/dense_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_10/dense_20/BiasAddBiasAdd'sequential_10/dense_20/MatMul:product:05sequential_10/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Х
&sequential_10/leaky_re_lu_10/LeakyRelu	LeakyRelu'sequential_10/dense_20/BiasAdd:output:0*'
_output_shapes
:         *
alpha%
╫#<в
,sequential_10/dense_21/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0┼
sequential_10/dense_21/MatMulMatMul4sequential_10/leaky_re_lu_10/LeakyRelu:activations:04sequential_10/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_10/dense_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_10/dense_21/BiasAddBiasAdd'sequential_10/dense_21/MatMul:product:05sequential_10/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
sequential_10/dense_21/SigmoidSigmoid'sequential_10/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:         q
IdentityIdentity"sequential_10/dense_21/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         д
NoOpNoOp^embedding_10/embedding_lookup.^sequential_10/dense_20/BiasAdd/ReadVariableOp-^sequential_10/dense_20/MatMul/ReadVariableOp.^sequential_10/dense_21/BiasAdd/ReadVariableOp-^sequential_10/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2^
-sequential_10/dense_20/BiasAdd/ReadVariableOp-sequential_10/dense_20/BiasAdd/ReadVariableOp2\
,sequential_10/dense_20/MatMul/ReadVariableOp,sequential_10/dense_20/MatMul/ReadVariableOp2^
-sequential_10/dense_21/BiasAdd/ReadVariableOp-sequential_10/dense_21/BiasAdd/ReadVariableOp2\
,sequential_10/dense_21/MatMul/ReadVariableOp,sequential_10/dense_21/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1
╟
Ч
*__inference_dense_21_layer_call_fn_3303894

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_3303298o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┐
c
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303766

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
п
В
.__inference_embedding_10_layer_call_fn_3303746

inputs
unknown:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *R
fMRK
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303453s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
д	
ї
%__inference_signature_wrapper_3303739
input_31
input_32
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinput_31input_32unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__wrapped_model_3303249o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:         :         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
input_31:QM
'
_output_shapes
:         
"
_user_specified_name
input_32"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ё
serving_default▌
=
input_311
serving_default_input_31:0         
=
input_321
serving_default_input_32:0         A
sequential_100
StatefulPartitionedCall:0         tensorflow/serving/predict:БЫ
х
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
╡

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
Т
#layer-0
$layer_with_weights-0
$layer-1
%layer-2
&layer_with_weights-1
&layer-3
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_sequential
╖
-iter

.beta_1

/beta_2
	0decay
1learning_ratemЗ2mИ3mЙ4mК5mЛvМ2vН3vО4vП5vР"
	optimizer
C
0
21
32
43
54"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╩
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ў2є
*__inference_model_15_layer_call_fn_3303497
*__inference_model_15_layer_call_fn_3303645
*__inference_model_15_layer_call_fn_3303661
*__inference_model_15_layer_call_fn_3303585└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
т2▀
E__inference_model_15_layer_call_and_return_conditional_losses_3303691
E__inference_model_15_layer_call_and_return_conditional_losses_3303721
E__inference_model_15_layer_call_and_return_conditional_losses_3303604
E__inference_model_15_layer_call_and_return_conditional_losses_3303623└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╪B╒
"__inference__wrapped_model_3303249input_31input_32"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
;serving_default"
signature_map
):'2embedding_10/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╪2╒
.__inference_embedding_10_layer_call_fn_3303746в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
є2Ё
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303755в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_flatten_15_layer_call_fn_3303760в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303766в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
┘2╓
/__inference_concatenate_5_layer_call_fn_3303772в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ї2ё
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303779в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
е
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
е
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

4kernel
5bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
К2З
/__inference_sequential_10_layer_call_fn_3303316
/__inference_sequential_10_layer_call_fn_3303792
/__inference_sequential_10_layer_call_fn_3303805
/__inference_sequential_10_layer_call_fn_3303403└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ў2є
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303825
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303845
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303419
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303435└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
!:>2dense_20/kernel
:2dense_20/bias
!:2dense_21/kernel
:2dense_21/bias
C
0
21
32
43
54"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╒B╥
%__inference_signature_wrapper_3303739input_31input_32"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
╓2╙
,__inference_flatten_16_layer_call_fn_3303850в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303856в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_dense_20_layer_call_fn_3303865в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_dense_20_layer_call_and_return_conditional_losses_3303875в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
┌2╫
0__inference_leaky_re_lu_10_layer_call_fn_3303880в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ї2Є
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303885в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
╘2╤
*__inference_dense_21_layer_call_fn_3303894в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
E__inference_dense_21_layer_call_and_return_conditional_losses_3303905в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
<
20
31
42
53"
trackable_list_wrapper
<
#0
$1
%2
&3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
P
	~total
	count
А	variables
Б	keras_api"
_tf_keras_metric
c

Вtotal

Гcount
Д
_fn_kwargs
Е	variables
Ж	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
~0
1"
trackable_list_wrapper
.
А	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
В0
Г1"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
.:,2Adam/embedding_10/embeddings/m
&:$>2Adam/dense_20/kernel/m
 :2Adam/dense_20/bias/m
&:$2Adam/dense_21/kernel/m
 :2Adam/dense_21/bias/m
.:,2Adam/embedding_10/embeddings/v
&:$>2Adam/dense_20/kernel/v
 :2Adam/dense_20/bias/v
&:$2Adam/dense_21/kernel/v
 :2Adam/dense_21/bias/v╔
"__inference__wrapped_model_3303249в2345ZвW
PвM
KЪH
"К
input_31         
"К
input_32         
к "=к:
8
sequential_10'К$
sequential_10         ╥
J__inference_concatenate_5_layer_call_and_return_conditional_losses_3303779ГZвW
PвM
KЪH
"К
inputs/0         
"К
inputs/1         
к "%в"
К
0         >
Ъ й
/__inference_concatenate_5_layer_call_fn_3303772vZвW
PвM
KЪH
"К
inputs/0         
"К
inputs/1         
к "К         >е
E__inference_dense_20_layer_call_and_return_conditional_losses_3303875\23/в,
%в"
 К
inputs         >
к "%в"
К
0         
Ъ }
*__inference_dense_20_layer_call_fn_3303865O23/в,
%в"
 К
inputs         >
к "К         е
E__inference_dense_21_layer_call_and_return_conditional_losses_3303905\45/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ }
*__inference_dense_21_layer_call_fn_3303894O45/в,
%в"
 К
inputs         
к "К         м
I__inference_embedding_10_layer_call_and_return_conditional_losses_3303755_/в,
%в"
 К
inputs         
к ")в&
К
0         
Ъ Д
.__inference_embedding_10_layer_call_fn_3303746R/в,
%в"
 К
inputs         
к "К         з
G__inference_flatten_15_layer_call_and_return_conditional_losses_3303766\3в0
)в&
$К!
inputs         
к "%в"
К
0         
Ъ 
,__inference_flatten_15_layer_call_fn_3303760O3в0
)в&
$К!
inputs         
к "К         г
G__inference_flatten_16_layer_call_and_return_conditional_losses_3303856X/в,
%в"
 К
inputs         >
к "%в"
К
0         >
Ъ {
,__inference_flatten_16_layer_call_fn_3303850K/в,
%в"
 К
inputs         >
к "К         >з
K__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_3303885X/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ 
0__inference_leaky_re_lu_10_layer_call_fn_3303880K/в,
%в"
 К
inputs         
к "К         ▄
E__inference_model_15_layer_call_and_return_conditional_losses_3303604Т2345bв_
XвU
KЪH
"К
input_31         
"К
input_32         
p 

 
к "%в"
К
0         
Ъ ▄
E__inference_model_15_layer_call_and_return_conditional_losses_3303623Т2345bв_
XвU
KЪH
"К
input_31         
"К
input_32         
p

 
к "%в"
К
0         
Ъ ▄
E__inference_model_15_layer_call_and_return_conditional_losses_3303691Т2345bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "%в"
К
0         
Ъ ▄
E__inference_model_15_layer_call_and_return_conditional_losses_3303721Т2345bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "%в"
К
0         
Ъ ┤
*__inference_model_15_layer_call_fn_3303497Е2345bв_
XвU
KЪH
"К
input_31         
"К
input_32         
p 

 
к "К         ┤
*__inference_model_15_layer_call_fn_3303585Е2345bв_
XвU
KЪH
"К
input_31         
"К
input_32         
p

 
к "К         ┤
*__inference_model_15_layer_call_fn_3303645Е2345bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p 

 
к "К         ┤
*__inference_model_15_layer_call_fn_3303661Е2345bв_
XвU
KЪH
"К
inputs/0         
"К
inputs/1         
p

 
к "К         ╛
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303419p2345Aв>
7в4
*К'
flatten_16_input         >
p 

 
к "%в"
К
0         
Ъ ╛
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303435p2345Aв>
7в4
*К'
flatten_16_input         >
p

 
к "%в"
К
0         
Ъ ┤
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303825f23457в4
-в*
 К
inputs         >
p 

 
к "%в"
К
0         
Ъ ┤
J__inference_sequential_10_layer_call_and_return_conditional_losses_3303845f23457в4
-в*
 К
inputs         >
p

 
к "%в"
К
0         
Ъ Ц
/__inference_sequential_10_layer_call_fn_3303316c2345Aв>
7в4
*К'
flatten_16_input         >
p 

 
к "К         Ц
/__inference_sequential_10_layer_call_fn_3303403c2345Aв>
7в4
*К'
flatten_16_input         >
p

 
к "К         М
/__inference_sequential_10_layer_call_fn_3303792Y23457в4
-в*
 К
inputs         >
p 

 
к "К         М
/__inference_sequential_10_layer_call_fn_3303805Y23457в4
-в*
 К
inputs         >
p

 
к "К         ▀
%__inference_signature_wrapper_3303739╡2345mвj
в 
cк`
.
input_31"К
input_31         
.
input_32"К
input_32         "=к:
8
sequential_10'К$
sequential_10         