.class Lcom/facebook/katana/util/Entities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lcom/facebook/katana/util/Entities$EntityMap;


# instance fields
.field protected a:I

.field protected b:[Ljava/lang/String;

.field protected c:[I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->d:I

    .line 1008
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    .line 1015
    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->d:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    .line 1016
    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->c:[I

    .line 1017
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 1054
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    if-ge v0, v1, :cond_1

    .line 1055
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->c:[I

    aget v0, v1, v0

    .line 1059
    :goto_1
    return v0

    .line 1054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1033
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 1034
    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->d:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1035
    new-array v1, v0, [Ljava/lang/String;

    .line 1036
    iget-object v2, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    iget v3, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    iput-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    .line 1038
    new-array v0, v0, [I

    .line 1039
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->c:[I

    iget v2, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1040
    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->c:[I

    .line 1042
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1026
    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a(I)V

    .line 1027
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    aput-object p1, v0, v1

    .line 1028
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->c:[I

    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    aput p2, v0, v1

    .line 1029
    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->a:I

    .line 1030
    return-void
.end method
