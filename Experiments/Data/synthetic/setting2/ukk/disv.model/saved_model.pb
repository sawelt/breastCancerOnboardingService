??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
alphafloat%??L>"
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
delete_old_dirsbool(?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-0-g3f878cff5b68??
?
embedding_16/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameembedding_16/embeddings
?
+embedding_16/embeddings/Read/ReadVariableOpReadVariableOpembedding_16/embeddings*
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
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>* 
shared_namedense_32/kernel
s
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes

:>*
dtype0
r
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
k
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes
:*
dtype0
z
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_33/kernel
s
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes

:*
dtype0
r
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_33/bias
k
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
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
?
Adam/embedding_16/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/embedding_16/embeddings/m
?
2Adam/embedding_16/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_16/embeddings/m*
_output_shapes

:*
dtype0
?
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>*'
shared_nameAdam/dense_32/kernel/m
?
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m*
_output_shapes

:>*
dtype0
?
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/m
y
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_33/kernel/m
?
*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m*
_output_shapes

:*
dtype0
?
Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/m
y
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding_16/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*/
shared_name Adam/embedding_16/embeddings/v
?
2Adam/embedding_16/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_16/embeddings/v*
_output_shapes

:*
dtype0
?
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:>*'
shared_nameAdam/dense_32/kernel/v
?
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v*
_output_shapes

:>*
dtype0
?
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/v
y
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_33/kernel/v
?
*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v*
_output_shapes

:*
dtype0
?
Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/v
y
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?<
value?<B?< B?<
?
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
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
?
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
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratem?2m?3m?4m?5m?v?2v?3v?4v?5v?*
'
0
21
32
43
54*
* 
* 
?
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
VARIABLE_VALUEembedding_16/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*
* 
* 
?
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
?
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
?
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
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
?

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
?

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
?
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
VARIABLE_VALUEdense_32/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_32/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_33/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_33/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
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
?
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
?
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
?
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
?
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
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
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
?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUEAdam/embedding_16/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_32/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_32/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_33/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_33/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/embedding_16/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_32/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_32/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_33/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_33/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_49Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_input_50Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_49serving_default_input_50embedding_16/embeddingsdense_32/kerneldense_32/biasdense_33/kerneldense_33/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_4955977
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_16/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/embedding_16/embeddings/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp2Adam/embedding_16/embeddings/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOpConst*%
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_4956239
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_16/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense_32/kerneldense_32/biasdense_33/kerneldense_33/biastotalcounttotal_1count_1Adam/embedding_16/embeddings/mAdam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/mAdam/embedding_16/embeddings/vAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/v*$
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_4956321͸
?	
?
%__inference_signature_wrapper_4955977
input_49
input_50
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_49input_50unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_4955487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955842
input_49
input_50&
embedding_16_4955827:'
sequential_16_4955832:>#
sequential_16_4955834:'
sequential_16_4955836:#
sequential_16_4955838:
identity??$embedding_16/StatefulPartitionedCall?%sequential_16/StatefulPartitionedCall?
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallinput_50embedding_16_4955827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691?
flatten_24/PartitionedCallPartitionedCall-embedding_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701?
concatenate_8/PartitionedCallPartitionedCallinput_49#flatten_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710?
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0sequential_16_4955832sequential_16_4955834sequential_16_4955836sequential_16_4955838*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955543}
IdentityIdentity.sequential_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^embedding_16/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?&
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955959
inputs_0
inputs_17
%embedding_16_embedding_lookup_4955933:G
5sequential_16_dense_32_matmul_readvariableop_resource:>D
6sequential_16_dense_32_biasadd_readvariableop_resource:G
5sequential_16_dense_33_matmul_readvariableop_resource:D
6sequential_16_dense_33_biasadd_readvariableop_resource:
identity??embedding_16/embedding_lookup?-sequential_16/dense_32/BiasAdd/ReadVariableOp?,sequential_16/dense_32/MatMul/ReadVariableOp?-sequential_16/dense_33/BiasAdd/ReadVariableOp?,sequential_16/dense_33/MatMul/ReadVariableOp?
embedding_16/embedding_lookupResourceGather%embedding_16_embedding_lookup_4955933inputs_1*
Tindices0*8
_class.
,*loc:@embedding_16/embedding_lookup/4955933*+
_output_shapes
:?????????*
dtype0?
&embedding_16/embedding_lookup/IdentityIdentity&embedding_16/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_16/embedding_lookup/4955933*+
_output_shapes
:??????????
(embedding_16/embedding_lookup/Identity_1Identity/embedding_16/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????a
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_24/ReshapeReshape1embedding_16/embedding_lookup/Identity_1:output:0flatten_24/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2inputs_0flatten_24/Reshape:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????>o
sequential_16/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   ?
 sequential_16/flatten_25/ReshapeReshapeconcatenate_8/concat:output:0'sequential_16/flatten_25/Const:output:0*
T0*'
_output_shapes
:?????????>?
,sequential_16/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_32_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0?
sequential_16/dense_32/MatMulMatMul)sequential_16/flatten_25/Reshape:output:04sequential_16/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_16/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/dense_32/BiasAddBiasAdd'sequential_16/dense_32/MatMul:product:05sequential_16/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&sequential_16/leaky_re_lu_16/LeakyRelu	LeakyRelu'sequential_16/dense_32/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%
?#<?
,sequential_16/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_33_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_16/dense_33/MatMulMatMul4sequential_16/leaky_re_lu_16/LeakyRelu:activations:04sequential_16/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_16/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/dense_33/BiasAddBiasAdd'sequential_16/dense_33/MatMul:product:05sequential_16/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_16/dense_33/SigmoidSigmoid'sequential_16/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential_16/dense_33/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^embedding_16/embedding_lookup.^sequential_16/dense_32/BiasAdd/ReadVariableOp-^sequential_16/dense_32/MatMul/ReadVariableOp.^sequential_16/dense_33/BiasAdd/ReadVariableOp-^sequential_16/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2>
embedding_16/embedding_lookupembedding_16/embedding_lookup2^
-sequential_16/dense_32/BiasAdd/ReadVariableOp-sequential_16/dense_32/BiasAdd/ReadVariableOp2\
,sequential_16/dense_32/MatMul/ReadVariableOp,sequential_16/dense_32/MatMul/ReadVariableOp2^
-sequential_16/dense_33/BiasAdd/ReadVariableOp-sequential_16/dense_33/BiasAdd/ReadVariableOp2\
,sequential_16/dense_33/MatMul/ReadVariableOp,sequential_16/dense_33/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
*__inference_dense_32_layer_call_fn_4956103

