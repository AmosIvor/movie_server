��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
$
DisableCopyOnRead
resource�
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
�
0Adam/v/recommender_net_3/embedding_15/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K*A
shared_name20Adam/v/recommender_net_3/embedding_15/embeddings
�
DAdam/v/recommender_net_3/embedding_15/embeddings/Read/ReadVariableOpReadVariableOp0Adam/v/recommender_net_3/embedding_15/embeddings*
_output_shapes
:	�K*
dtype0
�
0Adam/m/recommender_net_3/embedding_15/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K*A
shared_name20Adam/m/recommender_net_3/embedding_15/embeddings
�
DAdam/m/recommender_net_3/embedding_15/embeddings/Read/ReadVariableOpReadVariableOp0Adam/m/recommender_net_3/embedding_15/embeddings*
_output_shapes
:	�K*
dtype0
�
0Adam/v/recommender_net_3/embedding_14/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K2*A
shared_name20Adam/v/recommender_net_3/embedding_14/embeddings
�
DAdam/v/recommender_net_3/embedding_14/embeddings/Read/ReadVariableOpReadVariableOp0Adam/v/recommender_net_3/embedding_14/embeddings*
_output_shapes
:	�K2*
dtype0
�
0Adam/m/recommender_net_3/embedding_14/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K2*A
shared_name20Adam/m/recommender_net_3/embedding_14/embeddings
�
DAdam/m/recommender_net_3/embedding_14/embeddings/Read/ReadVariableOpReadVariableOp0Adam/m/recommender_net_3/embedding_14/embeddings*
_output_shapes
:	�K2*
dtype0
�
0Adam/v/recommender_net_3/embedding_13/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*A
shared_name20Adam/v/recommender_net_3/embedding_13/embeddings
�
DAdam/v/recommender_net_3/embedding_13/embeddings/Read/ReadVariableOpReadVariableOp0Adam/v/recommender_net_3/embedding_13/embeddings*
_output_shapes
:	�*
dtype0
�
0Adam/m/recommender_net_3/embedding_13/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*A
shared_name20Adam/m/recommender_net_3/embedding_13/embeddings
�
DAdam/m/recommender_net_3/embedding_13/embeddings/Read/ReadVariableOpReadVariableOp0Adam/m/recommender_net_3/embedding_13/embeddings*
_output_shapes
:	�*
dtype0
�
0Adam/v/recommender_net_3/embedding_12/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*A
shared_name20Adam/v/recommender_net_3/embedding_12/embeddings
�
DAdam/v/recommender_net_3/embedding_12/embeddings/Read/ReadVariableOpReadVariableOp0Adam/v/recommender_net_3/embedding_12/embeddings*
_output_shapes
:	�2*
dtype0
�
0Adam/m/recommender_net_3/embedding_12/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*A
shared_name20Adam/m/recommender_net_3/embedding_12/embeddings
�
DAdam/m/recommender_net_3/embedding_12/embeddings/Read/ReadVariableOpReadVariableOp0Adam/m/recommender_net_3/embedding_12/embeddings*
_output_shapes
:	�2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
)recommender_net_3/embedding_15/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K*:
shared_name+)recommender_net_3/embedding_15/embeddings
�
=recommender_net_3/embedding_15/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_3/embedding_15/embeddings*
_output_shapes
:	�K*
dtype0
�
)recommender_net_3/embedding_14/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�K2*:
shared_name+)recommender_net_3/embedding_14/embeddings
�
=recommender_net_3/embedding_14/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_3/embedding_14/embeddings*
_output_shapes
:	�K2*
dtype0
�
)recommender_net_3/embedding_13/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*:
shared_name+)recommender_net_3/embedding_13/embeddings
�
=recommender_net_3/embedding_13/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_3/embedding_13/embeddings*
_output_shapes
:	�*
dtype0
�
)recommender_net_3/embedding_12/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*:
shared_name+)recommender_net_3/embedding_12/embeddings
�
=recommender_net_3/embedding_12/embeddings/Read/ReadVariableOpReadVariableOp)recommender_net_3/embedding_12/embeddings*
_output_shapes
:	�2*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1)recommender_net_3/embedding_12/embeddings)recommender_net_3/embedding_13/embeddings)recommender_net_3/embedding_14/embeddings)recommender_net_3/embedding_15/embeddings*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_173620

NoOpNoOp
�-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�-
value�-B�- B�-
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding
		user_bias

movie_embedding

movie_bias
	optimizer

signatures*
 
0
1
2
3*
 
0
1
2
3*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings*
�
5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla*

<serving_default* 
ic
VARIABLE_VALUE)recommender_net_3/embedding_12/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)recommender_net_3/embedding_13/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)recommender_net_3/embedding_14/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)recommender_net_3/embedding_15/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*

=trace_0* 

>trace_0* 
* 
 
0
	1

2
3*

?0
@1
A2*
* 
* 
* 
* 
* 
* 

0*

0*
	
0* 
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

Gtrace_0* 

Htrace_0* 

0*

0*
* 
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

Ntrace_0* 

Otrace_0* 

0*

0*
	
0* 
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Utrace_0* 

Vtrace_0* 

0*

0*
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
C
60
^1
_2
`3
a4
b5
c6
d7
e8*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
^0
`1
b2
d3*
 
_0
a1
c2
e3*
* 
* 
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
H
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs*
H
o	variables
p	keras_api
	qtotal
	rcount
