.class public final Lorg/codehaus/jackson/util/TokenBuffer$Parser;
.super Lorg/codehaus/jackson/impl/JsonParserMinimalBase;
.source "TokenBuffer.java"


# instance fields
.field private c:Lorg/codehaus/jackson/ObjectCodec;

.field private d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

.field private e:I

.field private f:Lorg/codehaus/jackson/impl/JsonReadContext;

.field private g:Z

.field private transient h:Lorg/codehaus/jackson/util/ByteArrayBuilder;

.field private i:Lorg/codehaus/jackson/JsonLocation;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/util/TokenBuffer$Segment;Lorg/codehaus/jackson/ObjectCodec;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 796
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/JsonParserMinimalBase;-><init>(I)V

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->i:Lorg/codehaus/jackson/JsonLocation;

    .line 797
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 798
    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    .line 799
    iput-object p2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->c:Lorg/codehaus/jackson/ObjectCodec;

    .line 800
    invoke-static {v1, v1}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 801
    return-void
.end method

.method private A()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1184
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1192
    :cond_1
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 1219
    const-string v0, "Unexpected end-of-String in base64 content"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 1096
    .line 1097
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v2

    .line 1100
    :goto_0
    if-ge v0, v3, :cond_3

    .line 1104
    :goto_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1105
    if-ge v1, v3, :cond_3

    .line 1106
    const/16 v4, 0x20

    if-le v0, v4, :cond_e

    .line 1109
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v4

    .line 1110
    if-gez v4, :cond_0

    .line 1111
    invoke-direct {p0, p3, v0, v2, v7}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1115
    :cond_0
    if-lt v1, v3, :cond_1

    .line 1116
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->C()V

    .line 1118
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1119
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v5

    .line 1120
    if-gez v5, :cond_2

    .line 1121
    const/4 v6, 0x1

    invoke-direct {p0, p3, v1, v6, v7}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1123
    :cond_2
    shl-int/lit8 v1, v4, 0x6

    or-int/2addr v1, v5

    .line 1125
    if-lt v0, v3, :cond_5

    .line 1127
    invoke-virtual {p3}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1128
    shr-int/lit8 v0, v1, 0x4

    .line 1129
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    .line 1181
    :cond_3
    :goto_2
    return-void

    .line 1132
    :cond_4
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->C()V

    .line 1134
    :cond_5
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1135
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v5

    .line 1138
    if-gez v5, :cond_9

    .line 1139
    if-eq v5, v8, :cond_6

    .line 1140
    const/4 v5, 0x2

    invoke-direct {p0, p3, v0, v5, v7}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1143
    :cond_6
    if-lt v4, v3, :cond_7

    .line 1144
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->C()V

    .line 1146
    :cond_7
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1147
    invoke-virtual {p3, v4}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected padding character \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v4, v9, v5}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1151
    :cond_8
    shr-int/lit8 v1, v1, 0x4

    .line 1152
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->a(I)V

    goto/16 :goto_0

    .line 1156
    :cond_9
    shl-int/lit8 v0, v1, 0x6

    or-int v1, v0, v5

    .line 1158
    if-lt v4, v3, :cond_b

    .line 1160
    invoke-virtual {p3}, Lorg/codehaus/jackson/Base64Variant;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1161
    shr-int/lit8 v0, v1, 0x2

    .line 1162
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto :goto_2

    .line 1165
    :cond_a
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->C()V

    .line 1167
    :cond_b
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1168
    invoke-virtual {p3, v4}, Lorg/codehaus/jackson/Base64Variant;->b(C)I

    move-result v5

    .line 1169
    if-gez v5, :cond_d

    .line 1170
    if-eq v5, v8, :cond_c

    .line 1171
    invoke-direct {p0, p3, v4, v9, v7}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    .line 1173
    :cond_c
    shr-int/lit8 v1, v1, 0x2

    .line 1174
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b(I)V

    goto/16 :goto_0

    .line 1177
    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v5

    .line 1178
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->c(I)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_1
.end method