inputs
unknown:>
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
c
G__inference_flatten_24_layer_call_and_return_conditional_losses_4956004

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_model_24_layer_call_fn_4955823
input_49
input_50
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_49input_50unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_24_layer_call_and_return_conditional_losses_4955794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?

?
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_16_layer_call_fn_4955641
flatten_25_input
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_25_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????>
*
_user_specified_nameflatten_25_input
?+
?
"__inference__wrapped_model_4955487
input_49
input_50@
.model_24_embedding_16_embedding_lookup_4955461:P
>model_24_sequential_16_dense_32_matmul_readvariableop_resource:>M
?model_24_sequential_16_dense_32_biasadd_readvariableop_resource:P
>model_24_sequential_16_dense_33_matmul_readvariableop_resource:M
?model_24_sequential_16_dense_33_biasadd_readvariableop_resource:
identity??&model_24/embedding_16/embedding_lookup?6model_24/sequential_16/dense_32/BiasAdd/ReadVariableOp?5model_24/sequential_16/dense_32/MatMul/ReadVariableOp?6model_24/sequential_16/dense_33/BiasAdd/ReadVariableOp?5model_24/sequential_16/dense_33/MatMul/ReadVariableOp?
&model_24/embedding_16/embedding_lookupResourceGather.model_24_embedding_16_embedding_lookup_4955461input_50*
Tindices0*A
_class7
53loc:@model_24/embedding_16/embedding_lookup/4955461*+
_output_shapes
:?????????*
dtype0?
/model_24/embedding_16/embedding_lookup/IdentityIdentity/model_24/embedding_16/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_24/embedding_16/embedding_lookup/4955461*+
_output_shapes
:??????????
1model_24/embedding_16/embedding_lookup/Identity_1Identity8model_24/embedding_16/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????j
model_24/flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_24/flatten_24/ReshapeReshape:model_24/embedding_16/embedding_lookup/Identity_1:output:0"model_24/flatten_24/Const:output:0*
T0*'
_output_shapes
:?????????d
"model_24/concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_24/concatenate_8/concatConcatV2input_49$model_24/flatten_24/Reshape:output:0+model_24/concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????>x
'model_24/sequential_16/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   ?
)model_24/sequential_16/flatten_25/ReshapeReshape&model_24/concatenate_8/concat:output:00model_24/sequential_16/flatten_25/Const:output:0*
T0*'
_output_shapes
:?????????>?
5model_24/sequential_16/dense_32/MatMul/ReadVariableOpReadVariableOp>model_24_sequential_16_dense_32_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0?
&model_24/sequential_16/dense_32/MatMulMatMul2model_24/sequential_16/flatten_25/Reshape:output:0=model_24/sequential_16/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6model_24/sequential_16/dense_32/BiasAdd/ReadVariableOpReadVariableOp?model_24_sequential_16_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
'model_24/sequential_16/dense_32/BiasAddBiasAdd0model_24/sequential_16/dense_32/MatMul:product:0>model_24/sequential_16/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
/model_24/sequential_16/leaky_re_lu_16/LeakyRelu	LeakyRelu0model_24/sequential_16/dense_32/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%
?#<?
5model_24/sequential_16/dense_33/MatMul/ReadVariableOpReadVariableOp>model_24_sequential_16_dense_33_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
&model_24/sequential_16/dense_33/MatMulMatMul=model_24/sequential_16/leaky_re_lu_16/LeakyRelu:activations:0=model_24/sequential_16/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
6model_24/sequential_16/dense_33/BiasAdd/ReadVariableOpReadVariableOp?model_24_sequential_16_dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
'model_24/sequential_16/dense_33/BiasAddBiasAdd0model_24/sequential_16/dense_33/MatMul:product:0>model_24/sequential_16/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_24/sequential_16/dense_33/SigmoidSigmoid0model_24/sequential_16/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+model_24/sequential_16/dense_33/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^model_24/embedding_16/embedding_lookup7^model_24/sequential_16/dense_32/BiasAdd/ReadVariableOp6^model_24/sequential_16/dense_32/MatMul/ReadVariableOp7^model_24/sequential_16/dense_33/BiasAdd/ReadVariableOp6^model_24/sequential_16/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2P
&model_24/embedding_16/embedding_lookup&model_24/embedding_16/embedding_lookup2p
6model_24/sequential_16/dense_32/BiasAdd/ReadVariableOp6model_24/sequential_16/dense_32/BiasAdd/ReadVariableOp2n
5model_24/sequential_16/dense_32/MatMul/ReadVariableOp5model_24/sequential_16/dense_32/MatMul/ReadVariableOp2p
6model_24/sequential_16/dense_33/BiasAdd/ReadVariableOp6model_24/sequential_16/dense_33/BiasAdd/ReadVariableOp2n
5model_24/sequential_16/dense_33/MatMul/ReadVariableOp5model_24/sequential_16/dense_33/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?
c
G__inference_flatten_25_layer_call_and_return_conditional_losses_4956094

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????>X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????>:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956083

