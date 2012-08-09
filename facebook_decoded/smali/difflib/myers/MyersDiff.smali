.class public Ldifflib/myers/MyersDiff;
.super Ljava/lang/Object;
.source "MyersDiff.java"

# interfaces
.implements Ldifflib/DiffAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method private static a(Ldifflib/myers/PathNode;[Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/Patch;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    if-nez p1, :cond_1

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "original sequence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    if-nez p2, :cond_2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "revised sequence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    new-instance v2, Ldifflib/Patch;

    invoke-direct {v2}, Ldifflib/Patch;-><init>()V

    .line 197
    invoke-virtual {p0}, Ldifflib/myers/PathNode;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    iget-object v0, p0, Ldifflib/myers/PathNode;->c:Ldifflib/myers/PathNode;

    .line 199
    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Ldifflib/myers/PathNode;->c:Ldifflib/myers/PathNode;

    if-eqz v1, :cond_6

    iget-object v1, v0, Ldifflib/myers/PathNode;->c:Ldifflib/myers/PathNode;

    iget v1, v1, Ldifflib/myers/PathNode;->b:I

    if-ltz v1, :cond_6

    .line 200
    invoke-virtual {v0}, Ldifflib/myers/PathNode;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bad diffpath: found snake when looking for diff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_3
    iget v3, v0, Ldifflib/myers/PathNode;->a:I

    .line 203
    iget v4, v0, Ldifflib/myers/PathNode;->b:I

    .line 205
    iget-object v1, v0, Ldifflib/myers/PathNode;->c:Ldifflib/myers/PathNode;

    .line 206
    iget v0, v1, Ldifflib/myers/PathNode;->a:I

    .line 207
    iget v5, v1, Ldifflib/myers/PathNode;->b:I

    .line 209
    new-instance v6, Ldifflib/Chunk;

    invoke-static {p1, v0, v3}, Ldifflib/myers/MyersDiff;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v6, v0, v3}, Ldifflib/Chunk;-><init>(I[Ljava/lang/Object;)V

    .line 210
    new-instance v3, Ldifflib/Chunk;

    invoke-static {p2, v5, v4}, Ldifflib/myers/MyersDiff;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Ldifflib/Chunk;-><init>(I[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v6}, Ldifflib/Chunk;->c()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ldifflib/Chunk;->c()I

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    new-instance v0, Ldifflib/InsertDelta;

    invoke-direct {v0, v6, v3}, Ldifflib/InsertDelta;-><init>(Ldifflib/Chunk;Ldifflib/Chunk;)V

    .line 220
    :goto_1
    invoke-virtual {v2, v0}, Ldifflib/Patch;->a(Ldifflib/Delta;)V

    .line 221
    invoke-virtual {v1}, Ldifflib/myers/PathNode;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 222
    iget-object v0, v1, Ldifflib/myers/PathNode;->c:Ldifflib/myers/PathNode;

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {v6}, Ldifflib/Chunk;->c()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v3}, Ldifflib/Chunk;->c()I

    move-result v0

    if-nez v0, :cond_5

    .line 215
    new-instance v0, Ldifflib/DeleteDelta;

    invoke-direct {v0, v6, v3}, Ldifflib/DeleteDelta;-><init>(Ldifflib/Chunk;Ldifflib/Chunk;)V

    goto :goto_1

    .line 217
    :cond_5
    new-instance v0, Ldifflib/ChangeDelta;

    invoke-direct {v0, v6, v3}, Ldifflib/ChangeDelta;-><init>(Ldifflib/Chunk;Ldifflib/Chunk;)V

    goto :goto_1

    .line 224
    :cond_6
    return-object v2

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    move-object v0, p0

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/Patch;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0, p1}, Ldifflib/myers/MyersDiff;->b([Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/myers/PathNode;

    move-result-object v0

    .line 99
    invoke-static {v0, p0, p1}, Ldifflib/myers/MyersDiff;->a(Ldifflib/myers/PathNode;[Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/Patch;
    :try_end_0
    .catch Ldifflib/myers/DifferentiationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ldifflib/myers/DifferentiationFailedException;->printStackTrace()V

    .line 103
    new-instance v0, Ldifflib/Patch;

    invoke-direct {v0}, Ldifflib/Patch;-><init>()V

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ldifflib/myers/MyersDiff;->a([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 242
    sub-int v1, p2, p1

    .line 243
    if-gez v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    const-class v0, [Ljava/lang/Object;

    if-ne p3, v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 247
    :goto_0
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    return-object v0

    .line 245
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method private static b([Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/myers/PathNode;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 118
    if-nez p0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "original sequence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "revised sequence is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    array-length v6, p0

    .line 125
    array-length v7, p1

    .line 127
    add-int v1, v6, v7

    add-int/lit8 v8, v1, 0x1

    .line 128
    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 129
    div-int/lit8 v9, v1, 0x2

    .line 130
    new-array v10, v1, [Ldifflib/myers/PathNode;

    .line 132
    add-int/lit8 v1, v9, 0x1

    new-instance v2, Ldifflib/myers/Snake;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v13}, Ldifflib/myers/Snake;-><init>(IILdifflib/myers/PathNode;)V

    aput-object v2, v10, v1

    move v5, v0

    .line 133
    :goto_0
    if-ge v5, v8, :cond_7

    .line 134
    neg-int v0, v5

    move v4, v0

    :goto_1
    if-gt v4, v5, :cond_6

    .line 135
    add-int v11, v9, v4

    .line 136
    add-int/lit8 v1, v11, 0x1

    .line 137
    add-int/lit8 v2, v11, -0x1

    .line 138
    neg-int v0, v5

    if-eq v4, v0, :cond_2

    if-eq v4, v5, :cond_3

    aget-object v0, v10, v2

    iget v0, v0, Ldifflib/myers/PathNode;->a:I

    aget-object v3, v10, v1

    iget v3, v3, Ldifflib/myers/PathNode;->a:I

    if-ge v0, v3, :cond_3

    .line 142
    :cond_2
    aget-object v0, v10, v1

    iget v0, v0, Ldifflib/myers/PathNode;->a:I

    .line 143
    aget-object v1, v10, v1

    .line 149
    :goto_2
    aput-object v13, v10, v2

    .line 151
    sub-int v3, v0, v4

    .line 153
    new-instance v2, Ldifflib/myers/DiffNode;

    invoke-direct {v2, v0, v3, v1}, Ldifflib/myers/DiffNode;-><init>(IILdifflib/myers/PathNode;)V

    move v1, v0

    .line 158
    :goto_3
    if-ge v1, v6, :cond_4

    if-ge v3, v7, :cond_4

    aget-object v0, p0, v1

    aget-object v12, p1, v3

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    add-int/lit8 v0, v1, 0x1

    .line 160
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_3

    .line 145
    :cond_3
    aget-object v0, v10, v2

    iget v0, v0, Ldifflib/myers/PathNode;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 146
    aget-object v1, v10, v2

    goto :goto_2

    .line 162
    :cond_4
    iget v0, v2, Ldifflib/myers/PathNode;->a:I

    if-le v1, v0, :cond_8

    .line 163
    new-instance v0, Ldifflib/myers/Snake;

    invoke-direct {v0, v1, v3, v2}, Ldifflib/myers/Snake;-><init>(IILdifflib/myers/PathNode;)V

    .line 165
    :goto_4
    aput-object v0, v10, v11

    .line 167
    if-lt v1, v6, :cond_5

    if-lt v3, v7, :cond_5

    .line 168
    aget-object v0, v10, v11

    return-object v0

    .line 134
    :cond_5
    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_1

    .line 171
    :cond_6
    add-int v0, v9, v5

    add-int/lit8 v0, v0, -0x1

    aput-object v13, v10, v0

    .line 133
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 175
    :cond_7
    new-instance v0, Ldifflib/myers/DifferentiationFailedException;

    const-string v1, "could not find a diff path"

    invoke-direct {v0, v1}, Ldifflib/myers/DifferentiationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v2

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)Ldifflib/Patch;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)",
            "Ldifflib/Patch;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ldifflib/myers/MyersDiff;->a([Ljava/lang/Object;[Ljava/lang/Object;)Ldifflib/Patch;

    move-result-object v0

    return-object v0
.end method
