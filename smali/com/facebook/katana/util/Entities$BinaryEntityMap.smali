.class Lcom/facebook/katana/util/Entities$BinaryEntityMap;
.super Lcom/facebook/katana/util/Entities$ArrayEntityMap;
.source "Entities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/facebook/katana/util/Entities$ArrayEntityMap;-><init>()V

    .line 1066
    return-void
.end method

.method private b(I)I
    .locals 4
    .parameter

    .prologue
    .line 1074
    const/4 v1, 0x0

    .line 1075
    iget v0, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 1077
    :goto_0
    if-gt v2, v1, :cond_1

    .line 1078
    add-int v0, v2, v1

    shr-int/lit8 v0, v0, 0x1

    .line 1079
    iget-object v3, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->c:[I

    aget v3, v3, v0

    .line 1081
    if-ge v3, p1, :cond_0

    .line 1082
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    .line 1083
    :cond_0
    if-le v3, p1, :cond_2

    .line 1084
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1088
    :cond_1
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1094
    iget v0, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a(I)V

    .line 1095
    invoke-direct {p0, p2}, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->b(I)I

    move-result v0

    .line 1096
    if-lez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 1102
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->c:[I

    iget-object v2, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->c:[I

    aput p2, v1, v0

    .line 1104
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->b:[Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->b:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1105
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->b:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 1106
    iget v0, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/util/Entities$BinaryEntityMap;->a:I

    goto :goto_0
.end method