s
_fn_kwargs*
* 
* 
* 
	
0* 
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
	
0* 
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
{u
VARIABLE_VALUE0Adam/m/recommender_net_3/embedding_12/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/v/recommender_net_3/embedding_12/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/m/recommender_net_3/embedding_13/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/v/recommender_net_3/embedding_13/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/m/recommender_net_3/embedding_14/embeddings1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/v/recommender_net_3/embedding_14/embeddings1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/m/recommender_net_3/embedding_15/embeddings1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE0Adam/v/recommender_net_3/embedding_15/embeddings1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

q0
r1*

o	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)recommender_net_3/embedding_12/embeddings)recommender_net_3/embedding_13/embeddings)recommender_net_3/embedding_14/embeddings)recommender_net_3/embedding_15/embeddings	iterationlearning_rate0Adam/m/recommender_net_3/embedding_12/embeddings0Adam/v/recommender_net_3/embedding_12/embeddings0Adam/m/recommender_net_3/embedding_13/embeddings0Adam/v/recommender_net_3/embedding_13/embeddings0Adam/m/recommender_net_3/embedding_14/embeddings0Adam/v/recommender_net_3/embedding_14/embeddings0Adam/m/recommender_net_3/embedding_15/embeddings0Adam/v/recommender_net_3/embedding_15/embeddingstotal_2count_2total_1count_1totalcountConst*!
Tin
2*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_173961
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename)recommender_net_3/embedding_12/embeddings)recommender_net_3/embedding_13/embeddings)recommender_net_3/embedding_14/embeddings)recommender_net_3/embedding_15/embeddings	iterationlearning_rate0Adam/m/recommender_net_3/embedding_12/embeddings0Adam/v/recommender_net_3/embedding_12/embeddings0Adam/m/recommender_net_3/embedding_13/embeddings0Adam/v/recommender_net_3/embedding_13/embeddings0Adam/m/recommender_net_3/embedding_14/embeddings0Adam/v/recommender_net_3/embedding_14/embeddings0Adam/m/recommender_net_3/embedding_15/embeddings0Adam/v/recommender_net_3/embedding_15/embeddingstotal_2count_2total_1count_1totalcount* 
Tin
2*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_174031�
�
�
2__inference_recommender_net_3_layer_call_fn_173633

inputs	
unknown:	�2
	unknown_0:	�
	unknown_1:	�K2
	unknown_2:	�K
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_13_layer_call_and_return_conditional_losses_173367

inputs	*
embedding_lookup_173361:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_173361inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173361*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173361*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_12_layer_call_and_return_conditional_losses_173766

inputs	*
embedding_lookup_173756:	�2
identity��embedding_lookup�Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_173756inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173756*'
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173756*'
_output_shapes
:���������2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_173756*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^embedding_lookupL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_173746g
Trecommender_net_3_embedding_14_embeddings_regularizer_l2loss_readvariableop_resource:	�K2
identity��Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpTrecommender_net_3_embedding_14_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity=recommender_net_3/embedding_14/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp
�]
�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173539

inputs	&
embedding_12_173467:	�2&
embedding_13_173474:	�&
embedding_14_173481:	�K2&
embedding_15_173488:	�K
identity��$embedding_12/StatefulPartitionedCall�$embedding_13/StatefulPartitionedCall�$embedding_14/StatefulPartitionedCall�$embedding_15/StatefulPartitionedCall�Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_12_173467*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_12_layer_call_and_return_conditional_losses_173350f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_13_173474*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_13_layer_call_and_return_conditional_losses_173367f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_14_173481*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_14_layer_call_and_return_conditional_losses_173388f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_15_173488*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_15_layer_call_and_return_conditional_losses_173405_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB z
Tensordot/ShapeShape-embedding_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose-embedding_12/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB |
Tensordot/Shape_1Shape-embedding_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose-embedding_14/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
addAddV2Tensordot:output:0-embedding_13/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������x
add_1AddV2add:z:0-embedding_15/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������O
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:����������
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_12_173467*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_14_173481*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_12/StatefulPartitionedCall%^embedding_13/StatefulPartitionedCall%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCallL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2L
$embedding_12/StatefulPartitionedCall$embedding_12/StatefulPartitionedCall2L
$embedding_13/StatefulPartitionedCall$embedding_13/StatefulPartitionedCall2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�d
�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173720