inputs9
'dense_32_matmul_readvariableop_resource:>6
(dense_32_biasadd_readvariableop_resource:9
'dense_33_matmul_readvariableop_resource:6
(dense_33_biasadd_readvariableop_resource:
identity??dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOpa
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   r
flatten_25/ReshapeReshapeinputsflatten_25/Const:output:0*
T0*'
_output_shapes
:?????????>?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0?
dense_32/MatMulMatMulflatten_25/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????y
leaky_re_lu_16/LeakyRelu	LeakyReludense_32/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%
?#<?
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_33/MatMulMatMul&leaky_re_lu_16/LeakyRelu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_33/SigmoidSigmoiddense_33/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_33/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?`
?
#__inference__traced_restore_4956321
file_prefix:
(assignvariableop_embedding_16_embeddings:&
assignvariableop_1_adam_iter:	 (
assignvariableop_2_adam_beta_1: (
assignvariableop_3_adam_beta_2: '
assignvariableop_4_adam_decay: /
%assignvariableop_5_adam_learning_rate: 4
"assignvariableop_6_dense_32_kernel:>.
 assignvariableop_7_dense_32_bias:4
"assignvariableop_8_dense_33_kernel:.
 assignvariableop_9_dense_33_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: D
2assignvariableop_14_adam_embedding_16_embeddings_m:<
*assignvariableop_15_adam_dense_32_kernel_m:>6
(assignvariableop_16_adam_dense_32_bias_m:<
*assignvariableop_17_adam_dense_33_kernel_m:6
(assignvariableop_18_adam_dense_33_bias_m:D
2assignvariableop_19_adam_embedding_16_embeddings_v:<
*assignvariableop_20_adam_dense_32_kernel_v:>6
(assignvariableop_21_adam_dense_32_bias_v:<
*assignvariableop_22_adam_dense_33_kernel_v:6
(assignvariableop_23_adam_dense_33_bias_v:
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_embedding_16_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_iterIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp%assignvariableop_5_adam_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_32_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_32_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_33_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_33_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_embedding_16_embeddings_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_32_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_32_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_33_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_33_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp2assignvariableop_19_adam_embedding_16_embeddings_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_dense_32_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_dense_32_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_dense_33_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_dense_33_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ?
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
?	
?
E__inference_dense_32_layer_call_and_return_conditional_losses_4956113

inputs0
matmul_readvariableop_resource:>-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:>*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
/__inference_sequential_16_layer_call_fn_4956043

inputs
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?&
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955929
inputs_0
inputs_17
%embedding_16_embedding_lookup_4955903:G
5sequential_16_dense_32_matmul_readvariableop_resource:>D
6sequential_16_dense_32_biasadd_readvariableop_resource:G
5sequential_16_dense_33_matmul_readvariableop_resource:D
6sequential_16_dense_33_biasadd_readvariableop_resource:
identity??embedding_16/embedding_lookup?-sequential_16/dense_32/BiasAdd/ReadVariableOp?,sequential_16/dense_32/MatMul/ReadVariableOp?-sequential_16/dense_33/BiasAdd/ReadVariableOp?,sequential_16/dense_33/MatMul/ReadVariableOp?
embedding_16/embedding_lookupResourceGather%embedding_16_embedding_lookup_4955903inputs_1*
Tindices0*8
_class.
,*loc:@embedding_16/embedding_lookup/4955903*+
_output_shapes
:?????????*
dtype0?
&embedding_16/embedding_lookup/IdentityIdentity&embedding_16/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_16/embedding_lookup/4955903*+
_output_shapes
:??????????
(embedding_16/embedding_lookup/Identity_1Identity/embedding_16/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????a
flatten_24/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_24/ReshapeReshape1embedding_16/embedding_lookup/Identity_1:output:0flatten_24/Const:output:0*
T0*'
_output_shapes
:?????????[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2inputs_0flatten_24/Reshape:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????>o
sequential_16/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   ?
 sequential_16/flatten_25/ReshapeReshapeconcatenate_8/concat:output:0'sequential_16/flatten_25/Const:output:0*
T0*'
_output_shapes
:?????????>?
,sequential_16/dense_32/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_32_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0?
sequential_16/dense_32/MatMulMatMul)sequential_16/flatten_25/Reshape:output:04sequential_16/dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_16/dense_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/dense_32/BiasAddBiasAdd'sequential_16/dense_32/MatMul:product:05sequential_16/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&sequential_16/leaky_re_lu_16/LeakyRelu	LeakyRelu'sequential_16/dense_32/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%
?#<?
,sequential_16/dense_33/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_33_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_16/dense_33/MatMulMatMul4sequential_16/leaky_re_lu_16/LeakyRelu:activations:04sequential_16/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_16/dense_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_16/dense_33/BiasAddBiasAdd'sequential_16/dense_33/MatMul:product:05sequential_16/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_16/dense_33/SigmoidSigmoid'sequential_16/dense_33/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"sequential_16/dense_33/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^embedding_16/embedding_lookup.^sequential_16/dense_32/BiasAdd/ReadVariableOp-^sequential_16/dense_32/MatMul/ReadVariableOp.^sequential_16/dense_33/BiasAdd/ReadVariableOp-^sequential_16/dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2>
embedding_16/embedding_lookupembedding_16/embedding_lookup2^
-sequential_16/dense_32/BiasAdd/ReadVariableOp-sequential_16/dense_32/BiasAdd/ReadVariableOp2\
,sequential_16/dense_32/MatMul/ReadVariableOp,sequential_16/dense_32/MatMul/ReadVariableOp2^
-sequential_16/dense_33/BiasAdd/ReadVariableOp-sequential_16/dense_33/BiasAdd/ReadVariableOp2\
,sequential_16/dense_33/MatMul/ReadVariableOp,sequential_16/dense_33/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
H
,__inference_flatten_24_layer_call_fn_4955998

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956063

inputs9
'dense_32_matmul_readvariableop_resource:>6
(dense_32_biasadd_readvariableop_resource:9
'dense_33_matmul_readvariableop_resource:6
(dense_33_biasadd_readvariableop_resource:
identity??dense_32/BiasAdd/ReadVariableOp?dense_32/MatMul/ReadVariableOp?dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOpa
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   r
flatten_25/ReshapeReshapeinputsflatten_25/Const:output:0*
T0*'
_output_shapes
:?????????>?
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes

:>*
dtype0?
dense_32/MatMulMatMulflatten_25/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????y
leaky_re_lu_16/LeakyRelu	LeakyReludense_32/BiasAdd:output:0*'
_output_shapes
:?????????*
alpha%
?#<?
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_33/MatMulMatMul&leaky_re_lu_16/LeakyRelu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_33/SigmoidSigmoiddense_33/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
IdentityIdentitydense_33/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?	
?
*__inference_model_24_layer_call_fn_4955899
inputs_0
inputs_1
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_24_layer_call_and_return_conditional_losses_4955794o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
H
,__inference_flatten_25_layer_call_fn_4956088

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????>:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
L
0__inference_leaky_re_lu_16_layer_call_fn_4956118

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
[
/__inference_concatenate_8_layer_call_fn_4956010
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?	
?
*__inference_model_24_layer_call_fn_4955883
inputs_0
inputs_1
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_24_layer_call_and_return_conditional_losses_4955722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955794

inputs
inputs_1&
embedding_16_4955779:'
sequential_16_4955784:>#
sequential_16_4955786:'
sequential_16_4955788:#
sequential_16_4955790:
identity??$embedding_16/StatefulPartitionedCall?%sequential_16/StatefulPartitionedCall?
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_16_4955779*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691?
flatten_24/PartitionedCallPartitionedCall-embedding_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701?
concatenate_8/PartitionedCallPartitionedCallinputs#flatten_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710?
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0sequential_16_4955784sequential_16_4955786sequential_16_4955788sequential_16_4955790*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955617}
IdentityIdentity.sequential_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^embedding_16/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955617

inputs"
dense_32_4955605:>
dense_32_4955607:"
dense_33_4955611:
dense_33_4955613:
identity?? dense_32/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
flatten_25/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_32_4955605dense_32_4955607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0dense_33_4955611dense_33_4955613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955861
input_49
input_50&
embedding_16_4955846:'
sequential_16_4955851:>#
sequential_16_4955853:'
sequential_16_4955855:#
sequential_16_4955857:
identity??$embedding_16/StatefulPartitionedCall?%sequential_16/StatefulPartitionedCall?
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallinput_50embedding_16_4955846*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691?
flatten_24/PartitionedCallPartitionedCall-embedding_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701?
concatenate_8/PartitionedCallPartitionedCallinput_49#flatten_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710?
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0sequential_16_4955851sequential_16_4955853sequential_16_4955855sequential_16_4955857*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955617}
IdentityIdentity.sequential_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^embedding_16/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?5
?

 __inference__traced_save_4956239
file_prefix6
2savev2_embedding_16_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_embedding_16_embeddings_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop=
9savev2_adam_embedding_16_embeddings_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_16_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_embedding_16_embeddings_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop9savev2_adam_embedding_16_embeddings_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :: : : : : :>:::: : : : ::>:::::>:::: 2(
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
?
t
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710

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
:?????????>W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955993

inputs*
embedding_lookup_4955987:
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_4955987inputs*
Tindices0*+
_class!
loc:@embedding_lookup/4955987*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/4955987*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????>   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????>X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????>:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
*__inference_dense_33_layer_call_fn_4956132

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955673
flatten_25_input"
dense_32_4955661:>
dense_32_4955663:"
dense_33_4955667:
dense_33_4955669:
identity?? dense_32/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
flatten_25/PartitionedCallPartitionedCallflatten_25_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_32_4955661dense_32_4955663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0dense_33_4955667dense_33_4955669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????>
*
_user_specified_nameflatten_25_input
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955657
flatten_25_input"
dense_32_4955645:>
dense_32_4955647:"
dense_33_4955651:
dense_33_4955653:
identity?? dense_32/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
flatten_25/PartitionedCallPartitionedCallflatten_25_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_32_4955645dense_32_4955647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0dense_33_4955651dense_33_4955653*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????>
*
_user_specified_nameflatten_25_input
?	
?
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512

inputs0
matmul_readvariableop_resource:>-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:>*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????>: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
v
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4956017
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
:?????????>W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????>"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
E__inference_model_24_layer_call_and_return_conditional_losses_4955722

inputs
inputs_1&
embedding_16_4955692:'
sequential_16_4955712:>#
sequential_16_4955714:'
sequential_16_4955716:#
sequential_16_4955718:
identity??$embedding_16/StatefulPartitionedCall?%sequential_16/StatefulPartitionedCall?
$embedding_16/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_16_4955692*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691?
flatten_24/PartitionedCallPartitionedCall-embedding_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_24_layer_call_and_return_conditional_losses_4955701?
concatenate_8/PartitionedCallPartitionedCallinputs#flatten_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4955710?
%sequential_16/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0sequential_16_4955712sequential_16_4955714sequential_16_4955716sequential_16_4955718*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955543}
IdentityIdentity.sequential_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp%^embedding_16/StatefulPartitionedCall&^sequential_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2L
$embedding_16/StatefulPartitionedCall$embedding_16/StatefulPartitionedCall2N
%sequential_16/StatefulPartitionedCall%sequential_16/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4956123

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:?????????*
alpha%
?#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_33_layer_call_and_return_conditional_losses_4956143

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_model_24_layer_call_fn_4955735
input_49
input_50
unknown:
	unknown_0:>
	unknown_1:
	unknown_2:
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_49input_50unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_model_24_layer_call_and_return_conditional_losses_4955722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_49:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_50
?
?
/__inference_sequential_16_layer_call_fn_4955554
flatten_25_input
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_25_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????>
*
_user_specified_nameflatten_25_input
?
?
.__inference_embedding_16_layer_call_fn_4955984

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955543

inputs"
dense_32_4955513:>
dense_32_4955515:"
dense_33_4955537:
dense_33_4955539:
identity?? dense_32/StatefulPartitionedCall? dense_33/StatefulPartitionedCall?
flatten_25/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????>* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_flatten_25_layer_call_and_return_conditional_losses_4955500?
 dense_32/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_32_4955513dense_32_4955515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_32_layer_call_and_return_conditional_losses_4955512?
leaky_re_lu_16/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_16/PartitionedCall:output:0dense_33_4955537dense_33_4955539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dense_33_layer_call_and_return_conditional_losses_4955536x
IdentityIdentity)dense_33/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
g
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4955523

inputs
identityW
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:?????????*
alpha%
?#<_
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_16_layer_call_fn_4956030

inputs
unknown:>
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????>: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????>
 
_user_specified_nameinputs
?
?
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955691

inputs*
embedding_lookup_4955685:
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_4955685inputs*
Tindices0*+
_class!
loc:@embedding_lookup/4955685*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/4955685*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_491
serving_default_input_49:0?????????
=
input_501
serving_default_input_50:0?????????A
sequential_160
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
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
?
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
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
?
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
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratem?2m?3m?4m?5m?v?2v?3v?4v?5v?"
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
?
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
?2?
*__inference_model_24_layer_call_fn_4955735
*__inference_model_24_layer_call_fn_4955883
*__inference_model_24_layer_call_fn_4955899
*__inference_model_24_layer_call_fn_4955823?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_24_layer_call_and_return_conditional_losses_4955929
E__inference_model_24_layer_call_and_return_conditional_losses_4955959
E__inference_model_24_layer_call_and_return_conditional_losses_4955842
E__inference_model_24_layer_call_and_return_conditional_losses_4955861?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_4955487input_49input_50"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
;serving_default"
signature_map
):'2embedding_16/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
.__inference_embedding_16_layer_call_fn_4955984?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955993?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
,__inference_flatten_24_layer_call_fn_4955998?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_24_layer_call_and_return_conditional_losses_4956004?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
/__inference_concatenate_8_layer_call_fn_4956010?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4956017?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
?
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?

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
?
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
?2?
/__inference_sequential_16_layer_call_fn_4955554
/__inference_sequential_16_layer_call_fn_4956030
/__inference_sequential_16_layer_call_fn_4956043
/__inference_sequential_16_layer_call_fn_4955641?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956063
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956083
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955657
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955673?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
!:>2dense_32/kernel
:2dense_32/bias
!:2dense_33/kernel
:2dense_33/bias
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
?B?
%__inference_signature_wrapper_4955977input_49input_50"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?
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
?2?
,__inference_flatten_25_layer_call_fn_4956088?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_flatten_25_layer_call_and_return_conditional_losses_4956094?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
*__inference_dense_32_layer_call_fn_4956103?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_32_layer_call_and_return_conditional_losses_4956113?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
0__inference_leaky_re_lu_16_layer_call_fn_4956118?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4956123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
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
?2?
*__inference_dense_33_layer_call_fn_4956132?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_33_layer_call_and_return_conditional_losses_4956143?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
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
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
.:,2Adam/embedding_16/embeddings/m
&:$>2Adam/dense_32/kernel/m
 :2Adam/dense_32/bias/m
&:$2Adam/dense_33/kernel/m
 :2Adam/dense_33/bias/m
.:,2Adam/embedding_16/embeddings/v
&:$>2Adam/dense_32/kernel/v
 :2Adam/dense_32/bias/v
&:$2Adam/dense_33/kernel/v
 :2Adam/dense_33/bias/v?
"__inference__wrapped_model_4955487?2345Z?W
P?M
K?H
"?
input_49?????????
"?
input_50?????????
? "=?:
8
sequential_16'?$
sequential_16??????????
J__inference_concatenate_8_layer_call_and_return_conditional_losses_4956017?Z?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "%?"
?
0?????????>
? ?
/__inference_concatenate_8_layer_call_fn_4956010vZ?W
P?M
K?H
"?
inputs/0?????????
"?
inputs/1?????????
? "??????????>?
E__inference_dense_32_layer_call_and_return_conditional_losses_4956113\23/?,
%?"
 ?
inputs?????????>
? "%?"
?
0?????????
? }
*__inference_dense_32_layer_call_fn_4956103O23/?,
%?"
 ?
inputs?????????>
? "???????????
E__inference_dense_33_layer_call_and_return_conditional_losses_4956143\45/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_33_layer_call_fn_4956132O45/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_embedding_16_layer_call_and_return_conditional_losses_4955993_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
.__inference_embedding_16_layer_call_fn_4955984R/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_flatten_24_layer_call_and_return_conditional_losses_4956004\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? 
,__inference_flatten_24_layer_call_fn_4955998O3?0
)?&
$?!
inputs?????????
? "???????????
G__inference_flatten_25_layer_call_and_return_conditional_losses_4956094X/?,
%?"
 ?
inputs?????????>
? "%?"
?
0?????????>
? {
,__inference_flatten_25_layer_call_fn_4956088K/?,
%?"
 ?
inputs?????????>
? "??????????>?
K__inference_leaky_re_lu_16_layer_call_and_return_conditional_losses_4956123X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
0__inference_leaky_re_lu_16_layer_call_fn_4956118K/?,
%?"
 ?
inputs?????????
? "???????????
E__inference_model_24_layer_call_and_return_conditional_losses_4955842?2345b?_
X?U
K?H
"?
input_49?????????
"?
input_50?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_24_layer_call_and_return_conditional_losses_4955861?2345b?_
X?U
K?H
"?
input_49?????????
"?
input_50?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_24_layer_call_and_return_conditional_losses_4955929?2345b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_24_layer_call_and_return_conditional_losses_4955959?2345b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_model_24_layer_call_fn_4955735?2345b?_
X?U
K?H
"?
input_49?????????
"?
input_50?????????
p 

 
? "???????????
*__inference_model_24_layer_call_fn_4955823?2345b?_
X?U
K?H
"?
input_49?????????
"?
input_50?????????
p

 
? "???????????
*__inference_model_24_layer_call_fn_4955883?2345b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
*__inference_model_24_layer_call_fn_4955899?2345b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955657p2345A?>
7?4
*?'
flatten_25_input?????????>
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4955673p2345A?>
7?4
*?'
flatten_25_input?????????>
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956063f23457?4
-?*
 ?
inputs?????????>
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_16_layer_call_and_return_conditional_losses_4956083f23457?4
-?*
 ?
inputs?????????>
p

 
? "%?"
?
0?????????
? ?
/__inference_sequential_16_layer_call_fn_4955554c2345A?>
7?4
*?'
flatten_25_input?????????>
p 

 
? "???????????
/__inference_sequential_16_layer_call_fn_4955641c2345A?>
7?4
*?'
flatten_25_input?????????>
p

 
? "???????????
/__inference_sequential_16_layer_call_fn_4956030Y23457?4
-?*
 ?
inputs?????????>
p 

 
? "???????????
/__inference_sequential_16_layer_call_fn_4956043Y23457?4
-?*
 ?
inputs?????????>
p

 
? "???????????
%__inference_signature_wrapper_4955977?2345m?j
? 
c?`
.
input_49"?
input_49?????????
.
input_50"?
input_50?????????"=?:
8
sequential_16'?$
sequential_16?????????