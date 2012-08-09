.class public Lcom/facebook/orca/common/async/Deferred;
.super Ljava/lang/Object;
.source "Deferred.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;

.field private final c:Ljava/lang/Runnable;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/async/Deferred;-><init>(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method private a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->g:Z

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Chained Deferreds can not be re-used"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;-><init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 234
    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    .line 109
    return-void
.end method

.method private c(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1
    .parameter

    .prologue
    .line 267
    invoke-direct {p0, p1, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    .line 116
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 119
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->c()V

    .line 129
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/async/Deferred$AlreadyCalledException;-><init>(Lcom/facebook/orca/common/async/Deferred;)V

    throw v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    .line 154
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    aput-object p1, v0, v1

    .line 139
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->g()V

    .line 140
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    instance-of v0, p0, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Deferred instances can only be chained if they are the result of a callback"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    .line 284
    invoke-static {v0}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 296
    iget-object v7, p0, Lcom/facebook/orca/common/async/Deferred;->a:Ljava/util/List;

    .line 297
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 298
    iget-object v1, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 301
    const/4 v2, 0x0

    move v3, v4

    move v5, v0

    .line 303
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-nez v0, :cond_3

    .line 304
    invoke-interface {v7, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;

    .line 305
    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v0

    .line 306
    :goto_1
    if-eqz v0, :cond_9

    .line 308
    :try_start_0
    invoke-interface {v0, v1}, Lcom/facebook/orca/common/async/Deferrable;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 313
    :cond_0
    instance-of v0, v1, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    move v5, v6

    .line 314
    :goto_2
    instance-of v0, v1, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_8

    .line 315
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/async/Deferred$3;-><init>(Lcom/facebook/orca/common/async/Deferred;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v2, v0

    .line 331
    goto :goto_0

    .line 305
    :cond_1
    invoke-static {v0}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v5, v4

    .line 313
    goto :goto_2

    .line 323
    :catch_0
    move-exception v1

    .line 324
    :goto_4
    const-string v0, "Exception in deferered"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->f()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    move v3, v6

    :goto_5
    move v5, v3

    move v3, v0

    .line 333
    goto :goto_0

    .line 334
    :cond_3
    iput v5, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    .line 335
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aput-object v1, v0, v5

    .line 336
    if-eqz v2, :cond_4

    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->e:I

    if-lez v0, :cond_4

    move-object v0, v1

    .line 337
    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v0, v2}, Lcom/facebook/orca/common/async/Deferred;->c(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-object v0, v1

    .line 338
    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    iput-boolean v6, v0, Lcom/facebook/orca/common/async/Deferred;->g:Z

    .line 341
    :cond_4
    if-eqz v3, :cond_6

    .line 342
    instance-of v0, v1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_5

    .line 343
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 348
    :cond_6
    return-void

    .line 323
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_4

    :cond_7
    move v0, v3

    move v3, v6

    goto :goto_5

    :cond_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    move v0, v3

    move v3, v5

    goto :goto_5
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$CancelledException;

    invoke-direct {v0, p0}, Lcom/facebook/orca/common/async/Deferred$CancelledException;-><init>(Lcom/facebook/orca/common/async/Deferred;)V

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/async/Deferred;->b(Ljava/lang/Object;)V

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/common/async/Deferred;->f:Z

    goto :goto_0

    .line 98
    :cond_2
    iget v0, p0, Lcom/facebook/orca/common/async/Deferred;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/facebook/orca/common/async/Deferred;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/facebook/orca/common/async/Deferred;

    invoke-virtual {v0}, Lcom/facebook/orca/common/async/Deferred;->a()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->d()V

    .line 164
    invoke-static {p1}, Lcom/facebook/orca/common/async/Deferred;->e(Ljava/lang/Object;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public final b(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;
    .locals 1
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/facebook/orca/common/async/Deferred;->d()V

    .line 176
    invoke-static {p1}, Lcom/facebook/orca/common/async/Deferred;->e(Ljava/lang/Object;)V

    .line 178
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/async/Deferred$AsyncErrorException;-><init>(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/async/Deferred;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