inputs	7
$embedding_12_embedding_lookup_173640:	�27
$embedding_13_embedding_lookup_173649:	�7
$embedding_14_embedding_lookup_173658:	�K27
$embedding_15_embedding_lookup_173667:	�K
identity��embedding_12/embedding_lookup�embedding_13/embedding_lookup�embedding_14/embedding_lookup�embedding_15/embedding_lookup�Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_12/embedding_lookupResourceGather$embedding_12_embedding_lookup_173640strided_slice:output:0*
Tindices0	*7
_class-
+)loc:@embedding_12/embedding_lookup/173640*'
_output_shapes
:���������2*
dtype0�
&embedding_12/embedding_lookup/IdentityIdentity&embedding_12/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_12/embedding_lookup/173640*'
_output_shapes
:���������2�
(embedding_12/embedding_lookup/Identity_1Identity/embedding_12/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_13/embedding_lookupResourceGather$embedding_13_embedding_lookup_173649strided_slice_1:output:0*
Tindices0	*7
_class-
+)loc:@embedding_13/embedding_lookup/173649*'
_output_shapes
:���������*
dtype0�
&embedding_13/embedding_lookup/IdentityIdentity&embedding_13/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_13/embedding_lookup/173649*'
_output_shapes
:����������
(embedding_13/embedding_lookup/Identity_1Identity/embedding_13/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_14/embedding_lookupResourceGather$embedding_14_embedding_lookup_173658strided_slice_2:output:0*
Tindices0	*7
_class-
+)loc:@embedding_14/embedding_lookup/173658*'
_output_shapes
:���������2*
dtype0�
&embedding_14/embedding_lookup/IdentityIdentity&embedding_14/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_14/embedding_lookup/173658*'
_output_shapes
:���������2�
(embedding_14/embedding_lookup/Identity_1Identity/embedding_14/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_15/embedding_lookupResourceGather$embedding_15_embedding_lookup_173667strided_slice_3:output:0*
Tindices0	*7
_class-
+)loc:@embedding_15/embedding_lookup/173667*'
_output_shapes
:���������*
dtype0�
&embedding_15/embedding_lookup/IdentityIdentity&embedding_15/embedding_lookup:output:0*
T0*7
_class-
+)loc:@embedding_15/embedding_lookup/173667*'
_output_shapes
:����������
(embedding_15/embedding_lookup/Identity_1Identity/embedding_15/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB ~
Tensordot/ShapeShape1embedding_12/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose1embedding_12/embedding_lookup/Identity_1:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB �
Tensordot/Shape_1Shape1embedding_14/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::��[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose1embedding_14/embedding_lookup/Identity_1:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
addAddV2Tensordot:output:01embedding_13/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������|
add_1AddV2add:z:01embedding_15/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������O
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:����������
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp$embedding_12_embedding_lookup_173640*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOp$embedding_14_embedding_lookup_173658*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^embedding_12/embedding_lookup^embedding_13/embedding_lookup^embedding_14/embedding_lookup^embedding_15/embedding_lookupL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2>
embedding_12/embedding_lookupembedding_12/embedding_lookup2>
embedding_13/embedding_lookupembedding_13/embedding_lookup2>
embedding_14/embedding_lookupembedding_14/embedding_lookup2>
embedding_15/embedding_lookupembedding_15/embedding_lookup2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_13_layer_call_and_return_conditional_losses_173782

inputs	*
embedding_lookup_173776:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_173776inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173776*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173776*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_14_layer_call_and_return_conditional_losses_173388

inputs	*
embedding_lookup_173378:	�K2
identity��embedding_lookup�Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_173378inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173378*'
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173378*'
_output_shapes
:���������2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_173378*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^embedding_lookupL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
ŝ
�
__inference__traced_save_173961
file_prefixS
@read_disablecopyonread_recommender_net_3_embedding_12_embeddings:	�2U
Bread_1_disablecopyonread_recommender_net_3_embedding_13_embeddings:	�U
Bread_2_disablecopyonread_recommender_net_3_embedding_14_embeddings:	�K2U
Bread_3_disablecopyonread_recommender_net_3_embedding_15_embeddings:	�K,
"read_4_disablecopyonread_iteration:	 0
&read_5_disablecopyonread_learning_rate: \
Iread_6_disablecopyonread_adam_m_recommender_net_3_embedding_12_embeddings:	�2\
Iread_7_disablecopyonread_adam_v_recommender_net_3_embedding_12_embeddings:	�2\
Iread_8_disablecopyonread_adam_m_recommender_net_3_embedding_13_embeddings:	�\
Iread_9_disablecopyonread_adam_v_recommender_net_3_embedding_13_embeddings:	�]
Jread_10_disablecopyonread_adam_m_recommender_net_3_embedding_14_embeddings:	�K2]
Jread_11_disablecopyonread_adam_v_recommender_net_3_embedding_14_embeddings:	�K2]
Jread_12_disablecopyonread_adam_m_recommender_net_3_embedding_15_embeddings:	�K]
Jread_13_disablecopyonread_adam_v_recommender_net_3_embedding_15_embeddings:	�K+
!read_14_disablecopyonread_total_2: +
!read_15_disablecopyonread_count_2: +
!read_16_disablecopyonread_total_1: +
!read_17_disablecopyonread_count_1: )
read_18_disablecopyonread_total: )
read_19_disablecopyonread_count: 
savev2_const
identity_41��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead@read_disablecopyonread_recommender_net_3_embedding_12_embeddings"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp@read_disablecopyonread_recommender_net_3_embedding_12_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_1/DisableCopyOnReadDisableCopyOnReadBread_1_disablecopyonread_recommender_net_3_embedding_13_embeddings"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOpBread_1_disablecopyonread_recommender_net_3_embedding_13_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_2/DisableCopyOnReadDisableCopyOnReadBread_2_disablecopyonread_recommender_net_3_embedding_14_embeddings"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpBread_2_disablecopyonread_recommender_net_3_embedding_14_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K2*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�K2d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�K2�
Read_3/DisableCopyOnReadDisableCopyOnReadBread_3_disablecopyonread_recommender_net_3_embedding_15_embeddings"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpBread_3_disablecopyonread_recommender_net_3_embedding_15_embeddings^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Kd

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	�Kv
Read_4/DisableCopyOnReadDisableCopyOnRead"read_4_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp"read_4_disablecopyonread_iteration^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_learning_rate^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_6/DisableCopyOnReadDisableCopyOnReadIread_6_disablecopyonread_adam_m_recommender_net_3_embedding_12_embeddings"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOpIread_6_disablecopyonread_adam_m_recommender_net_3_embedding_12_embeddings^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_7/DisableCopyOnReadDisableCopyOnReadIread_7_disablecopyonread_adam_v_recommender_net_3_embedding_12_embeddings"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpIread_7_disablecopyonread_adam_v_recommender_net_3_embedding_12_embeddings^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�2*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�2f
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	�2�
Read_8/DisableCopyOnReadDisableCopyOnReadIread_8_disablecopyonread_adam_m_recommender_net_3_embedding_13_embeddings"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOpIread_8_disablecopyonread_adam_m_recommender_net_3_embedding_13_embeddings^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_9/DisableCopyOnReadDisableCopyOnReadIread_9_disablecopyonread_adam_v_recommender_net_3_embedding_13_embeddings"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpIread_9_disablecopyonread_adam_v_recommender_net_3_embedding_13_embeddings^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_10/DisableCopyOnReadDisableCopyOnReadJread_10_disablecopyonread_adam_m_recommender_net_3_embedding_14_embeddings"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpJread_10_disablecopyonread_adam_m_recommender_net_3_embedding_14_embeddings^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K2*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�K2f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	�K2�
Read_11/DisableCopyOnReadDisableCopyOnReadJread_11_disablecopyonread_adam_v_recommender_net_3_embedding_14_embeddings"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpJread_11_disablecopyonread_adam_v_recommender_net_3_embedding_14_embeddings^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K2*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�K2f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	�K2�
Read_12/DisableCopyOnReadDisableCopyOnReadJread_12_disablecopyonread_adam_m_recommender_net_3_embedding_15_embeddings"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOpJread_12_disablecopyonread_adam_m_recommender_net_3_embedding_15_embeddings^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Kf
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�K�
Read_13/DisableCopyOnReadDisableCopyOnReadJread_13_disablecopyonread_adam_v_recommender_net_3_embedding_15_embeddings"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOpJread_13_disablecopyonread_adam_v_recommender_net_3_embedding_15_embeddings^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�K*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�Kf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	�Kv
Read_14/DisableCopyOnReadDisableCopyOnRead!read_14_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp!read_14_disablecopyonread_total_2^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_15/DisableCopyOnReadDisableCopyOnRead!read_15_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp!read_15_disablecopyonread_count_2^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_16/DisableCopyOnReadDisableCopyOnRead!read_16_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp!read_16_disablecopyonread_total_1^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_17/DisableCopyOnReadDisableCopyOnRead!read_17_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp!read_17_disablecopyonread_count_1^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_18/DisableCopyOnReadDisableCopyOnReadread_18_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOpread_18_disablecopyonread_total^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_19/DisableCopyOnReadDisableCopyOnReadread_19_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOpread_19_disablecopyonread_count^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *#
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_40Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_41IdentityIdentity_40:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_41Identity_41:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�l
�
!__inference__wrapped_model_173329
input_1	I
6recommender_net_3_embedding_12_embedding_lookup_173257:	�2I
6recommender_net_3_embedding_13_embedding_lookup_173266:	�I
6recommender_net_3_embedding_14_embedding_lookup_173275:	�K2I
6recommender_net_3_embedding_15_embedding_lookup_173284:	�K
identity��/recommender_net_3/embedding_12/embedding_lookup�/recommender_net_3/embedding_13/embedding_lookup�/recommender_net_3/embedding_14/embedding_lookup�/recommender_net_3/embedding_15/embedding_lookupv
%recommender_net_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'recommender_net_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'recommender_net_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
recommender_net_3/strided_sliceStridedSliceinput_1.recommender_net_3/strided_slice/stack:output:00recommender_net_3/strided_slice/stack_1:output:00recommender_net_3/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
/recommender_net_3/embedding_12/embedding_lookupResourceGather6recommender_net_3_embedding_12_embedding_lookup_173257(recommender_net_3/strided_slice:output:0*
Tindices0	*I
_class?
=;loc:@recommender_net_3/embedding_12/embedding_lookup/173257*'
_output_shapes
:���������2*
dtype0�
8recommender_net_3/embedding_12/embedding_lookup/IdentityIdentity8recommender_net_3/embedding_12/embedding_lookup:output:0*
T0*I
_class?
=;loc:@recommender_net_3/embedding_12/embedding_lookup/173257*'
_output_shapes
:���������2�
:recommender_net_3/embedding_12/embedding_lookup/Identity_1IdentityArecommender_net_3/embedding_12/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2x
'recommender_net_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)recommender_net_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!recommender_net_3/strided_slice_1StridedSliceinput_10recommender_net_3/strided_slice_1/stack:output:02recommender_net_3/strided_slice_1/stack_1:output:02recommender_net_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
/recommender_net_3/embedding_13/embedding_lookupResourceGather6recommender_net_3_embedding_13_embedding_lookup_173266*recommender_net_3/strided_slice_1:output:0*
Tindices0	*I
_class?
=;loc:@recommender_net_3/embedding_13/embedding_lookup/173266*'
_output_shapes
:���������*
dtype0�
8recommender_net_3/embedding_13/embedding_lookup/IdentityIdentity8recommender_net_3/embedding_13/embedding_lookup:output:0*
T0*I
_class?
=;loc:@recommender_net_3/embedding_13/embedding_lookup/173266*'
_output_shapes
:����������
:recommender_net_3/embedding_13/embedding_lookup/Identity_1IdentityArecommender_net_3/embedding_13/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������x
'recommender_net_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!recommender_net_3/strided_slice_2StridedSliceinput_10recommender_net_3/strided_slice_2/stack:output:02recommender_net_3/strided_slice_2/stack_1:output:02recommender_net_3/strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
/recommender_net_3/embedding_14/embedding_lookupResourceGather6recommender_net_3_embedding_14_embedding_lookup_173275*recommender_net_3/strided_slice_2:output:0*
Tindices0	*I
_class?
=;loc:@recommender_net_3/embedding_14/embedding_lookup/173275*'
_output_shapes
:���������2*
dtype0�
8recommender_net_3/embedding_14/embedding_lookup/IdentityIdentity8recommender_net_3/embedding_14/embedding_lookup:output:0*
T0*I
_class?
=;loc:@recommender_net_3/embedding_14/embedding_lookup/173275*'
_output_shapes
:���������2�
:recommender_net_3/embedding_14/embedding_lookup/Identity_1IdentityArecommender_net_3/embedding_14/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2x
'recommender_net_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)recommender_net_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
!recommender_net_3/strided_slice_3StridedSliceinput_10recommender_net_3/strided_slice_3/stack:output:02recommender_net_3/strided_slice_3/stack_1:output:02recommender_net_3/strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
/recommender_net_3/embedding_15/embedding_lookupResourceGather6recommender_net_3_embedding_15_embedding_lookup_173284*recommender_net_3/strided_slice_3:output:0*
Tindices0	*I
_class?
=;loc:@recommender_net_3/embedding_15/embedding_lookup/173284*'
_output_shapes
:���������*
dtype0�
8recommender_net_3/embedding_15/embedding_lookup/IdentityIdentity8recommender_net_3/embedding_15/embedding_lookup:output:0*
T0*I
_class?
=;loc:@recommender_net_3/embedding_15/embedding_lookup/173284*'
_output_shapes
:����������
:recommender_net_3/embedding_15/embedding_lookup/Identity_1IdentityArecommender_net_3/embedding_15/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������q
 recommender_net_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       c
 recommender_net_3/Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB �
!recommender_net_3/Tensordot/ShapeShapeCrecommender_net_3/embedding_12/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::��k
)recommender_net_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net_3/Tensordot/GatherV2GatherV2*recommender_net_3/Tensordot/Shape:output:0)recommender_net_3/Tensordot/free:output:02recommender_net_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&recommender_net_3/Tensordot/GatherV2_1GatherV2*recommender_net_3/Tensordot/Shape:output:0)recommender_net_3/Tensordot/axes:output:04recommender_net_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!recommender_net_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 recommender_net_3/Tensordot/ProdProd-recommender_net_3/Tensordot/GatherV2:output:0*recommender_net_3/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#recommender_net_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"recommender_net_3/Tensordot/Prod_1Prod/recommender_net_3/Tensordot/GatherV2_1:output:0,recommender_net_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'recommender_net_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"recommender_net_3/Tensordot/concatConcatV2)recommender_net_3/Tensordot/free:output:0)recommender_net_3/Tensordot/axes:output:00recommender_net_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!recommender_net_3/Tensordot/stackPack)recommender_net_3/Tensordot/Prod:output:0+recommender_net_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%recommender_net_3/Tensordot/transpose	TransposeCrecommender_net_3/embedding_12/embedding_lookup/Identity_1:output:0+recommender_net_3/Tensordot/concat:output:0*
T0*'
_output_shapes
:���������2�
#recommender_net_3/Tensordot/ReshapeReshape)recommender_net_3/Tensordot/transpose:y:0*recommender_net_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������s
"recommender_net_3/Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       e
"recommender_net_3/Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB �
#recommender_net_3/Tensordot/Shape_1ShapeCrecommender_net_3/embedding_14/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
::��m
+recommender_net_3/Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&recommender_net_3/Tensordot/GatherV2_2GatherV2,recommender_net_3/Tensordot/Shape_1:output:0+recommender_net_3/Tensordot/free_1:output:04recommender_net_3/Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: m
+recommender_net_3/Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&recommender_net_3/Tensordot/GatherV2_3GatherV2,recommender_net_3/Tensordot/Shape_1:output:0+recommender_net_3/Tensordot/axes_1:output:04recommender_net_3/Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#recommender_net_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: �
"recommender_net_3/Tensordot/Prod_2Prod/recommender_net_3/Tensordot/GatherV2_2:output:0,recommender_net_3/Tensordot/Const_2:output:0*
T0*
_output_shapes
: m
#recommender_net_3/Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: �
"recommender_net_3/Tensordot/Prod_3Prod/recommender_net_3/Tensordot/GatherV2_3:output:0,recommender_net_3/Tensordot/Const_3:output:0*
T0*
_output_shapes
: k
)recommender_net_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net_3/Tensordot/concat_1ConcatV2+recommender_net_3/Tensordot/axes_1:output:0+recommender_net_3/Tensordot/free_1:output:02recommender_net_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
#recommender_net_3/Tensordot/stack_1Pack+recommender_net_3/Tensordot/Prod_3:output:0+recommender_net_3/Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
'recommender_net_3/Tensordot/transpose_1	TransposeCrecommender_net_3/embedding_14/embedding_lookup/Identity_1:output:0-recommender_net_3/Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������2�
%recommender_net_3/Tensordot/Reshape_1Reshape+recommender_net_3/Tensordot/transpose_1:y:0,recommender_net_3/Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
"recommender_net_3/Tensordot/MatMulMatMul,recommender_net_3/Tensordot/Reshape:output:0.recommender_net_3/Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������k
)recommender_net_3/Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$recommender_net_3/Tensordot/concat_2ConcatV2-recommender_net_3/Tensordot/GatherV2:output:0/recommender_net_3/Tensordot/GatherV2_2:output:02recommender_net_3/Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: �
recommender_net_3/TensordotReshape,recommender_net_3/Tensordot/MatMul:product:0-recommender_net_3/Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
recommender_net_3/addAddV2$recommender_net_3/Tensordot:output:0Crecommender_net_3/embedding_13/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:����������
recommender_net_3/add_1AddV2recommender_net_3/add:z:0Crecommender_net_3/embedding_15/embedding_lookup/Identity_1:output:0*
T0*'
_output_shapes
:���������s
recommender_net_3/SigmoidSigmoidrecommender_net_3/add_1:z:0*
T0*'
_output_shapes
:���������l
IdentityIdentityrecommender_net_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^recommender_net_3/embedding_12/embedding_lookup0^recommender_net_3/embedding_13/embedding_lookup0^recommender_net_3/embedding_14/embedding_lookup0^recommender_net_3/embedding_15/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2b
/recommender_net_3/embedding_12/embedding_lookup/recommender_net_3/embedding_12/embedding_lookup2b
/recommender_net_3/embedding_13/embedding_lookup/recommender_net_3/embedding_13/embedding_lookup2b
/recommender_net_3/embedding_14/embedding_lookup/recommender_net_3/embedding_14/embedding_lookup2b
/recommender_net_3/embedding_15/embedding_lookup/recommender_net_3/embedding_15/embedding_lookup:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
H__inference_embedding_15_layer_call_and_return_conditional_losses_173818