.method private a(Lorg/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1202
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    :goto_0
    if-eqz p4, :cond_0

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    :cond_0
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1204
    :cond_1
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/Base64Variant;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/Base64Variant;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1206
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1210
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final E()V
    .locals 0

    .prologue
    .line 1224
    invoke-static {}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->I()V

    .line 1225
    return-void
.end method

.method public final a()Lorg/codehaus/jackson/JsonToken;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 856
    iget-boolean v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->g:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-nez v1, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 859
    :cond_1
    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 860
    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    .line 861
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a()Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    .line 862
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    if-eqz v1, :cond_0

    .line 866
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->d:Lorg/codehaus/jackson/util/TokenBuffer$Segment;

    iget v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->e:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer$Segment;->a(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    .line 868
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 869
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    .line 870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    .line 871
    :goto_1
    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(Ljava/lang/String;)V

    .line 885
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 870
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 872
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_6

    .line 873
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->c(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 874
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 875
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0, v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->b(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2

    .line 876
    :cond_7
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 879
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->g()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 881
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    if-nez v0, :cond_3

    .line 882
    invoke-static {v3, v3}, Lorg/codehaus/jackson/impl/JsonReadContext;->a(II)Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    goto :goto_2
.end method

.method public final a(Lorg/codehaus/jackson/JsonLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->i:Lorg/codehaus/jackson/JsonLocation;

    .line 805
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/Base64Variant;)[B
    .locals 3
    .parameter

    .prologue
    .line 1064
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1066
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    .line 1067
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 1068
    check-cast v0, [B

    .line 1084
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->k()Ljava/lang/String;

    move-result-object v1

    .line 1076
    if-nez v1, :cond_2

    .line 1077
    const/4 v0, 0x0

    goto :goto_0

    .line 1079
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->h:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1080
    if-nez v0, :cond_3

    .line 1081
    new-instance v0, Lorg/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->h:Lorg/codehaus/jackson/util/ByteArrayBuilder;

    .line 1083
    :cond_3
    invoke-direct {p0, v1, v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->a(Ljava/lang/String;Lorg/codehaus/jackson/util/ByteArrayBuilder;Lorg/codehaus/jackson/Base64Variant;)V

    .line 1084
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/ByteArrayBuilder;->b()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lorg/codehaus/jackson/ObjectCodec;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->c:Lorg/codehaus/jackson/ObjectCodec;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 841
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->g:Z

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->g:Z

    .line 844
    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->f:Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/impl/JsonReadContext;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->i()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lorg/codehaus/jackson/JsonLocation;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->i:Lorg/codehaus/jackson/JsonLocation;

    if-nez v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonLocation;->a:Lorg/codehaus/jackson/JsonLocation;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->i:Lorg/codehaus/jackson/JsonLocation;

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_3

    .line 923
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    .line 924
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 925
    check-cast v0, Ljava/lang/String;

    .line 938
    :goto_0
    return-object v0

    .line 927
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 930
    goto :goto_0

    .line 932
    :cond_4
    sget-object v0, Lorg/codehaus/jackson/util/TokenBuffer$1;->a:[I

    iget-object v2, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 938
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 935
    :pswitch_0
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    .line 936
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()[C
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->k()Ljava/lang/String;

    move-result-object v0

    .line 944
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->k()Ljava/lang/String;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 1041
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->B()V

    .line 1042
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final q()Lorg/codehaus/jackson/JsonParser$NumberType;
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    .line 1030
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    .line 1036
    :goto_0
    return-object v0

    .line 1031
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->LONG:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1032
    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->DOUBLE:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1033
    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1034
    :cond_3
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->FLOAT:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1035
    :cond_4
    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    goto :goto_0

    .line 1036
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()I
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1016
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 1023
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 971
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    .line 972
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 973
    check-cast v0, Ljava/math/BigInteger;

    .line 980
    :goto_0
    return-object v0

    .line 975
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 980
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_0
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final w()F
    .locals 1

    .prologue
    .line 1008
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public final x()D
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final y()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 986
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->p()Ljava/lang/Number;

    move-result-object v0

    .line 987
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 988
    check-cast v0, Ljava/math/BigDecimal;

    .line 998
    :goto_0
    return-object v0

    .line 990
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/TokenBuffer$1;->b:[I

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 998
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 993
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 995
    :pswitch_2
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v1

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final z()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1055
    invoke-direct {p0}, Lorg/codehaus/jackson/util/TokenBuffer$Parser;->A()Ljava/lang/Object;

    move-result-object v0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
