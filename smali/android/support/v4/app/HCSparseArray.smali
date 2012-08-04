.class Landroid/support/v4/app/HCSparseArray;
.super Ljava/lang/Object;
.source "HCSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/app/HCSparseArray;-><init>(I)V

    .line 32
    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 40
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->h(I)I

    move-result v0

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    .line 44
    iput v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 45
    return-void
.end method

.method private static a([IIII)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    add-int/lit8 v2, p2, 0x0

    const/4 v0, -0x1

    move v1, v0

    move v0, v2

    .line 315
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 316
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 318
    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    move v1, v2

    .line 319
    goto :goto_0

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_1
    add-int/lit8 v1, p2, 0x0

    if-ne v0, v1, :cond_3

    .line 325
    add-int/lit8 v0, p2, 0x0

    xor-int/lit8 v0, v0, -0x1

    .line 329
    :cond_2
    :goto_1
    return v0

    .line 326
    :cond_3
    aget v1, p0, v0

    if-eq v1, p3, :cond_2

    .line 329
    xor-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    .line 62
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 103
    iget v3, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 105
    iget-object v4, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    .line 106
    iget-object v5, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 108
    :goto_0
    if-ge v1, v3, :cond_2

    .line 109
    aget-object v6, v5, v1

    .line 111
    sget-object v7, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 112
    if-eq v1, v0, :cond_0

    .line 113
    aget v7, v4, v1

    aput v7, v4, v0

    .line 114
    aput-object v6, v5, v0

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iput-boolean v2, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 122
    iput v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 125
    return-void
.end method

.method private f(I)V
    .locals 3
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    invoke-static {v0, v1, v2, p1}, Landroid/support/v4/app/HCSparseArray;->a([IIII)I

    move-result v0

    .line 75
    if-ltz v0, :cond_0

    .line 76
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 81
    :cond_0
    return-void
.end method

.method private static g(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 333
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 334
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 335
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 337
    :cond_0
    return p0

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static h(I)I
    .locals 1
    .parameter

    .prologue
    .line 341
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/HCSparseArray;->g(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 188
    :cond_0
    iget v0, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    return v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/HCSparseArray;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 267
    iget v2, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 268
    iget-object v3, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    move v0, v1

    .line 270
    :goto_0
    if-ge v0, v2, :cond_0

    .line 271
    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iput v1, p0, Landroid/support/v4/app/HCSparseArray;->e:I

    .line 275
    iput-boolean v1, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 276
    return-void
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v4/app/HCSparseArray;->f(I)V

    .line 88
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/HCSparseArray;->a:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    .line 98
    :cond_0
    return-void
.end method

.method public final d(I)I
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/support/v4/app/HCSparseArray;->b:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Landroid/support/v4/app/HCSparseArray;->c()V

    .line 214
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/HCSparseArray;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
