≤Ѕ
ЄИ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
Љ
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ы
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
2"
Utype:
2"
epsilonfloat%Ј—8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Ѕ
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
executor_typestring И®
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
 И"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8—ґ
А
Adam/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/v
y
(Adam/dense_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/v*
_output_shapes
:*
dtype0
Й
Adam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_35/kernel/v
В
*Adam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/v*
_output_shapes
:	А*
dtype0
Б
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_34/bias/v
z
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_34/kernel/v
Г
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v* 
_output_shapes
:
АА*
dtype0
Э
"Adam/batch_normalization_61/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_61/beta/v
Ц
6Adam/batch_normalization_61/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/v*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_61/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_61/gamma/v
Ш
7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/v*
_output_shapes	
:А*
dtype0
Г
Adam/conv2d_71/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_71/bias/v
|
)Adam/conv2d_71/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_71/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_71/kernel/v
Н
+Adam/conv2d_71/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/kernel/v*(
_output_shapes
:АА*
dtype0
Э
"Adam/batch_normalization_60/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_60/beta/v
Ц
6Adam/batch_normalization_60/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_60/beta/v*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_60/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_60/gamma/v
Ш
7Adam/batch_normalization_60/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_60/gamma/v*
_output_shapes	
:А*
dtype0
Г
Adam/conv2d_70/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_70/bias/v
|
)Adam/conv2d_70/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/v*
_output_shapes	
:А*
dtype0
У
Adam/conv2d_70/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_70/kernel/v
М
+Adam/conv2d_70/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/v*'
_output_shapes
:@А*
dtype0
Ь
"Adam/batch_normalization_59/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/v
Х
6Adam/batch_normalization_59/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_59/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/v
Ч
7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/v*
_output_shapes
:@*
dtype0
В
Adam/conv2d_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_69/bias/v
{
)Adam/conv2d_69/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_69/kernel/v
Л
+Adam/conv2d_69/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/v*&
_output_shapes
: @*
dtype0
Ь
"Adam/batch_normalization_58/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_58/beta/v
Х
6Adam/batch_normalization_58/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/v*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_58/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_58/gamma/v
Ч
7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/v*
_output_shapes
: *
dtype0
В
Adam/conv2d_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_68/bias/v
{
)Adam/conv2d_68/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_68/kernel/v
Л
+Adam/conv2d_68/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/v*&
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_57/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_57/beta/v
Х
6Adam/batch_normalization_57/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/v*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_57/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_57/gamma/v
Ч
7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/v*
_output_shapes
:*
dtype0
В
Adam/conv2d_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_67/bias/v
{
)Adam/conv2d_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_67/kernel/v
Л
+Adam/conv2d_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/v*&
_output_shapes
:*
dtype0
А
Adam/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/m
y
(Adam/dense_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/m*
_output_shapes
:*
dtype0
Й
Adam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_35/kernel/m
В
*Adam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/m*
_output_shapes
:	А*
dtype0
Б
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_34/bias/m
z
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_34/kernel/m
Г
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m* 
_output_shapes
:
АА*
dtype0
Э
"Adam/batch_normalization_61/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_61/beta/m
Ц
6Adam/batch_normalization_61/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_61/beta/m*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_61/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_61/gamma/m
Ш
7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_61/gamma/m*
_output_shapes	
:А*
dtype0
Г
Adam/conv2d_71/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_71/bias/m
|
)Adam/conv2d_71/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_71/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_71/kernel/m
Н
+Adam/conv2d_71/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_71/kernel/m*(
_output_shapes
:АА*
dtype0
Э
"Adam/batch_normalization_60/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_60/beta/m
Ц
6Adam/batch_normalization_60/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_60/beta/m*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_60/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_60/gamma/m
Ш
7Adam/batch_normalization_60/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_60/gamma/m*
_output_shapes	
:А*
dtype0
Г
Adam/conv2d_70/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_70/bias/m
|
)Adam/conv2d_70/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/bias/m*
_output_shapes	
:А*
dtype0
У
Adam/conv2d_70/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_70/kernel/m
М
+Adam/conv2d_70/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_70/kernel/m*'
_output_shapes
:@А*
dtype0
Ь
"Adam/batch_normalization_59/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_59/beta/m
Х
6Adam/batch_normalization_59/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_59/beta/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_59/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_59/gamma/m
Ч
7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_59/gamma/m*
_output_shapes
:@*
dtype0
В
Adam/conv2d_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_69/bias/m
{
)Adam/conv2d_69/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_69/kernel/m
Л
+Adam/conv2d_69/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_69/kernel/m*&
_output_shapes
: @*
dtype0
Ь
"Adam/batch_normalization_58/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_58/beta/m
Х
6Adam/batch_normalization_58/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_58/beta/m*
_output_shapes
: *
dtype0
Ю
#Adam/batch_normalization_58/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_58/gamma/m
Ч
7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_58/gamma/m*
_output_shapes
: *
dtype0
В
Adam/conv2d_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_68/bias/m
{
)Adam/conv2d_68/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_68/kernel/m
Л
+Adam/conv2d_68/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_68/kernel/m*&
_output_shapes
: *
dtype0
Ь
"Adam/batch_normalization_57/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_57/beta/m
Х
6Adam/batch_normalization_57/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_57/beta/m*
_output_shapes
:*
dtype0
Ю
#Adam/batch_normalization_57/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_57/gamma/m
Ч
7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_57/gamma/m*
_output_shapes
:*
dtype0
В
Adam/conv2d_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_67/bias/m
{
)Adam/conv2d_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_67/kernel/m
Л
+Adam/conv2d_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_67/kernel/m*&
_output_shapes
:*
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
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
dtype0
{
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_35/kernel
t
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes
:	А*
dtype0
s
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_34/bias
l
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes	
:А*
dtype0
|
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_34/kernel
u
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel* 
_output_shapes
:
АА*
dtype0
•
&batch_normalization_61/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_61/moving_variance
Ю
:batch_normalization_61/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_61/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_61/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_61/moving_mean
Ц
6batch_normalization_61/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_61/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_61/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_61/beta
И
/batch_normalization_61/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_61/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_61/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_61/gamma
К
0batch_normalization_61/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_61/gamma*
_output_shapes	
:А*
dtype0
u
conv2d_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_71/bias
n
"conv2d_71/bias/Read/ReadVariableOpReadVariableOpconv2d_71/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_71/kernel

$conv2d_71/kernel/Read/ReadVariableOpReadVariableOpconv2d_71/kernel*(
_output_shapes
:АА*
dtype0
•
&batch_normalization_60/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_60/moving_variance
Ю
:batch_normalization_60/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_60/moving_variance*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_60/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_60/moving_mean
Ц
6batch_normalization_60/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_60/moving_mean*
_output_shapes	
:А*
dtype0
П
batch_normalization_60/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_60/beta
И
/batch_normalization_60/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_60/beta*
_output_shapes	
:А*
dtype0
С
batch_normalization_60/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_60/gamma
К
0batch_normalization_60/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_60/gamma*
_output_shapes	
:А*
dtype0
u
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_70/bias
n
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes	
:А*
dtype0
Е
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_70/kernel
~
$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*'
_output_shapes
:@А*
dtype0
§
&batch_normalization_59/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_59/moving_variance
Э
:batch_normalization_59/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_59/moving_variance*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_59/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_59/moving_mean
Х
6batch_normalization_59/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_59/moving_mean*
_output_shapes
:@*
dtype0
О
batch_normalization_59/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_59/beta
З
/batch_normalization_59/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_59/beta*
_output_shapes
:@*
dtype0
Р
batch_normalization_59/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_59/gamma
Й
0batch_normalization_59/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_59/gamma*
_output_shapes
:@*
dtype0
t
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_69/bias
m
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes
:@*
dtype0
Д
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_69/kernel
}
$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*&
_output_shapes
: @*
dtype0
§
&batch_normalization_58/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_58/moving_variance
Э
:batch_normalization_58/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_58/moving_variance*
_output_shapes
: *
dtype0
Ь
"batch_normalization_58/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_58/moving_mean
Х
6batch_normalization_58/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_58/moving_mean*
_output_shapes
: *
dtype0
О
batch_normalization_58/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_58/beta
З
/batch_normalization_58/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_58/beta*
_output_shapes
: *
dtype0
Р
batch_normalization_58/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_58/gamma
Й
0batch_normalization_58/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_58/gamma*
_output_shapes
: *
dtype0
t
conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_68/bias
m
"conv2d_68/bias/Read/ReadVariableOpReadVariableOpconv2d_68/bias*
_output_shapes
: *
dtype0
Д
conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_68/kernel
}
$conv2d_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_68/kernel*&
_output_shapes
: *
dtype0
§
&batch_normalization_57/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_57/moving_variance
Э
:batch_normalization_57/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_57/moving_variance*
_output_shapes
:*
dtype0
Ь
"batch_normalization_57/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_57/moving_mean
Х
6batch_normalization_57/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_57/moving_mean*
_output_shapes
:*
dtype0
О
batch_normalization_57/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_57/beta
З
/batch_normalization_57/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_57/beta*
_output_shapes
:*
dtype0
Р
batch_normalization_57/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_57/gamma
Й
0batch_normalization_57/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_57/gamma*
_output_shapes
:*
dtype0
t
conv2d_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_67/bias
m
"conv2d_67/bias/Read/ReadVariableOpReadVariableOpconv2d_67/bias*
_output_shapes
:*
dtype0
Д
conv2d_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_67/kernel
}
$conv2d_67/kernel/Read/ReadVariableOpReadVariableOpconv2d_67/kernel*&
_output_shapes
:*
dtype0
Х
"serving_default_rescaling_17_inputPlaceholder*/
_output_shapes
:€€€€€€€€€00*
dtype0*$
shape:€€€€€€€€€00
О

StatefulPartitionedCallStatefulPartitionedCall"serving_default_rescaling_17_inputconv2d_67/kernelconv2d_67/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_68/kernelconv2d_68/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_69/kernelconv2d_69/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_varianceconv2d_70/kernelconv2d_70/biasbatch_normalization_60/gammabatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_variancedense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_504704

NoOpNoOp
≈в
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*€б
valueфбBрб Bиб
и
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer_with_weights-9
layer-20
layer-21
layer-22
layer-23
layer_with_weights-10
layer-24
layer_with_weights-11
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer
#
signatures*
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
»
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op*
’
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance*
О
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
О
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses* 
»
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op*
’
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance*
О
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
О
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
•
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator* 
»
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias
 y_jit_compiled_convolution_op*
Џ
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
	Аaxis

Бgamma
	Вbeta
Гmoving_mean
Дmoving_variance*
Ф
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses* 
Ф
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses* 
—
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
Чkernel
	Шbias
!Щ_jit_compiled_convolution_op*
а
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
	†axis

°gamma
	Ґbeta
£moving_mean
§moving_variance*
Ф
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses* 
Ф
Ђ	variables
ђtrainable_variables
≠regularization_losses
Ѓ	keras_api
ѓ__call__
+∞&call_and_return_all_conditional_losses* 
ђ
±	variables
≤trainable_variables
≥regularization_losses
і	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses
Ј_random_generator* 
—
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Љ__call__
+љ&call_and_return_all_conditional_losses
Њkernel
	њbias
!ј_jit_compiled_convolution_op*
а
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
	«axis

»gamma
	…beta
 moving_mean
Ћmoving_variance*
Ф
ћ	variables
Ќtrainable_variables
ќregularization_losses
ѕ	keras_api
–__call__
+—&call_and_return_all_conditional_losses* 
Ф
“	variables
”trainable_variables
‘regularization_losses
’	keras_api
÷__call__
+„&call_and_return_all_conditional_losses* 
Ф
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses* 
Ѓ
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
дkernel
	еbias*
Ѓ
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
мkernel
	нbias*
Ю
00
11
:2
;3
<4
=5
P6
Q7
Z8
[9
\10
]11
w12
x13
Б14
В15
Г16
Д17
Ч18
Ш19
°20
Ґ21
£22
§23
Њ24
њ25
»26
…27
 28