inputs	*
embedding_lookup_173812:	�K
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_173812inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173812*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173812*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_15_layer_call_and_return_conditional_losses_173405

inputs	*
embedding_lookup_173399:	�K
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_173399inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173399*'
_output_shapes
:���������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173399*'
_output_shapes
:���������}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_embedding_14_layer_call_fn_173789

inputs	
unknown:	�K2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_14_layer_call_and_return_conditional_losses_173388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�[
�
"__inference__traced_restore_174031
file_prefixM
:assignvariableop_recommender_net_3_embedding_12_embeddings:	�2O
<assignvariableop_1_recommender_net_3_embedding_13_embeddings:	�O
<assignvariableop_2_recommender_net_3_embedding_14_embeddings:	�K2O
<assignvariableop_3_recommender_net_3_embedding_15_embeddings:	�K&
assignvariableop_4_iteration:	 *
 assignvariableop_5_learning_rate: V
Cassignvariableop_6_adam_m_recommender_net_3_embedding_12_embeddings:	�2V
Cassignvariableop_7_adam_v_recommender_net_3_embedding_12_embeddings:	�2V
Cassignvariableop_8_adam_m_recommender_net_3_embedding_13_embeddings:	�V
Cassignvariableop_9_adam_v_recommender_net_3_embedding_13_embeddings:	�W
Dassignvariableop_10_adam_m_recommender_net_3_embedding_14_embeddings:	�K2W
Dassignvariableop_11_adam_v_recommender_net_3_embedding_14_embeddings:	�K2W
Dassignvariableop_12_adam_m_recommender_net_3_embedding_15_embeddings:	�KW
Dassignvariableop_13_adam_v_recommender_net_3_embedding_15_embeddings:	�K%
assignvariableop_14_total_2: %
assignvariableop_15_count_2: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: #
assignvariableop_18_total: #
assignvariableop_19_count: 
identity_21��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp:assignvariableop_recommender_net_3_embedding_12_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp<assignvariableop_1_recommender_net_3_embedding_13_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp<assignvariableop_2_recommender_net_3_embedding_14_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp<assignvariableop_3_recommender_net_3_embedding_15_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_iterationIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpCassignvariableop_6_adam_m_recommender_net_3_embedding_12_embeddingsIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpCassignvariableop_7_adam_v_recommender_net_3_embedding_12_embeddingsIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpCassignvariableop_8_adam_m_recommender_net_3_embedding_13_embeddingsIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpCassignvariableop_9_adam_v_recommender_net_3_embedding_13_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpDassignvariableop_10_adam_m_recommender_net_3_embedding_14_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpDassignvariableop_11_adam_v_recommender_net_3_embedding_14_embeddingsIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpDassignvariableop_12_adam_m_recommender_net_3_embedding_15_embeddingsIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpDassignvariableop_13_adam_v_recommender_net_3_embedding_15_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_2Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_2Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22(
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
�
�
-__inference_embedding_12_layer_call_fn_173753

inputs	
unknown:	�2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_12_layer_call_and_return_conditional_losses_173350o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_embedding_15_layer_call_fn_173809

inputs	
unknown:	�K
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_15_layer_call_and_return_conditional_losses_173405o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_embedding_14_layer_call_and_return_conditional_losses_173802

inputs	*
embedding_lookup_173792:	�K2
identity��embedding_lookup�Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_173792inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173792*'
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173792*'
_output_shapes
:���������2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_173792*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^embedding_lookupL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_173620
input_1	
unknown:	�2
	unknown_0:	�
	unknown_1:	�K2
	unknown_2:	�K
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_173329o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
2__inference_recommender_net_3_layer_call_fn_173550
input_1	
unknown:	�2
	unknown_0:	�
	unknown_1:	�K2
	unknown_2:	�K
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2*
Tin	
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173539o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
H__inference_embedding_12_layer_call_and_return_conditional_losses_173350

inputs	*
embedding_lookup_173340:	�2
identity��embedding_lookup�Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�
embedding_lookupResourceGatherembedding_lookup_173340inputs*
Tindices0	**
_class 
loc:@embedding_lookup/173340*'
_output_shapes
:���������2*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/173340*'
_output_shapes
:���������2}
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:���������2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_lookup_173340*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: s
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^embedding_lookupL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_173737g
Trecommender_net_3_embedding_12_embeddings_regularizer_l2loss_readvariableop_resource:	�2
identity��Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpTrecommender_net_3_embedding_12_embeddings_regularizer_l2loss_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: {
IdentityIdentity=recommender_net_3/embedding_12/embeddings/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp
�
�
-__inference_embedding_13_layer_call_fn_173773

inputs	
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_13_layer_call_and_return_conditional_losses_173367o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�]
�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173457
input_1	&
embedding_12_173351:	�2&
embedding_13_173368:	�&
embedding_14_173389:	�K2&
embedding_15_173406:	�K
identity��$embedding_12/StatefulPartitionedCall�$embedding_13/StatefulPartitionedCall�$embedding_14/StatefulPartitionedCall�$embedding_15/StatefulPartitionedCall�Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp�Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceinput_1strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_12/StatefulPartitionedCallStatefulPartitionedCallstrided_slice:output:0embedding_12_173351*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_12_layer_call_and_return_conditional_losses_173350f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSliceinput_1strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_13/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0embedding_13_173368*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_13_layer_call_and_return_conditional_losses_173367f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSliceinput_1strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_14/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0embedding_14_173389*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_14_layer_call_and_return_conditional_losses_173388f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceinput_1strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
$embedding_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_3:output:0embedding_15_173406*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_embedding_15_layer_call_and_return_conditional_losses_173405_
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB"       Q
Tensordot/freeConst*
_output_shapes
: *
dtype0*
valueB z
Tensordot/ShapeShape-embedding_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose	Transpose-embedding_12/StatefulPartitionedCall:output:0Tensordot/concat:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:������������������a
Tensordot/axes_1Const*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/free_1Const*
_output_shapes
: *
dtype0*
valueB |
Tensordot/Shape_1Shape-embedding_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
::��[
Tensordot/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_2GatherV2Tensordot/Shape_1:output:0Tensordot/free_1:output:0"Tensordot/GatherV2_2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
: [
Tensordot/GatherV2_3/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_3GatherV2Tensordot/Shape_1:output:0Tensordot/axes_1:output:0"Tensordot/GatherV2_3/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_2ProdTensordot/GatherV2_2:output:0Tensordot/Const_2:output:0*
T0*
_output_shapes
: [
Tensordot/Const_3Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_3ProdTensordot/GatherV2_3:output:0Tensordot/Const_3:output:0*
T0*
_output_shapes
: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/axes_1:output:0Tensordot/free_1:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
Tensordot/stack_1PackTensordot/Prod_3:output:0Tensordot/Prod_2:output:0*
N*
T0*
_output_shapes
:�
Tensordot/transpose_1	Transpose-embedding_14/StatefulPartitionedCall:output:0Tensordot/concat_1:output:0*
T0*'
_output_shapes
:���������2�
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0Tensordot/stack_1:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*0
_output_shapes
:������������������Y
Tensordot/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_2ConcatV2Tensordot/GatherV2:output:0Tensordot/GatherV2_2:output:0 Tensordot/concat_2/axis:output:0*
N*
T0*
_output_shapes
: n
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_2:output:0*
T0*
_output_shapes
: �
addAddV2Tensordot:output:0-embedding_13/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������x
add_1AddV2add:z:0-embedding_15/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:���������O
SigmoidSigmoid	add_1:z:0*
T0*'
_output_shapes
:����������
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_12_173351*
_output_shapes
:	�2*
dtype0�
<recommender_net_3/embedding_12/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_12/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_12/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_12/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpReadVariableOpembedding_14_173389*
_output_shapes
:	�K2*
dtype0�
<recommender_net_3/embedding_14/embeddings/Regularizer/L2LossL2LossSrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: �
;recommender_net_3/embedding_14/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
9recommender_net_3/embedding_14/embeddings/Regularizer/mulMulDrecommender_net_3/embedding_14/embeddings/Regularizer/mul/x:output:0Erecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^embedding_12/StatefulPartitionedCall%^embedding_13/StatefulPartitionedCall%^embedding_14/StatefulPartitionedCall%^embedding_15/StatefulPartitionedCallL^recommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpL^recommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2L
$embedding_12/StatefulPartitionedCall$embedding_12/StatefulPartitionedCall2L
$embedding_13/StatefulPartitionedCall$embedding_13/StatefulPartitionedCall2L
$embedding_14/StatefulPartitionedCall$embedding_14/StatefulPartitionedCall2L
$embedding_15/StatefulPartitionedCall$embedding_15/StatefulPartitionedCall2�
Krecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_12/embeddings/Regularizer/L2Loss/ReadVariableOp2�
Krecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOpKrecommender_net_3/embedding_14/embeddings/Regularizer/L2Loss/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0	���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:�x
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
user_embedding
		user_bias

movie_embedding

movie_bias
	optimizer

signatures"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_12�
2__inference_recommender_net_3_layer_call_fn_173550
2__inference_recommender_net_3_layer_call_fn_173633�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�
trace_0
trace_12�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173457
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173720�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1
�B�
!__inference__wrapped_model_173329input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
5
_variables
6_iterations
7_learning_rate
8_index_dict
9
_momentums
:_velocities
;_update_step_xla"
experimentalOptimizer
,
<serving_default"
signature_map
<::	�22)recommender_net_3/embedding_12/embeddings
<::	�2)recommender_net_3/embedding_13/embeddings
<::	�K22)recommender_net_3/embedding_14/embeddings
<::	�K2)recommender_net_3/embedding_15/embeddings
�
=trace_02�
__inference_loss_fn_0_173737�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z=trace_0
�
>trace_02�
__inference_loss_fn_1_173746�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z>trace_0
 "