Ћ29
д30
е31
м32
н33*
»
00
11
:2
;3
P4
Q5
Z6
[7
w8
x9
Б10
В11
Ч12
Ш13
°14
Ґ15
Њ16
њ17
»18
…19
д20
е21
м22
н23*
* 
µ
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
:
уtrace_0
фtrace_1
хtrace_2
цtrace_3* 
:
чtrace_0
шtrace_1
щtrace_2
ъtrace_3* 
* 
≈
	ыiter
ьbeta_1
эbeta_2

юdecay
€learning_rate0m–1m—:m“;m”Pm‘Qm’Zm÷[m„wmЎxmў	БmЏ	Вmџ	Чm№	ШmЁ	°mё	Ґmя	Њmа	њmб	»mв	…mг	дmд	еmе	мmж	нmз0vи1vй:vк;vлPvмQvнZvо[vпwvрxvс	Бvт	Вvу	Чvф	Шvх	°vц	Ґvч	Њvш	њvщ	»vъ	…vы	дvь	еvэ	мvю	нv€*

Аserving_default* 
* 
* 
* 
Ц
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 

00
11*

00
11*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
`Z
VARIABLE_VALUEconv2d_67/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_67/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
:0
;1
<2
=3*

:0
;1*
* 
Ш
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

Фtrace_0
Хtrace_1* 

Цtrace_0
Чtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_57/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_57/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_57/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_57/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 

Эtrace_0* 

Юtrace_0* 
* 
* 
* 
Ц
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

§trace_0* 

•trace_0* 

P0
Q1*

P0
Q1*
* 
Ш
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Ђtrace_0* 

ђtrace_0* 
`Z
VARIABLE_VALUEconv2d_68/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_68/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
Z0
[1
\2
]3*

Z0
[1*
* 
Ш
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

≤trace_0
≥trace_1* 

іtrace_0
µtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_58/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_58/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_58/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_58/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

їtrace_0* 

Љtrace_0* 
* 
* 
* 
Ц
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

¬trace_0* 

√trace_0* 
* 
* 
* 
Ц
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

…trace_0
 trace_1* 

Ћtrace_0
ћtrace_1* 
* 

w0
x1*

w0
x1*
* 
Ш
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

“trace_0* 

”trace_0* 
`Z
VARIABLE_VALUEconv2d_69/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_69/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
Б0
В1
Г2
Д3*

Б0
В1*
* 
Ш
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ўtrace_0
Џtrace_1* 

џtrace_0
№trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_59/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_59/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_59/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_59/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 

вtrace_0* 

гtrace_0* 
* 
* 
* 
Ь
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses* 

йtrace_0* 

кtrace_0* 

Ч0
Ш1*

Ч0
Ш1*
* 
Ю
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses*

рtrace_0* 

сtrace_0* 
`Z
VARIABLE_VALUEconv2d_70/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_70/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
°0
Ґ1
£2
§3*

°0
Ґ1*
* 
Ю
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

чtrace_0
шtrace_1* 

щtrace_0
ъtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_60/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_60/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_60/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_60/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 
* 
* 
* 
Ь
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Ђ	variables
ђtrainable_variables
≠regularization_losses
ѓ__call__
+∞&call_and_return_all_conditional_losses
'∞"call_and_return_conditional_losses* 

Зtrace_0* 

Иtrace_0* 
* 
* 
* 
Ь
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
±	variables
≤trainable_variables
≥regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses* 

Оtrace_0
Пtrace_1* 

Рtrace_0
Сtrace_1* 
* 

Њ0
њ1*

Њ0
њ1*
* 
Ю
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Љ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses*

Чtrace_0* 

Шtrace_0* 
`Z
VARIABLE_VALUEconv2d_71/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_71/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
»0
…1
 2
Ћ3*

»0
…1*
* 
Ю
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses*

Юtrace_0
Яtrace_1* 

†trace_0
°trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_61/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_61/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_61/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_61/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
ћ	variables
Ќtrainable_variables
ќregularization_losses
–__call__
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses* 

Іtrace_0* 

®trace_0* 
* 
* 
* 
Ь
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
“	variables
”trainable_variables
‘regularization_losses
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses* 

Ѓtrace_0* 

ѓtrace_0* 
* 
* 
* 
Ь
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses* 

µtrace_0* 

ґtrace_0* 

д0
е1*

д0
е1*
* 
Ю
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses*

Љtrace_0* 

љtrace_0* 
`Z
VARIABLE_VALUEdense_34/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_34/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

м0
н1*

м0
н1*
* 
Ю
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses*

√trace_0* 

ƒtrace_0* 
`Z
VARIABLE_VALUEdense_35/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_35/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
P
<0
=1
\2
]3
Г4
Д5
£6
§7
 8
Ћ9*
 
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25*

≈0
∆1*
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

<0
=1*
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

\0
]1*
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
* 
* 
* 
* 

Г0
Д1*
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

£0
§1*
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
* 
* 
* 
* 

 0
Ћ1*
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
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
«	variables
»	keras_api

…total

 count*
M
Ћ	variables
ћ	keras_api

Ќtotal

ќcount
ѕ
_fn_kwargs*

…0
 1*

«	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ќ0
ќ1*

Ћ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Г}
VARIABLE_VALUEAdam/conv2d_67/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_67/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_57/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_68/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_68/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_58/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_69/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_69/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_59/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_70/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_70/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_60/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_60/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_71/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_71/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_61/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_34/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_34/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_35/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_35/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_67/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_67/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_57/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_57/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_68/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_68/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_58/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_58/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_69/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_69/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_59/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_59/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_70/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_70/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_60/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_60/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_71/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_71/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/batch_normalization_61/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/batch_normalization_61/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_34/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_34/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_35/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_35/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ц#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_67/kernel/Read/ReadVariableOp"conv2d_67/bias/Read/ReadVariableOp0batch_normalization_57/gamma/Read/ReadVariableOp/batch_normalization_57/beta/Read/ReadVariableOp6batch_normalization_57/moving_mean/Read/ReadVariableOp:batch_normalization_57/moving_variance/Read/ReadVariableOp$conv2d_68/kernel/Read/ReadVariableOp"conv2d_68/bias/Read/ReadVariableOp0batch_normalization_58/gamma/Read/ReadVariableOp/batch_normalization_58/beta/Read/ReadVariableOp6batch_normalization_58/moving_mean/Read/ReadVariableOp:batch_normalization_58/moving_variance/Read/ReadVariableOp$conv2d_69/kernel/Read/ReadVariableOp"conv2d_69/bias/Read/ReadVariableOp0batch_normalization_59/gamma/Read/ReadVariableOp/batch_normalization_59/beta/Read/ReadVariableOp6batch_normalization_59/moving_mean/Read/ReadVariableOp:batch_normalization_59/moving_variance/Read/ReadVariableOp$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOp0batch_normalization_60/gamma/Read/ReadVariableOp/batch_normalization_60/beta/Read/ReadVariableOp6batch_normalization_60/moving_mean/Read/ReadVariableOp:batch_normalization_60/moving_variance/Read/ReadVariableOp$conv2d_71/kernel/Read/ReadVariableOp"conv2d_71/bias/Read/ReadVariableOp0batch_normalization_61/gamma/Read/ReadVariableOp/batch_normalization_61/beta/Read/ReadVariableOp6batch_normalization_61/moving_mean/Read/ReadVariableOp:batch_normalization_61/moving_variance/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_67/kernel/m/Read/ReadVariableOp)Adam/conv2d_67/bias/m/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_57/beta/m/Read/ReadVariableOp+Adam/conv2d_68/kernel/m/Read/ReadVariableOp)Adam/conv2d_68/bias/m/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_58/beta/m/Read/ReadVariableOp+Adam/conv2d_69/kernel/m/Read/ReadVariableOp)Adam/conv2d_69/bias/m/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_59/beta/m/Read/ReadVariableOp+Adam/conv2d_70/kernel/m/Read/ReadVariableOp)Adam/conv2d_70/bias/m/Read/ReadVariableOp7Adam/batch_normalization_60/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_60/beta/m/Read/ReadVariableOp+Adam/conv2d_71/kernel/m/Read/ReadVariableOp)Adam/conv2d_71/bias/m/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_61/beta/m/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp*Adam/dense_35/kernel/m/Read/ReadVariableOp(Adam/dense_35/bias/m/Read/ReadVariableOp+Adam/conv2d_67/kernel/v/Read/ReadVariableOp)Adam/conv2d_67/bias/v/Read/ReadVariableOp7Adam/batch_normalization_57/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_57/beta/v/Read/ReadVariableOp+Adam/conv2d_68/kernel/v/Read/ReadVariableOp)Adam/conv2d_68/bias/v/Read/ReadVariableOp7Adam/batch_normalization_58/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_58/beta/v/Read/ReadVariableOp+Adam/conv2d_69/kernel/v/Read/ReadVariableOp)Adam/conv2d_69/bias/v/Read/ReadVariableOp7Adam/batch_normalization_59/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_59/beta/v/Read/ReadVariableOp+Adam/conv2d_70/kernel/v/Read/ReadVariableOp)Adam/conv2d_70/bias/v/Read/ReadVariableOp7Adam/batch_normalization_60/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_60/beta/v/Read/ReadVariableOp+Adam/conv2d_71/kernel/v/Read/ReadVariableOp)Adam/conv2d_71/bias/v/Read/ReadVariableOp7Adam/batch_normalization_61/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_61/beta/v/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp*Adam/dense_35/kernel/v/Read/ReadVariableOp(Adam/dense_35/bias/v/Read/ReadVariableOpConst*h
Tina
_2]	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_506052
’
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_67/kernelconv2d_67/biasbatch_normalization_57/gammabatch_normalization_57/beta"batch_normalization_57/moving_mean&batch_normalization_57/moving_varianceconv2d_68/kernelconv2d_68/biasbatch_normalization_58/gammabatch_normalization_58/beta"batch_normalization_58/moving_mean&batch_normalization_58/moving_varianceconv2d_69/kernelconv2d_69/biasbatch_normalization_59/gammabatch_normalization_59/beta"batch_normalization_59/moving_mean&batch_normalization_59/moving_varianceconv2d_70/kernelconv2d_70/biasbatch_normalization_60/gammabatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_variancedense_34/kerneldense_34/biasdense_35/kerneldense_35/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/conv2d_67/kernel/mAdam/conv2d_67/bias/m#Adam/batch_normalization_57/gamma/m"Adam/batch_normalization_57/beta/mAdam/conv2d_68/kernel/mAdam/conv2d_68/bias/m#Adam/batch_normalization_58/gamma/m"Adam/batch_normalization_58/beta/mAdam/conv2d_69/kernel/mAdam/conv2d_69/bias/m#Adam/batch_normalization_59/gamma/m"Adam/batch_normalization_59/beta/mAdam/conv2d_70/kernel/mAdam/conv2d_70/bias/m#Adam/batch_normalization_60/gamma/m"Adam/batch_normalization_60/beta/mAdam/conv2d_71/kernel/mAdam/conv2d_71/bias/m#Adam/batch_normalization_61/gamma/m"Adam/batch_normalization_61/beta/mAdam/dense_34/kernel/mAdam/dense_34/bias/mAdam/dense_35/kernel/mAdam/dense_35/bias/mAdam/conv2d_67/kernel/vAdam/conv2d_67/bias/v#Adam/batch_normalization_57/gamma/v"Adam/batch_normalization_57/beta/vAdam/conv2d_68/kernel/vAdam/conv2d_68/bias/v#Adam/batch_normalization_58/gamma/v"Adam/batch_normalization_58/beta/vAdam/conv2d_69/kernel/vAdam/conv2d_69/bias/v#Adam/batch_normalization_59/gamma/v"Adam/batch_normalization_59/beta/vAdam/conv2d_70/kernel/vAdam/conv2d_70/bias/v#Adam/batch_normalization_60/gamma/v"Adam/batch_normalization_60/beta/vAdam/conv2d_71/kernel/vAdam/conv2d_71/bias/v#Adam/batch_normalization_61/gamma/v"Adam/batch_normalization_61/beta/vAdam/dense_34/kernel/vAdam/dense_34/bias/vAdam/dense_35/kernel/vAdam/dense_35/bias/v*g
Tin`
^2\*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_506335»…
≈
Ч
)__inference_dense_35_layer_call_fn_505746

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_503874o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
e
I__inference_activation_60_layer_call_and_return_conditional_losses_505568

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ	
ц
D__inference_dense_35_layer_call_and_return_conditional_losses_505756

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
µ
4__inference_Default-preliminary_layer_call_fn_504427
rescaling_17_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@А

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИҐStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallrescaling_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
Ч
≈
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505686

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ч
d
+__inference_dropout_34_layer_call_fn_505588

inputs
identityИҐStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_504014x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®

ю
E__inference_conv2d_69_layer_call_and_return_conditional_losses_505395

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
н
e
I__inference_activation_59_layer_call_and_return_conditional_losses_503763

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
«
J
.__inference_activation_59_layer_call_fn_505462

inputs
identityЉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_59_layer_call_and_return_conditional_losses_503763h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
р
d
H__inference_rescaling_17_layer_call_and_return_conditional_losses_505147

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
…
Щ
)__inference_dense_34_layer_call_fn_505726

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_503858p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
«
J
.__inference_activation_58_layer_call_fn_505334

inputs
identityЉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_58_layer_call_and_return_conditional_losses_503723h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Щ	
÷
7__inference_batch_normalization_60_layer_call_fn_505522

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503544К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
≥

Б
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
н
e
I__inference_activation_59_layer_call_and_return_conditional_losses_505467

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_505248

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
І

ш
D__inference_dense_34_layer_call_and_return_conditional_losses_503858

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У	
“
7__inference_batch_normalization_58_layer_call_fn_505280

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503361Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Јр
–<
"__inference__traced_restore_506335
file_prefix;
!assignvariableop_conv2d_67_kernel:/
!assignvariableop_1_conv2d_67_bias:=
/assignvariableop_2_batch_normalization_57_gamma:<
.assignvariableop_3_batch_normalization_57_beta:C
5assignvariableop_4_batch_normalization_57_moving_mean:G
9assignvariableop_5_batch_normalization_57_moving_variance:=
#assignvariableop_6_conv2d_68_kernel: /
!assignvariableop_7_conv2d_68_bias: =
/assignvariableop_8_batch_normalization_58_gamma: <
.assignvariableop_9_batch_normalization_58_beta: D
6assignvariableop_10_batch_normalization_58_moving_mean: H
:assignvariableop_11_batch_normalization_58_moving_variance: >
$assignvariableop_12_conv2d_69_kernel: @0
"assignvariableop_13_conv2d_69_bias:@>
0assignvariableop_14_batch_normalization_59_gamma:@=
/assignvariableop_15_batch_normalization_59_beta:@D
6assignvariableop_16_batch_normalization_59_moving_mean:@H
:assignvariableop_17_batch_normalization_59_moving_variance:@?
$assignvariableop_18_conv2d_70_kernel:@А1
"assignvariableop_19_conv2d_70_bias:	А?
0assignvariableop_20_batch_normalization_60_gamma:	А>
/assignvariableop_21_batch_normalization_60_beta:	АE
6assignvariableop_22_batch_normalization_60_moving_mean:	АI
:assignvariableop_23_batch_normalization_60_moving_variance:	А@
$assignvariableop_24_conv2d_71_kernel:АА1
"assignvariableop_25_conv2d_71_bias:	А?
0assignvariableop_26_batch_normalization_61_gamma:	А>
/assignvariableop_27_batch_normalization_61_beta:	АE
6assignvariableop_28_batch_normalization_61_moving_mean:	АI
:assignvariableop_29_batch_normalization_61_moving_variance:	А7
#assignvariableop_30_dense_34_kernel:
АА0
!assignvariableop_31_dense_34_bias:	А6
#assignvariableop_32_dense_35_kernel:	А/
!assignvariableop_33_dense_35_bias:'
assignvariableop_34_adam_iter:	 )
assignvariableop_35_adam_beta_1: )
assignvariableop_36_adam_beta_2: (
assignvariableop_37_adam_decay: 0
&assignvariableop_38_adam_learning_rate: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: #
assignvariableop_41_total: #
assignvariableop_42_count: E
+assignvariableop_43_adam_conv2d_67_kernel_m:7
)assignvariableop_44_adam_conv2d_67_bias_m:E
7assignvariableop_45_adam_batch_normalization_57_gamma_m:D
6assignvariableop_46_adam_batch_normalization_57_beta_m:E
+assignvariableop_47_adam_conv2d_68_kernel_m: 7
)assignvariableop_48_adam_conv2d_68_bias_m: E
7assignvariableop_49_adam_batch_normalization_58_gamma_m: D
6assignvariableop_50_adam_batch_normalization_58_beta_m: E
+assignvariableop_51_adam_conv2d_69_kernel_m: @7
)assignvariableop_52_adam_conv2d_69_bias_m:@E
7assignvariableop_53_adam_batch_normalization_59_gamma_m:@D
6assignvariableop_54_adam_batch_normalization_59_beta_m:@F
+assignvariableop_55_adam_conv2d_70_kernel_m:@А8
)assignvariableop_56_adam_conv2d_70_bias_m:	АF
7assignvariableop_57_adam_batch_normalization_60_gamma_m:	АE
6assignvariableop_58_adam_batch_normalization_60_beta_m:	АG
+assignvariableop_59_adam_conv2d_71_kernel_m:АА8
)assignvariableop_60_adam_conv2d_71_bias_m:	АF
7assignvariableop_61_adam_batch_normalization_61_gamma_m:	АE
6assignvariableop_62_adam_batch_normalization_61_beta_m:	А>
*assignvariableop_63_adam_dense_34_kernel_m:
АА7
(assignvariableop_64_adam_dense_34_bias_m:	А=
*assignvariableop_65_adam_dense_35_kernel_m:	А6
(assignvariableop_66_adam_dense_35_bias_m:E
+assignvariableop_67_adam_conv2d_67_kernel_v:7
)assignvariableop_68_adam_conv2d_67_bias_v:E
7assignvariableop_69_adam_batch_normalization_57_gamma_v:D
6assignvariableop_70_adam_batch_normalization_57_beta_v:E
+assignvariableop_71_adam_conv2d_68_kernel_v: 7
)assignvariableop_72_adam_conv2d_68_bias_v: E
7assignvariableop_73_adam_batch_normalization_58_gamma_v: D
6assignvariableop_74_adam_batch_normalization_58_beta_v: E
+assignvariableop_75_adam_conv2d_69_kernel_v: @7
)assignvariableop_76_adam_conv2d_69_bias_v:@E
7assignvariableop_77_adam_batch_normalization_59_gamma_v:@D
6assignvariableop_78_adam_batch_normalization_59_beta_v:@F
+assignvariableop_79_adam_conv2d_70_kernel_v:@А8
)assignvariableop_80_adam_conv2d_70_bias_v:	АF
7assignvariableop_81_adam_batch_normalization_60_gamma_v:	АE
6assignvariableop_82_adam_batch_normalization_60_beta_v:	АG
+assignvariableop_83_adam_conv2d_71_kernel_v:АА8
)assignvariableop_84_adam_conv2d_71_bias_v:	АF
7assignvariableop_85_adam_batch_normalization_61_gamma_v:	АE
6assignvariableop_86_adam_batch_normalization_61_beta_v:	А>
*assignvariableop_87_adam_dense_34_kernel_v:
АА7
(assignvariableop_88_adam_dense_34_bias_v:	А=
*assignvariableop_89_adam_dense_35_kernel_v:	А6
(assignvariableop_90_adam_dense_35_bias_v:
identity_92ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_84ҐAssignVariableOp_85ҐAssignVariableOp_86ҐAssignVariableOp_87ҐAssignVariableOp_88ҐAssignVariableOp_89ҐAssignVariableOp_9ҐAssignVariableOp_90х2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*Ы2
valueС2BО2\B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЂ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*Ќ
value√Bј\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B н
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ж
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*j
dtypes`
^2\	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_67_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_67_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_57_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_57_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_57_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_57_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_68_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_68_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_58_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_58_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_58_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_58_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_69_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_69_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_59_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_59_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_59_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_59_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_70_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_70_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_60_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_60_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_60_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_60_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_71_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_71_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_61_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_61_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_61_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_61_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_34_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_34_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_35_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_33AssignVariableOp!assignvariableop_33_dense_35_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_41AssignVariableOpassignvariableop_41_totalIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_42AssignVariableOpassignvariableop_42_countIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_67_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_67_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_57_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_57_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_68_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_68_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_batch_normalization_58_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_58_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_69_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_69_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_batch_normalization_59_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_59_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_conv2d_70_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_conv2d_70_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_batch_normalization_60_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_batch_normalization_60_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_conv2d_71_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_conv2d_71_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_batch_normalization_61_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_batch_normalization_61_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_dense_34_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_dense_34_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_35_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_35_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_67_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_67_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_batch_normalization_57_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_57_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_68_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_68_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_batch_normalization_58_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_batch_normalization_58_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv2d_69_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_conv2d_69_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_77AssignVariableOp7assignvariableop_77_adam_batch_normalization_59_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_78AssignVariableOp6assignvariableop_78_adam_batch_normalization_59_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_70_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_70_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_60_gamma_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_60_beta_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv2d_71_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_conv2d_71_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_85AssignVariableOp7assignvariableop_85_adam_batch_normalization_61_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_86AssignVariableOp6assignvariableop_86_adam_batch_normalization_61_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_34_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_34_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_dense_35_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_90AssignVariableOp(assignvariableop_90_adam_dense_35_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 °
Identity_91Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_92IdentityIdentity_91:output:0^NoOp_1*
T0*
_output_shapes
: О
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90*"
_acd_function_control_output(*
_output_shapes
 "#
identity_92Identity_92:output:0*Ќ
_input_shapesї
Є: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_90:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
®

ю
E__inference_conv2d_67_layer_call_and_return_conditional_losses_505166

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€00w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Ќ
•
$__inference_signature_wrapper_504704
rescaling_17_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@А

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallrescaling_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_503263o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
Ё
°
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503513

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ќ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
З
Ѕ
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503392

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
¬
Q
5__inference_average_pooling2d_56_layer_call_fn_505701

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
«
J
.__inference_activation_57_layer_call_fn_505233

inputs
identityЉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_57_layer_call_and_return_conditional_losses_503690h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
¬
Q
5__inference_average_pooling2d_54_layer_call_fn_505243

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
м
Я
*__inference_conv2d_69_layer_call_fn_505385

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
С	
“
7__inference_batch_normalization_58_layer_call_fn_505293

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503392Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ы	
÷
7__inference_batch_normalization_61_layer_call_fn_505637

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503589К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503285

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
бs
ю
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504525
rescaling_17_input*
conv2d_67_504431:
conv2d_67_504433:+
batch_normalization_57_504436:+
batch_normalization_57_504438:+
batch_normalization_57_504440:+
batch_normalization_57_504442:*
conv2d_68_504447: 
conv2d_68_504449: +
batch_normalization_58_504452: +
batch_normalization_58_504454: +
batch_normalization_58_504456: +
batch_normalization_58_504458: *
conv2d_69_504464: @
conv2d_69_504466:@+
batch_normalization_59_504469:@+
batch_normalization_59_504471:@+
batch_normalization_59_504473:@+
batch_normalization_59_504475:@+
conv2d_70_504480:@А
conv2d_70_504482:	А,
batch_normalization_60_504485:	А,
batch_normalization_60_504487:	А,
batch_normalization_60_504489:	А,
batch_normalization_60_504491:	А,
conv2d_71_504497:АА
conv2d_71_504499:	А,
batch_normalization_61_504502:	А,
batch_normalization_61_504504:	А,
batch_normalization_61_504506:	А,
batch_normalization_61_504508:	А#
dense_34_504514:
АА
dense_34_504516:	А"
dense_35_504519:	А
dense_35_504521:
identityИҐ.batch_normalization_57/StatefulPartitionedCallҐ.batch_normalization_58/StatefulPartitionedCallҐ.batch_normalization_59/StatefulPartitionedCallҐ.batch_normalization_60/StatefulPartitionedCallҐ.batch_normalization_61/StatefulPartitionedCallҐ!conv2d_67/StatefulPartitionedCallҐ!conv2d_68/StatefulPartitionedCallҐ!conv2d_69/StatefulPartitionedCallҐ!conv2d_70/StatefulPartitionedCallҐ!conv2d_71/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCall‘
rescaling_17/PartitionedCallPartitionedCallrescaling_17_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658Ы
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall%rescaling_17/PartitionedCall:output:0conv2d_67_504431conv2d_67_504433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670Ц
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0batch_normalization_57_504436batch_normalization_57_504438batch_normalization_57_504440batch_normalization_57_504442*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503285ы
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_57_layer_call_and_return_conditional_losses_503690ш
$average_pooling2d_54/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336£
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_54/PartitionedCall:output:0conv2d_68_504447conv2d_68_504449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703Ц
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_58_504452batch_normalization_58_504454batch_normalization_58_504456batch_normalization_58_504458*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503361ы
activation_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_58_layer_call_and_return_conditional_losses_503723р
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412з
dropout_33/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_503731Щ
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0conv2d_69_504464conv2d_69_504466*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743Ц
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_59_504469batch_normalization_59_504471batch_normalization_59_504473batch_normalization_59_504475*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503437ы
activation_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_59_layer_call_and_return_conditional_losses_503763ш
$average_pooling2d_55/PartitionedCallPartitionedCall&activation_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488§
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_55/PartitionedCall:output:0conv2d_70_504480conv2d_70_504482*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776Ч
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_60_504485batch_normalization_60_504487batch_normalization_60_504489batch_normalization_60_504491*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503513ь
activation_60/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_503796с
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564и
dropout_34/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_503804Ъ
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0conv2d_71_504497conv2d_71_504499*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816Ч
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_61_504502batch_normalization_61_504504batch_normalization_61_504506batch_normalization_61_504508*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503589ь
activation_61/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_503836щ
$average_pooling2d_56/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640д
flatten_17/PartitionedCallPartitionedCall-average_pooling2d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845О
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_504514dense_34_504516*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_503858У
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_504519dense_35_504521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_503874x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
љs
т
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_503881

inputs*
conv2d_67_503671:
conv2d_67_503673:+
batch_normalization_57_503676:+
batch_normalization_57_503678:+
batch_normalization_57_503680:+
batch_normalization_57_503682:*
conv2d_68_503704: 
conv2d_68_503706: +
batch_normalization_58_503709: +
batch_normalization_58_503711: +
batch_normalization_58_503713: +
batch_normalization_58_503715: *
conv2d_69_503744: @
conv2d_69_503746:@+
batch_normalization_59_503749:@+
batch_normalization_59_503751:@+
batch_normalization_59_503753:@+
batch_normalization_59_503755:@+
conv2d_70_503777:@А
conv2d_70_503779:	А,
batch_normalization_60_503782:	А,
batch_normalization_60_503784:	А,
batch_normalization_60_503786:	А,
batch_normalization_60_503788:	А,
conv2d_71_503817:АА
conv2d_71_503819:	А,
batch_normalization_61_503822:	А,
batch_normalization_61_503824:	А,
batch_normalization_61_503826:	А,
batch_normalization_61_503828:	А#
dense_34_503859:
АА
dense_34_503861:	А"
dense_35_503875:	А
dense_35_503877:
identityИҐ.batch_normalization_57/StatefulPartitionedCallҐ.batch_normalization_58/StatefulPartitionedCallҐ.batch_normalization_59/StatefulPartitionedCallҐ.batch_normalization_60/StatefulPartitionedCallҐ.batch_normalization_61/StatefulPartitionedCallҐ!conv2d_67/StatefulPartitionedCallҐ!conv2d_68/StatefulPartitionedCallҐ!conv2d_69/StatefulPartitionedCallҐ!conv2d_70/StatefulPartitionedCallҐ!conv2d_71/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCall»
rescaling_17/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658Ы
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall%rescaling_17/PartitionedCall:output:0conv2d_67_503671conv2d_67_503673*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670Ц
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0batch_normalization_57_503676batch_normalization_57_503678batch_normalization_57_503680batch_normalization_57_503682*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503285ы
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_57_layer_call_and_return_conditional_losses_503690ш
$average_pooling2d_54/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336£
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_54/PartitionedCall:output:0conv2d_68_503704conv2d_68_503706*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703Ц
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_58_503709batch_normalization_58_503711batch_normalization_58_503713batch_normalization_58_503715*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503361ы
activation_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_58_layer_call_and_return_conditional_losses_503723р
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412з
dropout_33/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_503731Щ
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0conv2d_69_503744conv2d_69_503746*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743Ц
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_59_503749batch_normalization_59_503751batch_normalization_59_503753batch_normalization_59_503755*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503437ы
activation_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_59_layer_call_and_return_conditional_losses_503763ш
$average_pooling2d_55/PartitionedCallPartitionedCall&activation_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488§
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_55/PartitionedCall:output:0conv2d_70_503777conv2d_70_503779*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776Ч
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_60_503782batch_normalization_60_503784batch_normalization_60_503786batch_normalization_60_503788*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503513ь
activation_60/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_503796с
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564и
dropout_34/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_503804Ъ
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0conv2d_71_503817conv2d_71_503819*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816Ч
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_61_503822batch_normalization_61_503824batch_normalization_61_503826batch_normalization_61_503828*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503589ь
activation_61/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_503836щ
$average_pooling2d_56/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640д
flatten_17/PartitionedCallPartitionedCall-average_pooling2d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845О
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_503859dense_34_503861*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_503858У
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_503875dense_35_503877*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_503874x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
»

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_504014

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:°
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed([
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_505477

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У	
“
7__inference_batch_normalization_59_layer_call_fn_505408

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503437Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
С	
“
7__inference_batch_normalization_57_layer_call_fn_505192

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503316Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
с
e
I__inference_activation_61_layer_call_and_return_conditional_losses_505696

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
µ
G
+__inference_flatten_17_layer_call_fn_505711

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
 
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_505717

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ы	
÷
7__inference_batch_normalization_60_layer_call_fn_505509

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503513К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
н
e
I__inference_activation_58_layer_call_and_return_conditional_losses_505339

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€ b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≈
I
-__inference_rescaling_17_layer_call_fn_505139

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Ћ
J
.__inference_activation_61_layer_call_fn_505691

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_503836i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
н
e
I__inference_activation_57_layer_call_and_return_conditional_losses_505238

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€00b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
у
Ґ
*__inference_conv2d_71_layer_call_fn_505614

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
э
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_503804

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
Q
5__inference_average_pooling2d_55_layer_call_fn_505472

inputs
identityё
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
d
+__inference_dropout_33_layer_call_fn_505359

inputs
identityИҐStatefulPartitionedCall…
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_504069w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
р
d
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ]
mulMulinputsCast/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00b
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00W
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
»

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_505605

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:°
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed([
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
e
I__inference_activation_60_layer_call_and_return_conditional_losses_503796

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
G
+__inference_dropout_33_layer_call_fn_505354

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_503731h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
∞v
Љ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504283

inputs*
conv2d_67_504189:
conv2d_67_504191:+
batch_normalization_57_504194:+
batch_normalization_57_504196:+
batch_normalization_57_504198:+
batch_normalization_57_504200:*
conv2d_68_504205: 
conv2d_68_504207: +
batch_normalization_58_504210: +
batch_normalization_58_504212: +
batch_normalization_58_504214: +
batch_normalization_58_504216: *
conv2d_69_504222: @
conv2d_69_504224:@+
batch_normalization_59_504227:@+
batch_normalization_59_504229:@+
batch_normalization_59_504231:@+
batch_normalization_59_504233:@+
conv2d_70_504238:@А
conv2d_70_504240:	А,
batch_normalization_60_504243:	А,
batch_normalization_60_504245:	А,
batch_normalization_60_504247:	А,
batch_normalization_60_504249:	А,
conv2d_71_504255:АА
conv2d_71_504257:	А,
batch_normalization_61_504260:	А,
batch_normalization_61_504262:	А,
batch_normalization_61_504264:	А,
batch_normalization_61_504266:	А#
dense_34_504272:
АА
dense_34_504274:	А"
dense_35_504277:	А
dense_35_504279:
identityИҐ.batch_normalization_57/StatefulPartitionedCallҐ.batch_normalization_58/StatefulPartitionedCallҐ.batch_normalization_59/StatefulPartitionedCallҐ.batch_normalization_60/StatefulPartitionedCallҐ.batch_normalization_61/StatefulPartitionedCallҐ!conv2d_67/StatefulPartitionedCallҐ!conv2d_68/StatefulPartitionedCallҐ!conv2d_69/StatefulPartitionedCallҐ!conv2d_70/StatefulPartitionedCallҐ!conv2d_71/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ"dropout_33/StatefulPartitionedCallҐ"dropout_34/StatefulPartitionedCall»
rescaling_17/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658Ы
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall%rescaling_17/PartitionedCall:output:0conv2d_67_504189conv2d_67_504191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670Ф
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0batch_normalization_57_504194batch_normalization_57_504196batch_normalization_57_504198batch_normalization_57_504200*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503316ы
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_57_layer_call_and_return_conditional_losses_503690ш
$average_pooling2d_54/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336£
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_54/PartitionedCall:output:0conv2d_68_504205conv2d_68_504207*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703Ф
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_58_504210batch_normalization_58_504212batch_normalization_58_504214batch_normalization_58_504216*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503392ы
activation_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_58_layer_call_and_return_conditional_losses_503723р
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412ч
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_504069°
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0conv2d_69_504222conv2d_69_504224*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743Ф
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_59_504227batch_normalization_59_504229batch_normalization_59_504231batch_normalization_59_504233*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503468ы
activation_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_59_layer_call_and_return_conditional_losses_503763ш
$average_pooling2d_55/PartitionedCallPartitionedCall&activation_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488§
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_55/PartitionedCall:output:0conv2d_70_504238conv2d_70_504240*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776Х
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_60_504243batch_normalization_60_504245batch_normalization_60_504247batch_normalization_60_504249*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503544ь
activation_60/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_503796с
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564Э
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_504014Ґ
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0conv2d_71_504255conv2d_71_504257*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816Х
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_61_504260batch_normalization_61_504262batch_normalization_61_504264batch_normalization_61_504266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503620ь
activation_61/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_503836щ
$average_pooling2d_56/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640д
flatten_17/PartitionedCallPartitionedCall-average_pooling2d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845О
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_504272dense_34_504274*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_503858У
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_504277dense_35_504279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_503874x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€€
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
ѓ

А
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ћ	
ц
D__inference_dense_35_layer_call_and_return_conditional_losses_503874

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505439

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
щ
d
F__inference_dropout_33_layer_call_and_return_conditional_losses_505364

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Щ	
÷
7__inference_batch_normalization_61_layer_call_fn_505650

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503620К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_505706

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ї
M
1__inference_max_pooling2d_17_layer_call_fn_505573

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
®

ю
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
‘v
»
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504623
rescaling_17_input*
conv2d_67_504529:
conv2d_67_504531:+
batch_normalization_57_504534:+
batch_normalization_57_504536:+
batch_normalization_57_504538:+
batch_normalization_57_504540:*
conv2d_68_504545: 
conv2d_68_504547: +
batch_normalization_58_504550: +
batch_normalization_58_504552: +
batch_normalization_58_504554: +
batch_normalization_58_504556: *
conv2d_69_504562: @
conv2d_69_504564:@+
batch_normalization_59_504567:@+
batch_normalization_59_504569:@+
batch_normalization_59_504571:@+
batch_normalization_59_504573:@+
conv2d_70_504578:@А
conv2d_70_504580:	А,
batch_normalization_60_504583:	А,
batch_normalization_60_504585:	А,
batch_normalization_60_504587:	А,
batch_normalization_60_504589:	А,
conv2d_71_504595:АА
conv2d_71_504597:	А,
batch_normalization_61_504600:	А,
batch_normalization_61_504602:	А,
batch_normalization_61_504604:	А,
batch_normalization_61_504606:	А#
dense_34_504612:
АА
dense_34_504614:	А"
dense_35_504617:	А
dense_35_504619:
identityИҐ.batch_normalization_57/StatefulPartitionedCallҐ.batch_normalization_58/StatefulPartitionedCallҐ.batch_normalization_59/StatefulPartitionedCallҐ.batch_normalization_60/StatefulPartitionedCallҐ.batch_normalization_61/StatefulPartitionedCallҐ!conv2d_67/StatefulPartitionedCallҐ!conv2d_68/StatefulPartitionedCallҐ!conv2d_69/StatefulPartitionedCallҐ!conv2d_70/StatefulPartitionedCallҐ!conv2d_71/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ"dropout_33/StatefulPartitionedCallҐ"dropout_34/StatefulPartitionedCall‘
rescaling_17/PartitionedCallPartitionedCallrescaling_17_input*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_503658Ы
!conv2d_67/StatefulPartitionedCallStatefulPartitionedCall%rescaling_17/PartitionedCall:output:0conv2d_67_504529conv2d_67_504531*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670Ф
.batch_normalization_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_67/StatefulPartitionedCall:output:0batch_normalization_57_504534batch_normalization_57_504536batch_normalization_57_504538batch_normalization_57_504540*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503316ы
activation_57/PartitionedCallPartitionedCall7batch_normalization_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_57_layer_call_and_return_conditional_losses_503690ш
$average_pooling2d_54/PartitionedCallPartitionedCall&activation_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336£
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_54/PartitionedCall:output:0conv2d_68_504545conv2d_68_504547*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703Ф
.batch_normalization_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_58_504550batch_normalization_58_504552batch_normalization_58_504554batch_normalization_58_504556*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503392ы
activation_58/PartitionedCallPartitionedCall7batch_normalization_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_58_layer_call_and_return_conditional_losses_503723р
 max_pooling2d_16/PartitionedCallPartitionedCall&activation_58/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412ч
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_504069°
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0conv2d_69_504562conv2d_69_504564*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_503743Ф
.batch_normalization_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_59_504567batch_normalization_59_504569batch_normalization_59_504571batch_normalization_59_504573*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503468ы
activation_59/PartitionedCallPartitionedCall7batch_normalization_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_59_layer_call_and_return_conditional_losses_503763ш
$average_pooling2d_55/PartitionedCallPartitionedCall&activation_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_503488§
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall-average_pooling2d_55/PartitionedCall:output:0conv2d_70_504578conv2d_70_504580*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776Х
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_60_504583batch_normalization_60_504585batch_normalization_60_504587batch_normalization_60_504589*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503544ь
activation_60/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_503796с
 max_pooling2d_17/PartitionedCallPartitionedCall&activation_60/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564Э
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_504014Ґ
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0conv2d_71_504595conv2d_71_504597*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_503816Х
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_61_504600batch_normalization_61_504602batch_normalization_61_504604batch_normalization_61_504606*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503620ь
activation_61/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_61_layer_call_and_return_conditional_losses_503836щ
$average_pooling2d_56/PartitionedCallPartitionedCall&activation_61/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_503640д
flatten_17/PartitionedCallPartitionedCall-average_pooling2d_56/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_503845О
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_504612dense_34_504614*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_503858У
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_504617dense_35_504619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_503874x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€€
NoOpNoOp/^batch_normalization_57/StatefulPartitionedCall/^batch_normalization_58/StatefulPartitionedCall/^batch_normalization_59/StatefulPartitionedCall/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall"^conv2d_67/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_57/StatefulPartitionedCall.batch_normalization_57/StatefulPartitionedCall2`
.batch_normalization_58/StatefulPartitionedCall.batch_normalization_58/StatefulPartitionedCall2`
.batch_normalization_59/StatefulPartitionedCall.batch_normalization_59/StatefulPartitionedCall2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2F
!conv2d_67/StatefulPartitionedCall!conv2d_67/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
®

ю
E__inference_conv2d_68_layer_call_and_return_conditional_losses_505267

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ё
°
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503589

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ќ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
®

ю
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
У
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_505349

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505210

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ї
M
1__inference_max_pooling2d_16_layer_call_fn_505344

inputs
identityЏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_503412Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈
G
+__inference_dropout_34_layer_call_fn_505583

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_503804i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Л
µ
4__inference_Default-preliminary_layer_call_fn_503952
rescaling_17_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@А

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallrescaling_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_503881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
’¶
©
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504985

inputsB
(conv2d_67_conv2d_readvariableop_resource:7
)conv2d_67_biasadd_readvariableop_resource:<
.batch_normalization_57_readvariableop_resource:>
0batch_normalization_57_readvariableop_1_resource:M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_68_conv2d_readvariableop_resource: 7
)conv2d_68_biasadd_readvariableop_resource: <
.batch_normalization_58_readvariableop_resource: >
0batch_normalization_58_readvariableop_1_resource: M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_69_conv2d_readvariableop_resource: @7
)conv2d_69_biasadd_readvariableop_resource:@<
.batch_normalization_59_readvariableop_resource:@>
0batch_normalization_59_readvariableop_1_resource:@M
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_70_conv2d_readvariableop_resource:@А8
)conv2d_70_biasadd_readvariableop_resource:	А=
.batch_normalization_60_readvariableop_resource:	А?
0batch_normalization_60_readvariableop_1_resource:	АN
?batch_normalization_60_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_71_conv2d_readvariableop_resource:АА8
)conv2d_71_biasadd_readvariableop_resource:	А=
.batch_normalization_61_readvariableop_resource:	А?
0batch_normalization_61_readvariableop_1_resource:	АN
?batch_normalization_61_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:	А;
'dense_34_matmul_readvariableop_resource:
АА7
(dense_34_biasadd_readvariableop_resource:	А:
'dense_35_matmul_readvariableop_resource:	А6
(dense_35_biasadd_readvariableop_resource:
identityИҐ6batch_normalization_57/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_57/ReadVariableOpҐ'batch_normalization_57/ReadVariableOp_1Ґ6batch_normalization_58/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_58/ReadVariableOpҐ'batch_normalization_58/ReadVariableOp_1Ґ6batch_normalization_59/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_59/ReadVariableOpҐ'batch_normalization_59/ReadVariableOp_1Ґ6batch_normalization_60/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_60/ReadVariableOpҐ'batch_normalization_60/ReadVariableOp_1Ґ6batch_normalization_61/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_61/ReadVariableOpҐ'batch_normalization_61/ReadVariableOp_1Ґ conv2d_67/BiasAdd/ReadVariableOpҐconv2d_67/Conv2D/ReadVariableOpҐ conv2d_68/BiasAdd/ReadVariableOpҐconv2d_68/Conv2D/ReadVariableOpҐ conv2d_69/BiasAdd/ReadVariableOpҐconv2d_69/Conv2D/ReadVariableOpҐ conv2d_70/BiasAdd/ReadVariableOpҐconv2d_70/Conv2D/ReadVariableOpҐ conv2d_71/BiasAdd/ReadVariableOpҐconv2d_71/Conv2D/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOpҐdense_35/BiasAdd/ReadVariableOpҐdense_35/MatMul/ReadVariableOpX
rescaling_17/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Z
rescaling_17/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_17/mulMulinputsrescaling_17/Cast/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00Й
rescaling_17/addAddV2rescaling_17/mul:z:0rescaling_17/Cast_1/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00Р
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ї
conv2d_67/Conv2DConv2Drescaling_17/add:z:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00*
paddingSAME*
strides
Ж
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00Р
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:*
dtype0≤
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ґ
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0љ
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_67/BiasAdd:output:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€00:::::*
epsilon%oГ:*
is_training( Б
activation_57/ReluRelu+batch_normalization_57/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€00Њ
average_pooling2d_54/AvgPoolAvgPool activation_57/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
Р
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ћ
conv2d_68/Conv2DConv2D%average_pooling2d_54/AvgPool:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
Ж
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ Р
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
: *
dtype0Ф
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
: *
dtype0≤
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ґ
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0љ
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_68/BiasAdd:output:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( Б
activation_58/ReluRelu+batch_normalization_58/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€ ±
max_pooling2d_16/MaxPoolMaxPool activation_58/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
|
dropout_33/IdentityIdentity!max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Р
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0√
conv2d_69/Conv2DConv2Ddropout_33/Identity:output:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ж
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Р
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0≤
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ґ
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0љ
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_69/BiasAdd:output:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( Б
activation_59/ReluRelu+batch_normalization_59/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€@Њ
average_pooling2d_55/AvgPoolAvgPool activation_59/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
С
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ќ
conv2d_70/Conv2DConv2D%average_pooling2d_55/AvgPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АС
%batch_normalization_60/ReadVariableOpReadVariableOp.batch_normalization_60_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_60/ReadVariableOp_1ReadVariableOp0batch_normalization_60_readvariableop_1_resource*
_output_shapes	
:А*
dtype0≥
6batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0¬
'batch_normalization_60/FusedBatchNormV3FusedBatchNormV3conv2d_70/BiasAdd:output:0-batch_normalization_60/ReadVariableOp:value:0/batch_normalization_60/ReadVariableOp_1:value:0>batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( В
activation_60/ReluRelu+batch_normalization_60/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€А≤
max_pooling2d_17/MaxPoolMaxPool activation_60/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
}
dropout_34/IdentityIdentity!max_pooling2d_17/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€АТ
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_71/Conv2DConv2Ddropout_34/Identity:output:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АС
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes	
:А*
dtype0≥
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0¬
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3conv2d_71/BiasAdd:output:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( В
activation_61/ReluRelu+batch_normalization_61/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€Ањ
average_pooling2d_56/AvgPoolAvgPool activation_61/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Т
flatten_17/ReshapeReshape%average_pooling2d_56/AvgPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_34/MatMulMatMulflatten_17/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
dense_35/MatMulMatMuldense_34/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Г
NoOpNoOp7^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_17^batch_normalization_60/FusedBatchNormV3/ReadVariableOp9^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_60/ReadVariableOp(^batch_normalization_60/ReadVariableOp_17^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_1!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12p
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp6batch_normalization_60/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_18batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_60/ReadVariableOp%batch_normalization_60/ReadVariableOp2R
'batch_normalization_60/ReadVariableOp_1'batch_normalization_60/ReadVariableOp_12p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
ј

e
F__inference_dropout_33_layer_call_and_return_conditional_losses_505376

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed([
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У	
“
7__inference_batch_normalization_57_layer_call_fn_505179

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503285Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
н
e
I__inference_activation_58_layer_call_and_return_conditional_losses_503723

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€ b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
®

ю
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€00w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
ѓ

А
E__inference_conv2d_70_layer_call_and_return_conditional_losses_505496

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≥

Б
E__inference_conv2d_71_layer_call_and_return_conditional_losses_505624

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аh
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_503361

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ЙЁ
„(
!__inference__wrapped_model_503263
rescaling_17_inputV
<default_preliminary_conv2d_67_conv2d_readvariableop_resource:K
=default_preliminary_conv2d_67_biasadd_readvariableop_resource:P
Bdefault_preliminary_batch_normalization_57_readvariableop_resource:R
Ddefault_preliminary_batch_normalization_57_readvariableop_1_resource:a
Sdefault_preliminary_batch_normalization_57_fusedbatchnormv3_readvariableop_resource:c
Udefault_preliminary_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:V
<default_preliminary_conv2d_68_conv2d_readvariableop_resource: K
=default_preliminary_conv2d_68_biasadd_readvariableop_resource: P
Bdefault_preliminary_batch_normalization_58_readvariableop_resource: R
Ddefault_preliminary_batch_normalization_58_readvariableop_1_resource: a
Sdefault_preliminary_batch_normalization_58_fusedbatchnormv3_readvariableop_resource: c
Udefault_preliminary_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource: V
<default_preliminary_conv2d_69_conv2d_readvariableop_resource: @K
=default_preliminary_conv2d_69_biasadd_readvariableop_resource:@P
Bdefault_preliminary_batch_normalization_59_readvariableop_resource:@R
Ddefault_preliminary_batch_normalization_59_readvariableop_1_resource:@a
Sdefault_preliminary_batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@c
Udefault_preliminary_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@W
<default_preliminary_conv2d_70_conv2d_readvariableop_resource:@АL
=default_preliminary_conv2d_70_biasadd_readvariableop_resource:	АQ
Bdefault_preliminary_batch_normalization_60_readvariableop_resource:	АS
Ddefault_preliminary_batch_normalization_60_readvariableop_1_resource:	Аb
Sdefault_preliminary_batch_normalization_60_fusedbatchnormv3_readvariableop_resource:	Аd
Udefault_preliminary_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource:	АX
<default_preliminary_conv2d_71_conv2d_readvariableop_resource:ААL
=default_preliminary_conv2d_71_biasadd_readvariableop_resource:	АQ
Bdefault_preliminary_batch_normalization_61_readvariableop_resource:	АS
Ddefault_preliminary_batch_normalization_61_readvariableop_1_resource:	Аb
Sdefault_preliminary_batch_normalization_61_fusedbatchnormv3_readvariableop_resource:	Аd
Udefault_preliminary_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:	АO
;default_preliminary_dense_34_matmul_readvariableop_resource:
ААK
<default_preliminary_dense_34_biasadd_readvariableop_resource:	АN
;default_preliminary_dense_35_matmul_readvariableop_resource:	АJ
<default_preliminary_dense_35_biasadd_readvariableop_resource:
identityИҐJDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOpҐLDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Ґ9Default-preliminary/batch_normalization_57/ReadVariableOpҐ;Default-preliminary/batch_normalization_57/ReadVariableOp_1ҐJDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOpҐLDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1Ґ9Default-preliminary/batch_normalization_58/ReadVariableOpҐ;Default-preliminary/batch_normalization_58/ReadVariableOp_1ҐJDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOpҐLDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1Ґ9Default-preliminary/batch_normalization_59/ReadVariableOpҐ;Default-preliminary/batch_normalization_59/ReadVariableOp_1ҐJDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOpҐLDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1Ґ9Default-preliminary/batch_normalization_60/ReadVariableOpҐ;Default-preliminary/batch_normalization_60/ReadVariableOp_1ҐJDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOpҐLDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1Ґ9Default-preliminary/batch_normalization_61/ReadVariableOpҐ;Default-preliminary/batch_normalization_61/ReadVariableOp_1Ґ4Default-preliminary/conv2d_67/BiasAdd/ReadVariableOpҐ3Default-preliminary/conv2d_67/Conv2D/ReadVariableOpҐ4Default-preliminary/conv2d_68/BiasAdd/ReadVariableOpҐ3Default-preliminary/conv2d_68/Conv2D/ReadVariableOpҐ4Default-preliminary/conv2d_69/BiasAdd/ReadVariableOpҐ3Default-preliminary/conv2d_69/Conv2D/ReadVariableOpҐ4Default-preliminary/conv2d_70/BiasAdd/ReadVariableOpҐ3Default-preliminary/conv2d_70/Conv2D/ReadVariableOpҐ4Default-preliminary/conv2d_71/BiasAdd/ReadVariableOpҐ3Default-preliminary/conv2d_71/Conv2D/ReadVariableOpҐ3Default-preliminary/dense_34/BiasAdd/ReadVariableOpҐ2Default-preliminary/dense_34/MatMul/ReadVariableOpҐ3Default-preliminary/dense_35/BiasAdd/ReadVariableOpҐ2Default-preliminary/dense_35/MatMul/ReadVariableOpl
'Default-preliminary/rescaling_17/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;n
)Default-preliminary/rescaling_17/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
$Default-preliminary/rescaling_17/mulMulrescaling_17_input0Default-preliminary/rescaling_17/Cast/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00≈
$Default-preliminary/rescaling_17/addAddV2(Default-preliminary/rescaling_17/mul:z:02Default-preliminary/rescaling_17/Cast_1/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00Є
3Default-preliminary/conv2d_67/Conv2D/ReadVariableOpReadVariableOp<default_preliminary_conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ч
$Default-preliminary/conv2d_67/Conv2DConv2D(Default-preliminary/rescaling_17/add:z:0;Default-preliminary/conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00*
paddingSAME*
strides
Ѓ
4Default-preliminary/conv2d_67/BiasAdd/ReadVariableOpReadVariableOp=default_preliminary_conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0„
%Default-preliminary/conv2d_67/BiasAddBiasAdd-Default-preliminary/conv2d_67/Conv2D:output:0<Default-preliminary/conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00Є
9Default-preliminary/batch_normalization_57/ReadVariableOpReadVariableOpBdefault_preliminary_batch_normalization_57_readvariableop_resource*
_output_shapes
:*
dtype0Љ
;Default-preliminary/batch_normalization_57/ReadVariableOp_1ReadVariableOpDdefault_preliminary_batch_normalization_57_readvariableop_1_resource*
_output_shapes
:*
dtype0Џ
JDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOpSdefault_preliminary_batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ё
LDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUdefault_preliminary_batch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0µ
;Default-preliminary/batch_normalization_57/FusedBatchNormV3FusedBatchNormV3.Default-preliminary/conv2d_67/BiasAdd:output:0ADefault-preliminary/batch_normalization_57/ReadVariableOp:value:0CDefault-preliminary/batch_normalization_57/ReadVariableOp_1:value:0RDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0TDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€00:::::*
epsilon%oГ:*
is_training( ©
&Default-preliminary/activation_57/ReluRelu?Default-preliminary/batch_normalization_57/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€00ж
0Default-preliminary/average_pooling2d_54/AvgPoolAvgPool4Default-preliminary/activation_57/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
Є
3Default-preliminary/conv2d_68/Conv2D/ReadVariableOpReadVariableOp<default_preliminary_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0И
$Default-preliminary/conv2d_68/Conv2DConv2D9Default-preliminary/average_pooling2d_54/AvgPool:output:0;Default-preliminary/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
Ѓ
4Default-preliminary/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp=default_preliminary_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0„
%Default-preliminary/conv2d_68/BiasAddBiasAdd-Default-preliminary/conv2d_68/Conv2D:output:0<Default-preliminary/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ Є
9Default-preliminary/batch_normalization_58/ReadVariableOpReadVariableOpBdefault_preliminary_batch_normalization_58_readvariableop_resource*
_output_shapes
: *
dtype0Љ
;Default-preliminary/batch_normalization_58/ReadVariableOp_1ReadVariableOpDdefault_preliminary_batch_normalization_58_readvariableop_1_resource*
_output_shapes
: *
dtype0Џ
JDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOpSdefault_preliminary_batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ё
LDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUdefault_preliminary_batch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0µ
;Default-preliminary/batch_normalization_58/FusedBatchNormV3FusedBatchNormV3.Default-preliminary/conv2d_68/BiasAdd:output:0ADefault-preliminary/batch_normalization_58/ReadVariableOp:value:0CDefault-preliminary/batch_normalization_58/ReadVariableOp_1:value:0RDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0TDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( ©
&Default-preliminary/activation_58/ReluRelu?Default-preliminary/batch_normalization_58/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€ ў
,Default-preliminary/max_pooling2d_16/MaxPoolMaxPool4Default-preliminary/activation_58/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
§
'Default-preliminary/dropout_33/IdentityIdentity5Default-preliminary/max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Є
3Default-preliminary/conv2d_69/Conv2D/ReadVariableOpReadVariableOp<default_preliminary_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0€
$Default-preliminary/conv2d_69/Conv2DConv2D0Default-preliminary/dropout_33/Identity:output:0;Default-preliminary/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ѓ
4Default-preliminary/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp=default_preliminary_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0„
%Default-preliminary/conv2d_69/BiasAddBiasAdd-Default-preliminary/conv2d_69/Conv2D:output:0<Default-preliminary/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Є
9Default-preliminary/batch_normalization_59/ReadVariableOpReadVariableOpBdefault_preliminary_batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0Љ
;Default-preliminary/batch_normalization_59/ReadVariableOp_1ReadVariableOpDdefault_preliminary_batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0Џ
JDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOpSdefault_preliminary_batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ё
LDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUdefault_preliminary_batch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0µ
;Default-preliminary/batch_normalization_59/FusedBatchNormV3FusedBatchNormV3.Default-preliminary/conv2d_69/BiasAdd:output:0ADefault-preliminary/batch_normalization_59/ReadVariableOp:value:0CDefault-preliminary/batch_normalization_59/ReadVariableOp_1:value:0RDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0TDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( ©
&Default-preliminary/activation_59/ReluRelu?Default-preliminary/batch_normalization_59/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€@ж
0Default-preliminary/average_pooling2d_55/AvgPoolAvgPool4Default-preliminary/activation_59/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
є
3Default-preliminary/conv2d_70/Conv2D/ReadVariableOpReadVariableOp<default_preliminary_conv2d_70_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Й
$Default-preliminary/conv2d_70/Conv2DConv2D9Default-preliminary/average_pooling2d_55/AvgPool:output:0;Default-preliminary/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
ѓ
4Default-preliminary/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp=default_preliminary_conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ў
%Default-preliminary/conv2d_70/BiasAddBiasAdd-Default-preliminary/conv2d_70/Conv2D:output:0<Default-preliminary/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Ає
9Default-preliminary/batch_normalization_60/ReadVariableOpReadVariableOpBdefault_preliminary_batch_normalization_60_readvariableop_resource*
_output_shapes	
:А*
dtype0љ
;Default-preliminary/batch_normalization_60/ReadVariableOp_1ReadVariableOpDdefault_preliminary_batch_normalization_60_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
JDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOpSdefault_preliminary_batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0я
LDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUdefault_preliminary_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ї
;Default-preliminary/batch_normalization_60/FusedBatchNormV3FusedBatchNormV3.Default-preliminary/conv2d_70/BiasAdd:output:0ADefault-preliminary/batch_normalization_60/ReadVariableOp:value:0CDefault-preliminary/batch_normalization_60/ReadVariableOp_1:value:0RDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0TDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ™
&Default-preliminary/activation_60/ReluRelu?Default-preliminary/batch_normalization_60/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€АЏ
,Default-preliminary/max_pooling2d_17/MaxPoolMaxPool4Default-preliminary/activation_60/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
•
'Default-preliminary/dropout_34/IdentityIdentity5Default-preliminary/max_pooling2d_17/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€АЇ
3Default-preliminary/conv2d_71/Conv2D/ReadVariableOpReadVariableOp<default_preliminary_conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0А
$Default-preliminary/conv2d_71/Conv2DConv2D0Default-preliminary/dropout_34/Identity:output:0;Default-preliminary/conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
ѓ
4Default-preliminary/conv2d_71/BiasAdd/ReadVariableOpReadVariableOp=default_preliminary_conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ў
%Default-preliminary/conv2d_71/BiasAddBiasAdd-Default-preliminary/conv2d_71/Conv2D:output:0<Default-preliminary/conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Ає
9Default-preliminary/batch_normalization_61/ReadVariableOpReadVariableOpBdefault_preliminary_batch_normalization_61_readvariableop_resource*
_output_shapes	
:А*
dtype0љ
;Default-preliminary/batch_normalization_61/ReadVariableOp_1ReadVariableOpDdefault_preliminary_batch_normalization_61_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
JDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOpSdefault_preliminary_batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0я
LDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpUdefault_preliminary_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ї
;Default-preliminary/batch_normalization_61/FusedBatchNormV3FusedBatchNormV3.Default-preliminary/conv2d_71/BiasAdd:output:0ADefault-preliminary/batch_normalization_61/ReadVariableOp:value:0CDefault-preliminary/batch_normalization_61/ReadVariableOp_1:value:0RDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0TDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ™
&Default-preliminary/activation_61/ReluRelu?Default-preliminary/batch_normalization_61/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аз
0Default-preliminary/average_pooling2d_56/AvgPoolAvgPool4Default-preliminary/activation_61/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
u
$Default-preliminary/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
&Default-preliminary/flatten_17/ReshapeReshape9Default-preliminary/average_pooling2d_56/AvgPool:output:0-Default-preliminary/flatten_17/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А∞
2Default-preliminary/dense_34/MatMul/ReadVariableOpReadVariableOp;default_preliminary_dense_34_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ќ
#Default-preliminary/dense_34/MatMulMatMul/Default-preliminary/flatten_17/Reshape:output:0:Default-preliminary/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
3Default-preliminary/dense_34/BiasAdd/ReadVariableOpReadVariableOp<default_preliminary_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ќ
$Default-preliminary/dense_34/BiasAddBiasAdd-Default-preliminary/dense_34/MatMul:product:0;Default-preliminary/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЛ
!Default-preliminary/dense_34/ReluRelu-Default-preliminary/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
2Default-preliminary/dense_35/MatMul/ReadVariableOpReadVariableOp;default_preliminary_dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0ћ
#Default-preliminary/dense_35/MatMulMatMul/Default-preliminary/dense_34/Relu:activations:0:Default-preliminary/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ђ
3Default-preliminary/dense_35/BiasAdd/ReadVariableOpReadVariableOp<default_preliminary_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ќ
$Default-preliminary/dense_35/BiasAddBiasAdd-Default-preliminary/dense_35/MatMul:product:0;Default-preliminary/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
IdentityIdentity-Default-preliminary/dense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ђ
NoOpNoOpK^Default-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOpM^Default-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:^Default-preliminary/batch_normalization_57/ReadVariableOp<^Default-preliminary/batch_normalization_57/ReadVariableOp_1K^Default-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOpM^Default-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:^Default-preliminary/batch_normalization_58/ReadVariableOp<^Default-preliminary/batch_normalization_58/ReadVariableOp_1K^Default-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOpM^Default-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:^Default-preliminary/batch_normalization_59/ReadVariableOp<^Default-preliminary/batch_normalization_59/ReadVariableOp_1K^Default-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOpM^Default-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:^Default-preliminary/batch_normalization_60/ReadVariableOp<^Default-preliminary/batch_normalization_60/ReadVariableOp_1K^Default-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOpM^Default-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:^Default-preliminary/batch_normalization_61/ReadVariableOp<^Default-preliminary/batch_normalization_61/ReadVariableOp_15^Default-preliminary/conv2d_67/BiasAdd/ReadVariableOp4^Default-preliminary/conv2d_67/Conv2D/ReadVariableOp5^Default-preliminary/conv2d_68/BiasAdd/ReadVariableOp4^Default-preliminary/conv2d_68/Conv2D/ReadVariableOp5^Default-preliminary/conv2d_69/BiasAdd/ReadVariableOp4^Default-preliminary/conv2d_69/Conv2D/ReadVariableOp5^Default-preliminary/conv2d_70/BiasAdd/ReadVariableOp4^Default-preliminary/conv2d_70/Conv2D/ReadVariableOp5^Default-preliminary/conv2d_71/BiasAdd/ReadVariableOp4^Default-preliminary/conv2d_71/Conv2D/ReadVariableOp4^Default-preliminary/dense_34/BiasAdd/ReadVariableOp3^Default-preliminary/dense_34/MatMul/ReadVariableOp4^Default-preliminary/dense_35/BiasAdd/ReadVariableOp3^Default-preliminary/dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Ш
JDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOpJDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp2Ь
LDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1LDefault-preliminary/batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12v
9Default-preliminary/batch_normalization_57/ReadVariableOp9Default-preliminary/batch_normalization_57/ReadVariableOp2z
;Default-preliminary/batch_normalization_57/ReadVariableOp_1;Default-preliminary/batch_normalization_57/ReadVariableOp_12Ш
JDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOpJDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp2Ь
LDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1LDefault-preliminary/batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12v
9Default-preliminary/batch_normalization_58/ReadVariableOp9Default-preliminary/batch_normalization_58/ReadVariableOp2z
;Default-preliminary/batch_normalization_58/ReadVariableOp_1;Default-preliminary/batch_normalization_58/ReadVariableOp_12Ш
JDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOpJDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp2Ь
LDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1LDefault-preliminary/batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12v
9Default-preliminary/batch_normalization_59/ReadVariableOp9Default-preliminary/batch_normalization_59/ReadVariableOp2z
;Default-preliminary/batch_normalization_59/ReadVariableOp_1;Default-preliminary/batch_normalization_59/ReadVariableOp_12Ш
JDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOpJDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp2Ь
LDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1LDefault-preliminary/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12v
9Default-preliminary/batch_normalization_60/ReadVariableOp9Default-preliminary/batch_normalization_60/ReadVariableOp2z
;Default-preliminary/batch_normalization_60/ReadVariableOp_1;Default-preliminary/batch_normalization_60/ReadVariableOp_12Ш
JDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOpJDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp2Ь
LDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1LDefault-preliminary/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12v
9Default-preliminary/batch_normalization_61/ReadVariableOp9Default-preliminary/batch_normalization_61/ReadVariableOp2z
;Default-preliminary/batch_normalization_61/ReadVariableOp_1;Default-preliminary/batch_normalization_61/ReadVariableOp_12l
4Default-preliminary/conv2d_67/BiasAdd/ReadVariableOp4Default-preliminary/conv2d_67/BiasAdd/ReadVariableOp2j
3Default-preliminary/conv2d_67/Conv2D/ReadVariableOp3Default-preliminary/conv2d_67/Conv2D/ReadVariableOp2l
4Default-preliminary/conv2d_68/BiasAdd/ReadVariableOp4Default-preliminary/conv2d_68/BiasAdd/ReadVariableOp2j
3Default-preliminary/conv2d_68/Conv2D/ReadVariableOp3Default-preliminary/conv2d_68/Conv2D/ReadVariableOp2l
4Default-preliminary/conv2d_69/BiasAdd/ReadVariableOp4Default-preliminary/conv2d_69/BiasAdd/ReadVariableOp2j
3Default-preliminary/conv2d_69/Conv2D/ReadVariableOp3Default-preliminary/conv2d_69/Conv2D/ReadVariableOp2l
4Default-preliminary/conv2d_70/BiasAdd/ReadVariableOp4Default-preliminary/conv2d_70/BiasAdd/ReadVariableOp2j
3Default-preliminary/conv2d_70/Conv2D/ReadVariableOp3Default-preliminary/conv2d_70/Conv2D/ReadVariableOp2l
4Default-preliminary/conv2d_71/BiasAdd/ReadVariableOp4Default-preliminary/conv2d_71/BiasAdd/ReadVariableOp2j
3Default-preliminary/conv2d_71/Conv2D/ReadVariableOp3Default-preliminary/conv2d_71/Conv2D/ReadVariableOp2j
3Default-preliminary/dense_34/BiasAdd/ReadVariableOp3Default-preliminary/dense_34/BiasAdd/ReadVariableOp2h
2Default-preliminary/dense_34/MatMul/ReadVariableOp2Default-preliminary/dense_34/MatMul/ReadVariableOp2j
3Default-preliminary/dense_35/BiasAdd/ReadVariableOp3Default-preliminary/dense_35/BiasAdd/ReadVariableOp2h
2Default-preliminary/dense_35/MatMul/ReadVariableOp2Default-preliminary/dense_35/MatMul/ReadVariableOp:c _
/
_output_shapes
:€€€€€€€€€00
,
_user_specified_namerescaling_17_input
З
Ѕ
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505228

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
†
l
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_503336

inputs
identity™
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
з
©
4__inference_Default-preliminary_layer_call_fn_504777

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@А

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИҐStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_503881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Ч
≈
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505558

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
І

ш
D__inference_dense_34_layer_call_and_return_conditional_losses_505737

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
e
I__inference_activation_61_layer_call_and_return_conditional_losses_503836

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:€€€€€€€€€Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
З
Ѕ
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505457

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505311

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ё
°
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505540

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ќ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
С	
“
7__inference_batch_normalization_59_layer_call_fn_505421

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503468Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
Э
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503437

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
З
Ѕ
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505329

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ч
≈
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_503620

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
р
°
*__inference_conv2d_70_layer_call_fn_505486

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_503776x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
З
Ѕ
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_503316

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ј

e
F__inference_dropout_33_layer_call_and_return_conditional_losses_504069

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed([
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_503564

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
м
Я
*__inference_conv2d_67_layer_call_fn_505156

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€00*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_67_layer_call_and_return_conditional_losses_503670w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€00`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Ћ
J
.__inference_activation_60_layer_call_fn_505563

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_activation_60_layer_call_and_return_conditional_losses_503796i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ч
≈
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_503544

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0џ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
Ё
©
4__inference_Default-preliminary_layer_call_fn_504850

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@%

unknown_17:@А

unknown_18:	А

unknown_19:	А

unknown_20:	А

unknown_21:	А

unknown_22:	А&

unknown_23:АА

unknown_24:	А

unknown_25:	А

unknown_26:	А

unknown_27:	А

unknown_28:	А

unknown_29:
АА

unknown_30:	А

unknown_31:	А

unknown_32:
identityИҐStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*:
_read_only_resource_inputs
	
 !"*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
÷≥
’)
__inference__traced_save_506052
file_prefix/
+savev2_conv2d_67_kernel_read_readvariableop-
)savev2_conv2d_67_bias_read_readvariableop;
7savev2_batch_normalization_57_gamma_read_readvariableop:
6savev2_batch_normalization_57_beta_read_readvariableopA
=savev2_batch_normalization_57_moving_mean_read_readvariableopE
Asavev2_batch_normalization_57_moving_variance_read_readvariableop/
+savev2_conv2d_68_kernel_read_readvariableop-
)savev2_conv2d_68_bias_read_readvariableop;
7savev2_batch_normalization_58_gamma_read_readvariableop:
6savev2_batch_normalization_58_beta_read_readvariableopA
=savev2_batch_normalization_58_moving_mean_read_readvariableopE
Asavev2_batch_normalization_58_moving_variance_read_readvariableop/
+savev2_conv2d_69_kernel_read_readvariableop-
)savev2_conv2d_69_bias_read_readvariableop;
7savev2_batch_normalization_59_gamma_read_readvariableop:
6savev2_batch_normalization_59_beta_read_readvariableopA
=savev2_batch_normalization_59_moving_mean_read_readvariableopE
Asavev2_batch_normalization_59_moving_variance_read_readvariableop/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop;
7savev2_batch_normalization_60_gamma_read_readvariableop:
6savev2_batch_normalization_60_beta_read_readvariableopA
=savev2_batch_normalization_60_moving_mean_read_readvariableopE
Asavev2_batch_normalization_60_moving_variance_read_readvariableop/
+savev2_conv2d_71_kernel_read_readvariableop-
)savev2_conv2d_71_bias_read_readvariableop;
7savev2_batch_normalization_61_gamma_read_readvariableop:
6savev2_batch_normalization_61_beta_read_readvariableopA
=savev2_batch_normalization_61_moving_mean_read_readvariableopE
Asavev2_batch_normalization_61_moving_variance_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_conv2d_67_kernel_m_read_readvariableop4
0savev2_adam_conv2d_67_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_m_read_readvariableop6
2savev2_adam_conv2d_68_kernel_m_read_readvariableop4
0savev2_adam_conv2d_68_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_m_read_readvariableop6
2savev2_adam_conv2d_69_kernel_m_read_readvariableop4
0savev2_adam_conv2d_69_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_m_read_readvariableop6
2savev2_adam_conv2d_70_kernel_m_read_readvariableop4
0savev2_adam_conv2d_70_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_60_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_60_beta_m_read_readvariableop6
2savev2_adam_conv2d_71_kernel_m_read_readvariableop4
0savev2_adam_conv2d_71_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_m_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableop5
1savev2_adam_dense_35_kernel_m_read_readvariableop3
/savev2_adam_dense_35_bias_m_read_readvariableop6
2savev2_adam_conv2d_67_kernel_v_read_readvariableop4
0savev2_adam_conv2d_67_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_57_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_57_beta_v_read_readvariableop6
2savev2_adam_conv2d_68_kernel_v_read_readvariableop4
0savev2_adam_conv2d_68_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_58_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_58_beta_v_read_readvariableop6
2savev2_adam_conv2d_69_kernel_v_read_readvariableop4
0savev2_adam_conv2d_69_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_59_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_59_beta_v_read_readvariableop6
2savev2_adam_conv2d_70_kernel_v_read_readvariableop4
0savev2_adam_conv2d_70_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_60_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_60_beta_v_read_readvariableop6
2savev2_adam_conv2d_71_kernel_v_read_readvariableop4
0savev2_adam_conv2d_71_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_61_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_61_beta_v_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableop5
1savev2_adam_dense_35_kernel_v_read_readvariableop3
/savev2_adam_dense_35_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
: т2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*Ы2
valueС2BО2\B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH®
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:\*
dtype0*Ќ
value√Bј\B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B И(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_67_kernel_read_readvariableop)savev2_conv2d_67_bias_read_readvariableop7savev2_batch_normalization_57_gamma_read_readvariableop6savev2_batch_normalization_57_beta_read_readvariableop=savev2_batch_normalization_57_moving_mean_read_readvariableopAsavev2_batch_normalization_57_moving_variance_read_readvariableop+savev2_conv2d_68_kernel_read_readvariableop)savev2_conv2d_68_bias_read_readvariableop7savev2_batch_normalization_58_gamma_read_readvariableop6savev2_batch_normalization_58_beta_read_readvariableop=savev2_batch_normalization_58_moving_mean_read_readvariableopAsavev2_batch_normalization_58_moving_variance_read_readvariableop+savev2_conv2d_69_kernel_read_readvariableop)savev2_conv2d_69_bias_read_readvariableop7savev2_batch_normalization_59_gamma_read_readvariableop6savev2_batch_normalization_59_beta_read_readvariableop=savev2_batch_normalization_59_moving_mean_read_readvariableopAsavev2_batch_normalization_59_moving_variance_read_readvariableop+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop7savev2_batch_normalization_60_gamma_read_readvariableop6savev2_batch_normalization_60_beta_read_readvariableop=savev2_batch_normalization_60_moving_mean_read_readvariableopAsavev2_batch_normalization_60_moving_variance_read_readvariableop+savev2_conv2d_71_kernel_read_readvariableop)savev2_conv2d_71_bias_read_readvariableop7savev2_batch_normalization_61_gamma_read_readvariableop6savev2_batch_normalization_61_beta_read_readvariableop=savev2_batch_normalization_61_moving_mean_read_readvariableopAsavev2_batch_normalization_61_moving_variance_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_67_kernel_m_read_readvariableop0savev2_adam_conv2d_67_bias_m_read_readvariableop>savev2_adam_batch_normalization_57_gamma_m_read_readvariableop=savev2_adam_batch_normalization_57_beta_m_read_readvariableop2savev2_adam_conv2d_68_kernel_m_read_readvariableop0savev2_adam_conv2d_68_bias_m_read_readvariableop>savev2_adam_batch_normalization_58_gamma_m_read_readvariableop=savev2_adam_batch_normalization_58_beta_m_read_readvariableop2savev2_adam_conv2d_69_kernel_m_read_readvariableop0savev2_adam_conv2d_69_bias_m_read_readvariableop>savev2_adam_batch_normalization_59_gamma_m_read_readvariableop=savev2_adam_batch_normalization_59_beta_m_read_readvariableop2savev2_adam_conv2d_70_kernel_m_read_readvariableop0savev2_adam_conv2d_70_bias_m_read_readvariableop>savev2_adam_batch_normalization_60_gamma_m_read_readvariableop=savev2_adam_batch_normalization_60_beta_m_read_readvariableop2savev2_adam_conv2d_71_kernel_m_read_readvariableop0savev2_adam_conv2d_71_bias_m_read_readvariableop>savev2_adam_batch_normalization_61_gamma_m_read_readvariableop=savev2_adam_batch_normalization_61_beta_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop1savev2_adam_dense_35_kernel_m_read_readvariableop/savev2_adam_dense_35_bias_m_read_readvariableop2savev2_adam_conv2d_67_kernel_v_read_readvariableop0savev2_adam_conv2d_67_bias_v_read_readvariableop>savev2_adam_batch_normalization_57_gamma_v_read_readvariableop=savev2_adam_batch_normalization_57_beta_v_read_readvariableop2savev2_adam_conv2d_68_kernel_v_read_readvariableop0savev2_adam_conv2d_68_bias_v_read_readvariableop>savev2_adam_batch_normalization_58_gamma_v_read_readvariableop=savev2_adam_batch_normalization_58_beta_v_read_readvariableop2savev2_adam_conv2d_69_kernel_v_read_readvariableop0savev2_adam_conv2d_69_bias_v_read_readvariableop>savev2_adam_batch_normalization_59_gamma_v_read_readvariableop=savev2_adam_batch_normalization_59_beta_v_read_readvariableop2savev2_adam_conv2d_70_kernel_v_read_readvariableop0savev2_adam_conv2d_70_bias_v_read_readvariableop>savev2_adam_batch_normalization_60_gamma_v_read_readvariableop=savev2_adam_batch_normalization_60_beta_v_read_readvariableop2savev2_adam_conv2d_71_kernel_v_read_readvariableop0savev2_adam_conv2d_71_bias_v_read_readvariableop>savev2_adam_batch_normalization_61_gamma_v_read_readvariableop=savev2_adam_batch_normalization_61_beta_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop1savev2_adam_dense_35_kernel_v_read_readvariableop/savev2_adam_dense_35_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *j
dtypes`
^2\	Р
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

identity_1Identity_1:output:0*О
_input_shapesь
щ: ::::::: : : : : : : @:@:@:@:@:@:@А:А:А:А:А:А:АА:А:А:А:А:А:
АА:А:	А:: : : : : : : : : ::::: : : : : @:@:@:@:@А:А:А:А:АА:А:А:А:
АА:А:	А:::::: : : : : @:@:@:@:@А:А:А:А:АА:А:А:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:! 

_output_shapes	
:А:%!!

_output_shapes
:	А: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,,(
&
_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
: : 1

_output_shapes
: : 2

_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
: @: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:-8)
'
_output_shapes
:@А:!9

_output_shapes	
:А:!:

_output_shapes	
:А:!;

_output_shapes	
:А:.<*
(
_output_shapes
:АА:!=

_output_shapes	
:А:!>

_output_shapes	
:А:!?

_output_shapes	
:А:&@"
 
_output_shapes
:
АА:!A

_output_shapes	
:А:%B!

_output_shapes
:	А: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
: @: M

_output_shapes
:@: N

_output_shapes
:@: O

_output_shapes
:@:-P)
'
_output_shapes
:@А:!Q

_output_shapes	
:А:!R

_output_shapes	
:А:!S

_output_shapes	
:А:.T*
(
_output_shapes
:АА:!U

_output_shapes	
:А:!V

_output_shapes	
:А:!W

_output_shapes	
:А:&X"
 
_output_shapes
:
АА:!Y

_output_shapes	
:А:%Z!

_output_shapes
:	А: [

_output_shapes
::\

_output_shapes
: 
э
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_505593

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
щ
d
F__inference_dropout_33_layer_call_and_return_conditional_losses_503731

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€ c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
н
e
I__inference_activation_57_layer_call_and_return_conditional_losses_503690

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€00b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€00"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€00:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
м
Я
*__inference_conv2d_68_layer_call_fn_505257

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_503703w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
јџ
√!
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_505134

inputsB
(conv2d_67_conv2d_readvariableop_resource:7
)conv2d_67_biasadd_readvariableop_resource:<
.batch_normalization_57_readvariableop_resource:>
0batch_normalization_57_readvariableop_1_resource:M
?batch_normalization_57_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_68_conv2d_readvariableop_resource: 7
)conv2d_68_biasadd_readvariableop_resource: <
.batch_normalization_58_readvariableop_resource: >
0batch_normalization_58_readvariableop_1_resource: M
?batch_normalization_58_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_69_conv2d_readvariableop_resource: @7
)conv2d_69_biasadd_readvariableop_resource:@<
.batch_normalization_59_readvariableop_resource:@>
0batch_normalization_59_readvariableop_1_resource:@M
?batch_normalization_59_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_70_conv2d_readvariableop_resource:@А8
)conv2d_70_biasadd_readvariableop_resource:	А=
.batch_normalization_60_readvariableop_resource:	А?
0batch_normalization_60_readvariableop_1_resource:	АN
?batch_normalization_60_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_71_conv2d_readvariableop_resource:АА8
)conv2d_71_biasadd_readvariableop_resource:	А=
.batch_normalization_61_readvariableop_resource:	А?
0batch_normalization_61_readvariableop_1_resource:	АN
?batch_normalization_61_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:	А;
'dense_34_matmul_readvariableop_resource:
АА7
(dense_34_biasadd_readvariableop_resource:	А:
'dense_35_matmul_readvariableop_resource:	А6
(dense_35_biasadd_readvariableop_resource:
identityИҐ%batch_normalization_57/AssignNewValueҐ'batch_normalization_57/AssignNewValue_1Ґ6batch_normalization_57/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_57/ReadVariableOpҐ'batch_normalization_57/ReadVariableOp_1Ґ%batch_normalization_58/AssignNewValueҐ'batch_normalization_58/AssignNewValue_1Ґ6batch_normalization_58/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_58/ReadVariableOpҐ'batch_normalization_58/ReadVariableOp_1Ґ%batch_normalization_59/AssignNewValueҐ'batch_normalization_59/AssignNewValue_1Ґ6batch_normalization_59/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_59/ReadVariableOpҐ'batch_normalization_59/ReadVariableOp_1Ґ%batch_normalization_60/AssignNewValueҐ'batch_normalization_60/AssignNewValue_1Ґ6batch_normalization_60/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_60/ReadVariableOpҐ'batch_normalization_60/ReadVariableOp_1Ґ%batch_normalization_61/AssignNewValueҐ'batch_normalization_61/AssignNewValue_1Ґ6batch_normalization_61/FusedBatchNormV3/ReadVariableOpҐ8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1Ґ%batch_normalization_61/ReadVariableOpҐ'batch_normalization_61/ReadVariableOp_1Ґ conv2d_67/BiasAdd/ReadVariableOpҐconv2d_67/Conv2D/ReadVariableOpҐ conv2d_68/BiasAdd/ReadVariableOpҐconv2d_68/Conv2D/ReadVariableOpҐ conv2d_69/BiasAdd/ReadVariableOpҐconv2d_69/Conv2D/ReadVariableOpҐ conv2d_70/BiasAdd/ReadVariableOpҐconv2d_70/Conv2D/ReadVariableOpҐ conv2d_71/BiasAdd/ReadVariableOpҐconv2d_71/Conv2D/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOpҐdense_35/BiasAdd/ReadVariableOpҐdense_35/MatMul/ReadVariableOpX
rescaling_17/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Z
rescaling_17/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_17/mulMulinputsrescaling_17/Cast/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00Й
rescaling_17/addAddV2rescaling_17/mul:z:0rescaling_17/Cast_1/x:output:0*
T0*/
_output_shapes
:€€€€€€€€€00Р
conv2d_67/Conv2D/ReadVariableOpReadVariableOp(conv2d_67_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ї
conv2d_67/Conv2DConv2Drescaling_17/add:z:0'conv2d_67/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00*
paddingSAME*
strides
Ж
 conv2d_67/BiasAdd/ReadVariableOpReadVariableOp)conv2d_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_67/BiasAddBiasAddconv2d_67/Conv2D:output:0(conv2d_67/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€00Р
%batch_normalization_57/ReadVariableOpReadVariableOp.batch_normalization_57_readvariableop_resource*
_output_shapes
:*
dtype0Ф
'batch_normalization_57/ReadVariableOp_1ReadVariableOp0batch_normalization_57_readvariableop_1_resource*
_output_shapes
:*
dtype0≤
6batch_normalization_57/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0ґ
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Ћ
'batch_normalization_57/FusedBatchNormV3FusedBatchNormV3conv2d_67/BiasAdd:output:0-batch_normalization_57/ReadVariableOp:value:0/batch_normalization_57/ReadVariableOp_1:value:0>batch_normalization_57/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€00:::::*
epsilon%oГ:*
exponential_avg_factor%
„#<Ґ
%batch_normalization_57/AssignNewValueAssignVariableOp?batch_normalization_57_fusedbatchnormv3_readvariableop_resource4batch_normalization_57/FusedBatchNormV3:batch_mean:07^batch_normalization_57/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ђ
'batch_normalization_57/AssignNewValue_1AssignVariableOpAbatch_normalization_57_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_57/FusedBatchNormV3:batch_variance:09^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Б
activation_57/ReluRelu+batch_normalization_57/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€00Њ
average_pooling2d_54/AvgPoolAvgPool activation_57/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingSAME*
strides
Р
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ћ
conv2d_68/Conv2DConv2D%average_pooling2d_54/AvgPool:output:0'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
Ж
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ Р
%batch_normalization_58/ReadVariableOpReadVariableOp.batch_normalization_58_readvariableop_resource*
_output_shapes
: *
dtype0Ф
'batch_normalization_58/ReadVariableOp_1ReadVariableOp0batch_normalization_58_readvariableop_1_resource*
_output_shapes
: *
dtype0≤
6batch_normalization_58/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0ґ
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ћ
'batch_normalization_58/FusedBatchNormV3FusedBatchNormV3conv2d_68/BiasAdd:output:0-batch_normalization_58/ReadVariableOp:value:0/batch_normalization_58/ReadVariableOp_1:value:0>batch_normalization_58/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%
„#<Ґ
%batch_normalization_58/AssignNewValueAssignVariableOp?batch_normalization_58_fusedbatchnormv3_readvariableop_resource4batch_normalization_58/FusedBatchNormV3:batch_mean:07^batch_normalization_58/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ђ
'batch_normalization_58/AssignNewValue_1AssignVariableOpAbatch_normalization_58_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_58/FusedBatchNormV3:batch_variance:09^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Б
activation_58/ReluRelu+batch_normalization_58/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€ ±
max_pooling2d_16/MaxPoolMaxPool activation_58/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingSAME*
strides
]
dropout_33/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Э
dropout_33/dropout/MulMul!max_pooling2d_16/MaxPool:output:0!dropout_33/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
dropout_33/dropout/ShapeShape!max_pooling2d_16/MaxPool:output:0*
T0*
_output_shapes
:ґ
/dropout_33/dropout/random_uniform/RandomUniformRandomUniform!dropout_33/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
dtype0*

seed(f
!dropout_33/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ѕ
dropout_33/dropout/GreaterEqualGreaterEqual8dropout_33/dropout/random_uniform/RandomUniform:output:0*dropout_33/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€ Н
dropout_33/dropout/CastCast#dropout_33/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€ Т
dropout_33/dropout/Mul_1Muldropout_33/dropout/Mul:z:0dropout_33/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€ Р
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0√
conv2d_69/Conv2DConv2Ddropout_33/dropout/Mul_1:z:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ж
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Р
%batch_normalization_59/ReadVariableOpReadVariableOp.batch_normalization_59_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
'batch_normalization_59/ReadVariableOp_1ReadVariableOp0batch_normalization_59_readvariableop_1_resource*
_output_shapes
:@*
dtype0≤
6batch_normalization_59/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0ґ
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ћ
'batch_normalization_59/FusedBatchNormV3FusedBatchNormV3conv2d_69/BiasAdd:output:0-batch_normalization_59/ReadVariableOp:value:0/batch_normalization_59/ReadVariableOp_1:value:0>batch_normalization_59/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<Ґ
%batch_normalization_59/AssignNewValueAssignVariableOp?batch_normalization_59_fusedbatchnormv3_readvariableop_resource4batch_normalization_59/FusedBatchNormV3:batch_mean:07^batch_normalization_59/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ђ
'batch_normalization_59/AssignNewValue_1AssignVariableOpAbatch_normalization_59_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_59/FusedBatchNormV3:batch_variance:09^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Б
activation_59/ReluRelu+batch_normalization_59/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€@Њ
average_pooling2d_55/AvgPoolAvgPool activation_59/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingSAME*
strides
С
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ќ
conv2d_70/Conv2DConv2D%average_pooling2d_55/AvgPool:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АС
%batch_normalization_60/ReadVariableOpReadVariableOp.batch_normalization_60_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_60/ReadVariableOp_1ReadVariableOp0batch_normalization_60_readvariableop_1_resource*
_output_shapes	
:А*
dtype0≥
6batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0–
'batch_normalization_60/FusedBatchNormV3FusedBatchNormV3conv2d_70/BiasAdd:output:0-batch_normalization_60/ReadVariableOp:value:0/batch_normalization_60/ReadVariableOp_1:value:0>batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<Ґ
%batch_normalization_60/AssignNewValueAssignVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource4batch_normalization_60/FusedBatchNormV3:batch_mean:07^batch_normalization_60/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ђ
'batch_normalization_60/AssignNewValue_1AssignVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_60/FusedBatchNormV3:batch_variance:09^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
activation_60/ReluRelu+batch_normalization_60/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€А≤
max_pooling2d_17/MaxPoolMaxPool activation_60/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
]
dropout_34/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
dropout_34/dropout/MulMul!max_pooling2d_17/MaxPool:output:0!dropout_34/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аi
dropout_34/dropout/ShapeShape!max_pooling2d_17/MaxPool:output:0*
T0*
_output_shapes
:ƒ
/dropout_34/dropout/random_uniform/RandomUniformRandomUniform!dropout_34/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0*

seed(*
seed2f
!dropout_34/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?–
dropout_34/dropout/GreaterEqualGreaterEqual8dropout_34/dropout/random_uniform/RandomUniform:output:0*dropout_34/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АО
dropout_34/dropout/CastCast#dropout_34/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€АУ
dropout_34/dropout/Mul_1Muldropout_34/dropout/Mul:z:0dropout_34/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€АТ
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ƒ
conv2d_71/Conv2DConv2Ddropout_34/dropout/Mul_1:z:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АС
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes	
:А*
dtype0≥
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Ј
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0–
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3conv2d_71/BiasAdd:output:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
„#<Ґ
%batch_normalization_61/AssignNewValueAssignVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource4batch_normalization_61/FusedBatchNormV3:batch_mean:07^batch_normalization_61/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(ђ
'batch_normalization_61/AssignNewValue_1AssignVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_61/FusedBatchNormV3:batch_variance:09^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(В
activation_61/ReluRelu+batch_normalization_61/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:€€€€€€€€€Ањ
average_pooling2d_56/AvgPoolAvgPool activation_61/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingSAME*
strides
a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Т
flatten_17/ReshapeReshape%average_pooling2d_56/AvgPool:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_34/MatMulMatMulflatten_17/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Р
dense_35/MatMulMatMuldense_34/Relu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_35/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Э
NoOpNoOp&^batch_normalization_57/AssignNewValue(^batch_normalization_57/AssignNewValue_17^batch_normalization_57/FusedBatchNormV3/ReadVariableOp9^batch_normalization_57/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_57/ReadVariableOp(^batch_normalization_57/ReadVariableOp_1&^batch_normalization_58/AssignNewValue(^batch_normalization_58/AssignNewValue_17^batch_normalization_58/FusedBatchNormV3/ReadVariableOp9^batch_normalization_58/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_58/ReadVariableOp(^batch_normalization_58/ReadVariableOp_1&^batch_normalization_59/AssignNewValue(^batch_normalization_59/AssignNewValue_17^batch_normalization_59/FusedBatchNormV3/ReadVariableOp9^batch_normalization_59/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_59/ReadVariableOp(^batch_normalization_59/ReadVariableOp_1&^batch_normalization_60/AssignNewValue(^batch_normalization_60/AssignNewValue_17^batch_normalization_60/FusedBatchNormV3/ReadVariableOp9^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_60/ReadVariableOp(^batch_normalization_60/ReadVariableOp_1&^batch_normalization_61/AssignNewValue(^batch_normalization_61/AssignNewValue_17^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_1!^conv2d_67/BiasAdd/ReadVariableOp ^conv2d_67/Conv2D/ReadVariableOp!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_57/AssignNewValue%batch_normalization_57/AssignNewValue2R
'batch_normalization_57/AssignNewValue_1'batch_normalization_57/AssignNewValue_12p
6batch_normalization_57/FusedBatchNormV3/ReadVariableOp6batch_normalization_57/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_57/FusedBatchNormV3/ReadVariableOp_18batch_normalization_57/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_57/ReadVariableOp%batch_normalization_57/ReadVariableOp2R
'batch_normalization_57/ReadVariableOp_1'batch_normalization_57/ReadVariableOp_12N
%batch_normalization_58/AssignNewValue%batch_normalization_58/AssignNewValue2R
'batch_normalization_58/AssignNewValue_1'batch_normalization_58/AssignNewValue_12p
6batch_normalization_58/FusedBatchNormV3/ReadVariableOp6batch_normalization_58/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_58/FusedBatchNormV3/ReadVariableOp_18batch_normalization_58/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_58/ReadVariableOp%batch_normalization_58/ReadVariableOp2R
'batch_normalization_58/ReadVariableOp_1'batch_normalization_58/ReadVariableOp_12N
%batch_normalization_59/AssignNewValue%batch_normalization_59/AssignNewValue2R
'batch_normalization_59/AssignNewValue_1'batch_normalization_59/AssignNewValue_12p
6batch_normalization_59/FusedBatchNormV3/ReadVariableOp6batch_normalization_59/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_59/FusedBatchNormV3/ReadVariableOp_18batch_normalization_59/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_59/ReadVariableOp%batch_normalization_59/ReadVariableOp2R
'batch_normalization_59/ReadVariableOp_1'batch_normalization_59/ReadVariableOp_12N
%batch_normalization_60/AssignNewValue%batch_normalization_60/AssignNewValue2R
'batch_normalization_60/AssignNewValue_1'batch_normalization_60/AssignNewValue_12p
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp6batch_normalization_60/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_18batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_60/ReadVariableOp%batch_normalization_60/ReadVariableOp2R
'batch_normalization_60/ReadVariableOp_1'batch_normalization_60/ReadVariableOp_12N
%batch_normalization_61/AssignNewValue%batch_normalization_61/AssignNewValue2R
'batch_normalization_61/AssignNewValue_1'batch_normalization_61/AssignNewValue_12p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12D
 conv2d_67/BiasAdd/ReadVariableOp conv2d_67/BiasAdd/ReadVariableOp2B
conv2d_67/Conv2D/ReadVariableOpconv2d_67/Conv2D/ReadVariableOp2D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Ё
°
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505668

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0Ќ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
 
_user_specified_nameinputs
З
Ѕ
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_503468

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
У
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_505578

inputs
identity°
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingSAME*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*…
serving_defaultµ
Y
rescaling_17_inputC
$serving_default_rescaling_17_input:0€€€€€€€€€00<
dense_350
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:£п
В
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer-18
layer_with_weights-8
layer-19
layer_with_weights-9
layer-20
layer-21
layer-22
layer-23
layer_with_weights-10
layer-24
layer_with_weights-11
layer-25
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature
"	optimizer
#
signatures"
_tf_keras_sequential
•
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias
 2_jit_compiled_convolution_op"
_tf_keras_layer
к
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses
9axis
	:gamma
;beta
<moving_mean
=moving_variance"
_tf_keras_layer
•
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
•
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op"
_tf_keras_layer
к
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance"
_tf_keras_layer
•
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
•
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
p_random_generator"
_tf_keras_layer
Ё
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

wkernel
xbias
 y_jit_compiled_convolution_op"
_tf_keras_layer
п
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
	Аaxis

Бgamma
	Вbeta
Гmoving_mean
Дmoving_variance"
_tf_keras_layer
Ђ
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses"
_tf_keras_layer
ж
С	variables
Тtrainable_variables
Уregularization_losses
Ф	keras_api
Х__call__
+Ц&call_and_return_all_conditional_losses
Чkernel
	Шbias
!Щ_jit_compiled_convolution_op"
_tf_keras_layer
х
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
	†axis

°gamma
	Ґbeta
£moving_mean
§moving_variance"
_tf_keras_layer
Ђ
•	variables
¶trainable_variables
Іregularization_losses
®	keras_api
©__call__
+™&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Ђ	variables
ђtrainable_variables
≠regularization_losses
Ѓ	keras_api
ѓ__call__
+∞&call_and_return_all_conditional_losses"
_tf_keras_layer
√
±	variables
≤trainable_variables
≥regularization_losses
і	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses
Ј_random_generator"
_tf_keras_layer
ж
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Љ__call__
+љ&call_and_return_all_conditional_losses
Њkernel
	њbias
!ј_jit_compiled_convolution_op"
_tf_keras_layer
х
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses
	«axis

»gamma
	…beta
 moving_mean
Ћmoving_variance"
_tf_keras_layer
Ђ
ћ	variables
Ќtrainable_variables
ќregularization_losses
ѕ	keras_api
–__call__
+—&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
“	variables
”trainable_variables
‘regularization_losses
’	keras_api
÷__call__
+„&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Ў	variables
ўtrainable_variables
Џregularization_losses
џ	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
дkernel
	еbias"
_tf_keras_layer
√
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
мkernel
	нbias"
_tf_keras_layer
Ї
00
11
:2
;3
<4
=5
P6
Q7
Z8
[9
\10
]11
w12
x13
Б14
В15
Г16
Д17
Ч18
Ш19
°20
Ґ21
£22
§23
Њ24
њ25
»26
…27
 28
Ћ29
д30
е31
м32
н33"
trackable_list_wrapper
д
00
11
:2
;3
P4
Q5
Z6
[7
w8
x9
Б10
В11
Ч12
Ш13
°14
Ґ15
Њ16
њ17
»18
…19
д20
е21
м22
н23"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
Н
уtrace_0
фtrace_1
хtrace_2
цtrace_32Ъ
4__inference_Default-preliminary_layer_call_fn_503952
4__inference_Default-preliminary_layer_call_fn_504777
4__inference_Default-preliminary_layer_call_fn_504850
4__inference_Default-preliminary_layer_call_fn_504427њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0zфtrace_1zхtrace_2zцtrace_3
щ
чtrace_0
шtrace_1
щtrace_2
ъtrace_32Ж
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504985
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_505134
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504525
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504623њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0zшtrace_1zщtrace_2zъtrace_3
„B‘
!__inference__wrapped_model_503263rescaling_17_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘
	ыiter
ьbeta_1
эbeta_2

юdecay
€learning_rate0m–1m—:m“;m”Pm‘Qm’Zm÷[m„wmЎxmў	БmЏ	Вmџ	Чm№	ШmЁ	°mё	Ґmя	Њmа	њmб	»mв	…mг	дmд	еmе	мmж	нmз0vи1vй:vк;vлPvмQvнZvо[vпwvрxvс	Бvт	Вvу	Чvф	Шvх	°vц	Ґvч	Њvш	њvщ	»vъ	…vы	дvь	еvэ	мvю	нv€"
	optimizer
-
Аserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
у
Жtrace_02‘
-__inference_rescaling_17_layer_call_fn_505139Ґ
Щ≤Х
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
annotations™ *
 zЖtrace_0
О
Зtrace_02п
H__inference_rescaling_17_layer_call_and_return_conditional_losses_505147Ґ
Щ≤Х
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
annotations™ *
 zЗtrace_0
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
р
Нtrace_02—
*__inference_conv2d_67_layer_call_fn_505156Ґ
Щ≤Х
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
annotations™ *
 zНtrace_0
Л
Оtrace_02м
E__inference_conv2d_67_layer_call_and_return_conditional_losses_505166Ґ
Щ≤Х
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
annotations™ *
 zОtrace_0
*:(2conv2d_67/kernel
:2conv2d_67/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
:0
;1
<2
=3"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
г
Фtrace_0
Хtrace_12®
7__inference_batch_normalization_57_layer_call_fn_505179
7__inference_batch_normalization_57_layer_call_fn_505192≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0zХtrace_1
Щ
Цtrace_0
Чtrace_12ё
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505210
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505228≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЦtrace_0zЧtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_57/gamma
):'2batch_normalization_57/beta
2:0 (2"batch_normalization_57/moving_mean
6:4 (2&batch_normalization_57/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
ф
Эtrace_02’
.__inference_activation_57_layer_call_fn_505233Ґ
Щ≤Х
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
annotations™ *
 zЭtrace_0
П
Юtrace_02р
I__inference_activation_57_layer_call_and_return_conditional_losses_505238Ґ
Щ≤Х
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
annotations™ *
 zЮtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
ы
§trace_02№
5__inference_average_pooling2d_54_layer_call_fn_505243Ґ
Щ≤Х
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
annotations™ *
 z§trace_0
Ц
•trace_02ч
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_505248Ґ
Щ≤Х
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
annotations™ *
 z•trace_0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
р
Ђtrace_02—
*__inference_conv2d_68_layer_call_fn_505257Ґ
Щ≤Х
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
annotations™ *
 zЂtrace_0
Л
ђtrace_02м
E__inference_conv2d_68_layer_call_and_return_conditional_losses_505267Ґ
Щ≤Х
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
annotations™ *
 zђtrace_0
*:( 2conv2d_68/kernel
: 2conv2d_68/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
<
Z0
[1
\2
]3"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≠non_trainable_variables
Ѓlayers
ѓmetrics
 ∞layer_regularization_losses
±layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
г
≤trace_0
≥trace_12®
7__inference_batch_normalization_58_layer_call_fn_505280
7__inference_batch_normalization_58_layer_call_fn_505293≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0z≥trace_1
Щ
іtrace_0
µtrace_12ё
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505311
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505329≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_58/gamma
):' 2batch_normalization_58/beta
2:0  (2"batch_normalization_58/moving_mean
6:4  (2&batch_normalization_58/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
ф
їtrace_02’
.__inference_activation_58_layer_call_fn_505334Ґ
Щ≤Х
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
annotations™ *
 zїtrace_0
П
Љtrace_02р
I__inference_activation_58_layer_call_and_return_conditional_losses_505339Ґ
Щ≤Х
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
annotations™ *
 zЉtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
љnon_trainable_variables
Њlayers
њmetrics
 јlayer_regularization_losses
Ѕlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
ч
¬trace_02Ў
1__inference_max_pooling2d_16_layer_call_fn_505344Ґ
Щ≤Х
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
annotations™ *
 z¬trace_0
Т
√trace_02у
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_505349Ґ
Щ≤Х
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
annotations™ *
 z√trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
Ћ
…trace_0
 trace_12Р
+__inference_dropout_33_layer_call_fn_505354
+__inference_dropout_33_layer_call_fn_505359≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z…trace_0z trace_1
Б
Ћtrace_0
ћtrace_12∆
F__inference_dropout_33_layer_call_and_return_conditional_losses_505364
F__inference_dropout_33_layer_call_and_return_conditional_losses_505376≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0zћtrace_1
"
_generic_user_object
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
р
“trace_02—
*__inference_conv2d_69_layer_call_fn_505385Ґ
Щ≤Х
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
annotations™ *
 z“trace_0
Л
”trace_02м
E__inference_conv2d_69_layer_call_and_return_conditional_losses_505395Ґ
Щ≤Х
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
annotations™ *
 z”trace_0
*:( @2conv2d_69/kernel
:@2conv2d_69/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
@
Б0
В1
Г2
Д3"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
г
ўtrace_0
Џtrace_12®
7__inference_batch_normalization_59_layer_call_fn_505408
7__inference_batch_normalization_59_layer_call_fn_505421≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0zЏtrace_1
Щ
џtrace_0
№trace_12ё
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505439
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505457≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zџtrace_0z№trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_59/gamma
):'@2batch_normalization_59/beta
2:0@ (2"batch_normalization_59/moving_mean
6:4@ (2&batch_normalization_59/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
ф
вtrace_02’
.__inference_activation_59_layer_call_fn_505462Ґ
Щ≤Х
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
annotations™ *
 zвtrace_0
П
гtrace_02р
I__inference_activation_59_layer_call_and_return_conditional_losses_505467Ґ
Щ≤Х
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
annotations™ *
 zгtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
ы
йtrace_02№
5__inference_average_pooling2d_55_layer_call_fn_505472Ґ
Щ≤Х
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
annotations™ *
 zйtrace_0
Ц
кtrace_02ч
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_505477Ґ
Щ≤Х
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
annotations™ *
 zкtrace_0
0
Ч0
Ш1"
trackable_list_wrapper
0
Ч0
Ш1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
лnon_trainable_variables
мlayers
нmetrics
 оlayer_regularization_losses
пlayer_metrics
С	variables
Тtrainable_variables
Уregularization_losses
Х__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
р
рtrace_02—
*__inference_conv2d_70_layer_call_fn_505486Ґ
Щ≤Х
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
annotations™ *
 zрtrace_0
Л
сtrace_02м
E__inference_conv2d_70_layer_call_and_return_conditional_losses_505496Ґ
Щ≤Х
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
annotations™ *
 zсtrace_0
+:)@А2conv2d_70/kernel
:А2conv2d_70/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
@
°0
Ґ1
£2
§3"
trackable_list_wrapper
0
°0
Ґ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
г
чtrace_0
шtrace_12®
7__inference_batch_normalization_60_layer_call_fn_505509
7__inference_batch_normalization_60_layer_call_fn_505522≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0zшtrace_1
Щ
щtrace_0
ъtrace_12ё
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505540
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505558≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0zъtrace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_60/gamma
*:(А2batch_normalization_60/beta
3:1А (2"batch_normalization_60/moving_mean
7:5А (2&batch_normalization_60/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
•	variables
¶trainable_variables
Іregularization_losses
©__call__
+™&call_and_return_all_conditional_losses
'™"call_and_return_conditional_losses"
_generic_user_object
ф
Аtrace_02’
.__inference_activation_60_layer_call_fn_505563Ґ
Щ≤Х
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
annotations™ *
 zАtrace_0
П
Бtrace_02р
I__inference_activation_60_layer_call_and_return_conditional_losses_505568Ґ
Щ≤Х
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
annotations™ *
 zБtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
Ђ	variables
ђtrainable_variables
≠regularization_losses
ѓ__call__
+∞&call_and_return_all_conditional_losses
'∞"call_and_return_conditional_losses"
_generic_user_object
ч
Зtrace_02Ў
1__inference_max_pooling2d_17_layer_call_fn_505573Ґ
Щ≤Х
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
annotations™ *
 zЗtrace_0
Т
Иtrace_02у
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_505578Ґ
Щ≤Х
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
annotations™ *
 zИtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
±	variables
≤trainable_variables
≥regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
Ћ
Оtrace_0
Пtrace_12Р
+__inference_dropout_34_layer_call_fn_505583
+__inference_dropout_34_layer_call_fn_505588≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0zПtrace_1
Б
Рtrace_0
Сtrace_12∆
F__inference_dropout_34_layer_call_and_return_conditional_losses_505593
F__inference_dropout_34_layer_call_and_return_conditional_losses_505605≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0zСtrace_1
"
_generic_user_object
0
Њ0
њ1"
trackable_list_wrapper
0
Њ0
њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Љ__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
р
Чtrace_02—
*__inference_conv2d_71_layer_call_fn_505614Ґ
Щ≤Х
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
annotations™ *
 zЧtrace_0
Л
Шtrace_02м
E__inference_conv2d_71_layer_call_and_return_conditional_losses_505624Ґ
Щ≤Х
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
annotations™ *
 zШtrace_0
,:*АА2conv2d_71/kernel
:А2conv2d_71/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
@
»0
…1
 2
Ћ3"
trackable_list_wrapper
0
»0
…1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
г
Юtrace_0
Яtrace_12®
7__inference_batch_normalization_61_layer_call_fn_505637
7__inference_batch_normalization_61_layer_call_fn_505650≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0zЯtrace_1
Щ
†trace_0
°trace_12ё
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505668
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505686≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0z°trace_1
 "
trackable_list_wrapper
+:)А2batch_normalization_61/gamma
*:(А2batch_normalization_61/beta
3:1А (2"batch_normalization_61/moving_mean
7:5А (2&batch_normalization_61/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
ћ	variables
Ќtrainable_variables
ќregularization_losses
–__call__
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses"
_generic_user_object
ф
Іtrace_02’
.__inference_activation_61_layer_call_fn_505691Ґ
Щ≤Х
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
annotations™ *
 zІtrace_0
П
®trace_02р
I__inference_activation_61_layer_call_and_return_conditional_losses_505696Ґ
Щ≤Х
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
annotations™ *
 z®trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
“	variables
”trainable_variables
‘regularization_losses
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
ы
Ѓtrace_02№
5__inference_average_pooling2d_56_layer_call_fn_505701Ґ
Щ≤Х
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
annotations™ *
 zЃtrace_0
Ц
ѓtrace_02ч
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_505706Ґ
Щ≤Х
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
annotations™ *
 zѓtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Ў	variables
ўtrainable_variables
Џregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
с
µtrace_02“
+__inference_flatten_17_layer_call_fn_505711Ґ
Щ≤Х
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
annotations™ *
 zµtrace_0
М
ґtrace_02н
F__inference_flatten_17_layer_call_and_return_conditional_losses_505717Ґ
Щ≤Х
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
annotations™ *
 zґtrace_0
0
д0
е1"
trackable_list_wrapper
0
д0
е1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
п
Љtrace_02–
)__inference_dense_34_layer_call_fn_505726Ґ
Щ≤Х
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
annotations™ *
 zЉtrace_0
К
љtrace_02л
D__inference_dense_34_layer_call_and_return_conditional_losses_505737Ґ
Щ≤Х
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
annotations™ *
 zљtrace_0
#:!
АА2dense_34/kernel
:А2dense_34/bias
0
м0
н1"
trackable_list_wrapper
0
м0
н1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
п
√trace_02–
)__inference_dense_35_layer_call_fn_505746Ґ
Щ≤Х
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
annotations™ *
 z√trace_0
К
ƒtrace_02л
D__inference_dense_35_layer_call_and_return_conditional_losses_505756Ґ
Щ≤Х
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
annotations™ *
 zƒtrace_0
": 	А2dense_35/kernel
:2dense_35/bias
l
<0
=1
\2
]3
Г4
Д5
£6
§7
 8
Ћ9"
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25"
trackable_list_wrapper
0
≈0
∆1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
СBО
4__inference_Default-preliminary_layer_call_fn_503952rescaling_17_input"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
4__inference_Default-preliminary_layer_call_fn_504777inputs"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
4__inference_Default-preliminary_layer_call_fn_504850inputs"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
СBО
4__inference_Default-preliminary_layer_call_fn_504427rescaling_17_input"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504985inputs"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
†BЭ
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_505134inputs"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ђB©
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504525rescaling_17_input"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ђB©
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504623rescaling_17_input"њ
ґ≤≤
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
÷B”
$__inference_signature_wrapper_504704rescaling_17_input"Ф
Н≤Й
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
annotations™ *
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
бBё
-__inference_rescaling_17_layer_call_fn_505139inputs"Ґ
Щ≤Х
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
annotations™ *
 
ьBщ
H__inference_rescaling_17_layer_call_and_return_conditional_losses_505147inputs"Ґ
Щ≤Х
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
annotations™ *
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
ёBџ
*__inference_conv2d_67_layer_call_fn_505156inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_conv2d_67_layer_call_and_return_conditional_losses_505166inputs"Ґ
Щ≤Х
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
annotations™ *
 
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_57_layer_call_fn_505179inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_57_layer_call_fn_505192inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505210inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505228inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_activation_57_layer_call_fn_505233inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_activation_57_layer_call_and_return_conditional_losses_505238inputs"Ґ
Щ≤Х
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
annotations™ *
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
йBж
5__inference_average_pooling2d_54_layer_call_fn_505243inputs"Ґ
Щ≤Х
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
annotations™ *
 
ДBБ
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_505248inputs"Ґ
Щ≤Х
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
annotations™ *
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
ёBџ
*__inference_conv2d_68_layer_call_fn_505257inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_conv2d_68_layer_call_and_return_conditional_losses_505267inputs"Ґ
Щ≤Х
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
annotations™ *
 
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_58_layer_call_fn_505280inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_58_layer_call_fn_505293inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505311inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505329inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_activation_58_layer_call_fn_505334inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_activation_58_layer_call_and_return_conditional_losses_505339inputs"Ґ
Щ≤Х
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
annotations™ *
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
еBв
1__inference_max_pooling2d_16_layer_call_fn_505344inputs"Ґ
Щ≤Х
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
annotations™ *
 
АBэ
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_505349inputs"Ґ
Щ≤Х
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
annotations™ *
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
рBн
+__inference_dropout_33_layer_call_fn_505354inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
+__inference_dropout_33_layer_call_fn_505359inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_33_layer_call_and_return_conditional_losses_505364inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_33_layer_call_and_return_conditional_losses_505376inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_conv2d_69_layer_call_fn_505385inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_conv2d_69_layer_call_and_return_conditional_losses_505395inputs"Ґ
Щ≤Х
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
annotations™ *
 
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_59_layer_call_fn_505408inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_59_layer_call_fn_505421inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505439inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505457inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_activation_59_layer_call_fn_505462inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_activation_59_layer_call_and_return_conditional_losses_505467inputs"Ґ
Щ≤Х
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
annotations™ *
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
йBж
5__inference_average_pooling2d_55_layer_call_fn_505472inputs"Ґ
Щ≤Х
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
annotations™ *
 
ДBБ
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_505477inputs"Ґ
Щ≤Х
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
annotations™ *
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
ёBџ
*__inference_conv2d_70_layer_call_fn_505486inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_conv2d_70_layer_call_and_return_conditional_losses_505496inputs"Ґ
Щ≤Х
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
annotations™ *
 
0
£0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_60_layer_call_fn_505509inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_60_layer_call_fn_505522inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505540inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505558inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_activation_60_layer_call_fn_505563inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_activation_60_layer_call_and_return_conditional_losses_505568inputs"Ґ
Щ≤Х
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
annotations™ *
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
еBв
1__inference_max_pooling2d_17_layer_call_fn_505573inputs"Ґ
Щ≤Х
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
annotations™ *
 
АBэ
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_505578inputs"Ґ
Щ≤Х
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
annotations™ *
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
рBн
+__inference_dropout_34_layer_call_fn_505583inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
+__inference_dropout_34_layer_call_fn_505588inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_34_layer_call_and_return_conditional_losses_505593inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_34_layer_call_and_return_conditional_losses_505605inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ёBџ
*__inference_conv2d_71_layer_call_fn_505614inputs"Ґ
Щ≤Х
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
annotations™ *
 
щBц
E__inference_conv2d_71_layer_call_and_return_conditional_losses_505624inputs"Ґ
Щ≤Х
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
annotations™ *
 
0
 0
Ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_61_layer_call_fn_505637inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_61_layer_call_fn_505650inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505668inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505686inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
вBя
.__inference_activation_61_layer_call_fn_505691inputs"Ґ
Щ≤Х
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
annotations™ *
 
эBъ
I__inference_activation_61_layer_call_and_return_conditional_losses_505696inputs"Ґ
Щ≤Х
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
annotations™ *
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
йBж
5__inference_average_pooling2d_56_layer_call_fn_505701inputs"Ґ
Щ≤Х
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
annotations™ *
 
ДBБ
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_505706inputs"Ґ
Щ≤Х
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
annotations™ *
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
яB№
+__inference_flatten_17_layer_call_fn_505711inputs"Ґ
Щ≤Х
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
annotations™ *
 
ъBч
F__inference_flatten_17_layer_call_and_return_conditional_losses_505717inputs"Ґ
Щ≤Х
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
annotations™ *
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
ЁBЏ
)__inference_dense_34_layer_call_fn_505726inputs"Ґ
Щ≤Х
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
annotations™ *
 
шBх
D__inference_dense_34_layer_call_and_return_conditional_losses_505737inputs"Ґ
Щ≤Х
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
annotations™ *
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
ЁBЏ
)__inference_dense_35_layer_call_fn_505746inputs"Ґ
Щ≤Х
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
annotations™ *
 
шBх
D__inference_dense_35_layer_call_and_return_conditional_losses_505756inputs"Ґ
Щ≤Х
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
annotations™ *
 
R
«	variables
»	keras_api

…total

 count"
_tf_keras_metric
c
Ћ	variables
ћ	keras_api

Ќtotal

ќcount
ѕ
_fn_kwargs"
_tf_keras_metric
0
…0
 1"
trackable_list_wrapper
.
«	variables"
_generic_user_object
:  (2total
:  (2count
0
Ќ0
ќ1"
trackable_list_wrapper
.
Ћ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
/:-2Adam/conv2d_67/kernel/m
!:2Adam/conv2d_67/bias/m
/:-2#Adam/batch_normalization_57/gamma/m
.:,2"Adam/batch_normalization_57/beta/m
/:- 2Adam/conv2d_68/kernel/m
!: 2Adam/conv2d_68/bias/m
/:- 2#Adam/batch_normalization_58/gamma/m
.:, 2"Adam/batch_normalization_58/beta/m
/:- @2Adam/conv2d_69/kernel/m
!:@2Adam/conv2d_69/bias/m
/:-@2#Adam/batch_normalization_59/gamma/m
.:,@2"Adam/batch_normalization_59/beta/m
0:.@А2Adam/conv2d_70/kernel/m
": А2Adam/conv2d_70/bias/m
0:.А2#Adam/batch_normalization_60/gamma/m
/:-А2"Adam/batch_normalization_60/beta/m
1:/АА2Adam/conv2d_71/kernel/m
": А2Adam/conv2d_71/bias/m
0:.А2#Adam/batch_normalization_61/gamma/m
/:-А2"Adam/batch_normalization_61/beta/m
(:&
АА2Adam/dense_34/kernel/m
!:А2Adam/dense_34/bias/m
':%	А2Adam/dense_35/kernel/m
 :2Adam/dense_35/bias/m
/:-2Adam/conv2d_67/kernel/v
!:2Adam/conv2d_67/bias/v
/:-2#Adam/batch_normalization_57/gamma/v
.:,2"Adam/batch_normalization_57/beta/v
/:- 2Adam/conv2d_68/kernel/v
!: 2Adam/conv2d_68/bias/v
/:- 2#Adam/batch_normalization_58/gamma/v
.:, 2"Adam/batch_normalization_58/beta/v
/:- @2Adam/conv2d_69/kernel/v
!:@2Adam/conv2d_69/bias/v
/:-@2#Adam/batch_normalization_59/gamma/v
.:,@2"Adam/batch_normalization_59/beta/v
0:.@А2Adam/conv2d_70/kernel/v
": А2Adam/conv2d_70/bias/v
0:.А2#Adam/batch_normalization_60/gamma/v
/:-А2"Adam/batch_normalization_60/beta/v
1:/АА2Adam/conv2d_71/kernel/v
": А2Adam/conv2d_71/bias/v
0:.А2#Adam/batch_normalization_61/gamma/v
/:-А2"Adam/batch_normalization_61/beta/v
(:&
АА2Adam/dense_34/kernel/v
!:А2Adam/dense_34/bias/v
':%	А2Adam/dense_35/kernel/v
 :2Adam/dense_35/bias/vА
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504525ђ601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнKҐH
AҐ>
4К1
rescaling_17_input€€€€€€€€€00
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ А
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504623ђ601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнKҐH
AҐ>
4К1
rescaling_17_input€€€€€€€€€00
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ф
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_504985†601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… Ћдемн?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ф
O__inference_Default-preliminary_layer_call_and_return_conditional_losses_505134†601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… Ћдемн?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ў
4__inference_Default-preliminary_layer_call_fn_503952Я601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнKҐH
AҐ>
4К1
rescaling_17_input€€€€€€€€€00
p 

 
™ "К€€€€€€€€€Ў
4__inference_Default-preliminary_layer_call_fn_504427Я601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнKҐH
AҐ>
4К1
rescaling_17_input€€€€€€€€€00
p

 
™ "К€€€€€€€€€ћ
4__inference_Default-preliminary_layer_call_fn_504777У601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… Ћдемн?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p 

 
™ "К€€€€€€€€€ћ
4__inference_Default-preliminary_layer_call_fn_504850У601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… Ћдемн?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p

 
™ "К€€€€€€€€€Ў
!__inference__wrapped_model_503263≤601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнCҐ@
9Ґ6
4К1
rescaling_17_input€€€€€€€€€00
™ "3™0
.
dense_35"К
dense_35€€€€€€€€€µ
I__inference_activation_57_layer_call_and_return_conditional_losses_505238h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ "-Ґ*
#К 
0€€€€€€€€€00
Ъ Н
.__inference_activation_57_layer_call_fn_505233[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ " К€€€€€€€€€00µ
I__inference_activation_58_layer_call_and_return_conditional_losses_505339h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Н
.__inference_activation_58_layer_call_fn_505334[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€ µ
I__inference_activation_59_layer_call_and_return_conditional_losses_505467h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
.__inference_activation_59_layer_call_fn_505462[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ " К€€€€€€€€€@Ј
I__inference_activation_60_layer_call_and_return_conditional_losses_505568j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
.__inference_activation_60_layer_call_fn_505563]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€АЈ
I__inference_activation_61_layer_call_and_return_conditional_losses_505696j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
.__inference_activation_61_layer_call_fn_505691]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ау
P__inference_average_pooling2d_54_layer_call_and_return_conditional_losses_505248ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_average_pooling2d_54_layer_call_fn_505243СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
P__inference_average_pooling2d_55_layer_call_and_return_conditional_losses_505477ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_average_pooling2d_55_layer_call_fn_505472СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
P__inference_average_pooling2d_56_layer_call_and_return_conditional_losses_505706ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ћ
5__inference_average_pooling2d_56_layer_call_fn_505701СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€н
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505210Ц:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ н
R__inference_batch_normalization_57_layer_call_and_return_conditional_losses_505228Ц:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ≈
7__inference_batch_normalization_57_layer_call_fn_505179Й:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€≈
7__inference_batch_normalization_57_layer_call_fn_505192Й:;<=MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€н
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505311ЦZ[\]MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ н
R__inference_batch_normalization_58_layer_call_and_return_conditional_losses_505329ЦZ[\]MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ≈
7__inference_batch_normalization_58_layer_call_fn_505280ЙZ[\]MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ≈
7__inference_batch_normalization_58_layer_call_fn_505293ЙZ[\]MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ с
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505439ЪБВГДMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ с
R__inference_batch_normalization_59_layer_call_and_return_conditional_losses_505457ЪБВГДMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ъ …
7__inference_batch_normalization_59_layer_call_fn_505408НБВГДMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@…
7__inference_batch_normalization_59_layer_call_fn_505421НБВГДMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€@у
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505540Ь°Ґ£§NҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ у
R__inference_batch_normalization_60_layer_call_and_return_conditional_losses_505558Ь°Ґ£§NҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ Ћ
7__inference_batch_normalization_60_layer_call_fn_505509П°Ґ£§NҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€АЋ
7__inference_batch_normalization_60_layer_call_fn_505522П°Ґ£§NҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Ау
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505668Ь»… ЋNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ у
R__inference_batch_normalization_61_layer_call_and_return_conditional_losses_505686Ь»… ЋNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "@Ґ=
6К3
0,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ Ћ
7__inference_batch_normalization_61_layer_call_fn_505637П»… ЋNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p 
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€АЋ
7__inference_batch_normalization_61_layer_call_fn_505650П»… ЋNҐK
DҐA
;К8
inputs,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
p
™ "3К0,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аµ
E__inference_conv2d_67_layer_call_and_return_conditional_losses_505166l017Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ "-Ґ*
#К 
0€€€€€€€€€00
Ъ Н
*__inference_conv2d_67_layer_call_fn_505156_017Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ " К€€€€€€€€€00µ
E__inference_conv2d_68_layer_call_and_return_conditional_losses_505267lPQ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Н
*__inference_conv2d_68_layer_call_fn_505257_PQ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ " К€€€€€€€€€ µ
E__inference_conv2d_69_layer_call_and_return_conditional_losses_505395lwx7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ Н
*__inference_conv2d_69_layer_call_fn_505385_wx7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@Є
E__inference_conv2d_70_layer_call_and_return_conditional_losses_505496oЧШ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Р
*__inference_conv2d_70_layer_call_fn_505486bЧШ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€Ає
E__inference_conv2d_71_layer_call_and_return_conditional_losses_505624pЊњ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
*__inference_conv2d_71_layer_call_fn_505614cЊњ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А®
D__inference_dense_34_layer_call_and_return_conditional_losses_505737`де0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ А
)__inference_dense_34_layer_call_fn_505726Sде0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
D__inference_dense_35_layer_call_and_return_conditional_losses_505756_мн0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ 
)__inference_dense_35_layer_call_fn_505746Rмн0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€ґ
F__inference_dropout_33_layer_call_and_return_conditional_losses_505364l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ ґ
F__inference_dropout_33_layer_call_and_return_conditional_losses_505376l;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ О
+__inference_dropout_33_layer_call_fn_505354_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ " К€€€€€€€€€ О
+__inference_dropout_33_layer_call_fn_505359_;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ " К€€€€€€€€€ Є
F__inference_dropout_34_layer_call_and_return_conditional_losses_505593n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Є
F__inference_dropout_34_layer_call_and_return_conditional_losses_505605n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Р
+__inference_dropout_34_layer_call_fn_505583a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АР
+__inference_dropout_34_layer_call_fn_505588a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€Ађ
F__inference_flatten_17_layer_call_and_return_conditional_losses_505717b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ Д
+__inference_flatten_17_layer_call_fn_505711U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ап
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_505349ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_16_layer_call_fn_505344СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_505578ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_17_layer_call_fn_505573СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€і
H__inference_rescaling_17_layer_call_and_return_conditional_losses_505147h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ "-Ґ*
#К 
0€€€€€€€€€00
Ъ М
-__inference_rescaling_17_layer_call_fn_505139[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ " К€€€€€€€€€00с
$__inference_signature_wrapper_504704»601:;<=PQZ[\]wxБВГДЧШ°Ґ£§Њњ»… ЋдемнYҐV
Ґ 
O™L
J
rescaling_17_input4К1
rescaling_17_input€€€€€€€€€00"3™0
.
dense_35"К
dense_35€€€€€€€€€