trackable_list_wrapper
<
0
	1

2
3"
trackable_list_wrapper
5
?0
@1
A2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_recommender_net_3_layer_call_fn_173550input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
2__inference_recommender_net_3_layer_call_fn_173633inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173457input_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173720inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
Gtrace_02�
-__inference_embedding_12_layer_call_fn_173753�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zGtrace_0
�
Htrace_02�
H__inference_embedding_12_layer_call_and_return_conditional_losses_173766�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
Ntrace_02�
-__inference_embedding_13_layer_call_fn_173773�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zNtrace_0
�
Otrace_02�
H__inference_embedding_13_layer_call_and_return_conditional_losses_173782�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
�
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
Utrace_02�
-__inference_embedding_14_layer_call_fn_173789�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
�
Vtrace_02�
H__inference_embedding_14_layer_call_and_return_conditional_losses_173802�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
\trace_02�
-__inference_embedding_15_layer_call_fn_173809�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z\trace_0
�
]trace_02�
H__inference_embedding_15_layer_call_and_return_conditional_losses_173818�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0
_
60
^1
_2
`3
a4
b5
c6
d7
e8"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
<
^0
`1
b2
d3"
trackable_list_wrapper
<
_0
a1
c2
e3"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_173620input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_173737"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_173746"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
^
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs"
_tf_keras_metric
^
o	variables
p	keras_api
	qtotal
	rcount
s
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_embedding_12_layer_call_fn_173753inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_embedding_12_layer_call_and_return_conditional_losses_173766inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_embedding_13_layer_call_fn_173773inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_embedding_13_layer_call_and_return_conditional_losses_173782inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_embedding_14_layer_call_fn_173789inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_embedding_14_layer_call_and_return_conditional_losses_173802inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_embedding_15_layer_call_fn_173809inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_embedding_15_layer_call_and_return_conditional_losses_173818inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
A:?	�220Adam/m/recommender_net_3/embedding_12/embeddings
A:?	�220Adam/v/recommender_net_3/embedding_12/embeddings
A:?	�20Adam/m/recommender_net_3/embedding_13/embeddings
A:?	�20Adam/v/recommender_net_3/embedding_13/embeddings
A:?	�K220Adam/m/recommender_net_3/embedding_14/embeddings
A:?	�K220Adam/v/recommender_net_3/embedding_14/embeddings
A:?	�K20Adam/m/recommender_net_3/embedding_15/embeddings
A:?	�K20Adam/v/recommender_net_3/embedding_15/embeddings
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
!__inference__wrapped_model_173329m0�-
&�#
!�
input_1���������	
� "3�0
.
output_1"�
output_1����������
H__inference_embedding_12_layer_call_and_return_conditional_losses_173766^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������2
� �
-__inference_embedding_12_layer_call_fn_173753S+�(
!�
�
inputs���������	
� "!�
unknown���������2�
H__inference_embedding_13_layer_call_and_return_conditional_losses_173782^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
-__inference_embedding_13_layer_call_fn_173773S+�(
!�
�
inputs���������	
� "!�
unknown����������
H__inference_embedding_14_layer_call_and_return_conditional_losses_173802^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������2
� �
-__inference_embedding_14_layer_call_fn_173789S+�(
!�
�
inputs���������	
� "!�
unknown���������2�
H__inference_embedding_15_layer_call_and_return_conditional_losses_173818^+�(
!�
�
inputs���������	
� ",�)
"�
tensor_0���������
� �
-__inference_embedding_15_layer_call_fn_173809S+�(
!�
�
inputs���������	
� "!�
unknown���������D
__inference_loss_fn_0_173737$�

� 
� "�
unknown D
__inference_loss_fn_1_173746$�

� 
� "�
unknown �
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173457f0�-
&�#
!�
input_1���������	
� ",�)
"�
tensor_0���������
� �
M__inference_recommender_net_3_layer_call_and_return_conditional_losses_173720e/�,
%�"
 �
inputs���������	
� ",�)
"�
tensor_0���������
� �
2__inference_recommender_net_3_layer_call_fn_173550[0�-
&�#
!�
input_1���������	
� "!�
unknown����������
2__inference_recommender_net_3_layer_call_fn_173633Z/�,
%�"
 �
inputs���������	
� "!�
unknown����������
$__inference_signature_wrapper_173620x;�8
� 
1�.
,
input_1!�
input_1���������	"3�0
.
output_1"�
output_1���������