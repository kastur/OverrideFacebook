.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Z

.field c:Z

.field d:Z

.field private e:Landroid/os/Bundle;

.field private f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private synthetic n:Landroid/support/v4/app/LoaderManagerImpl;


# direct methods
.method private b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    if-nez v0, :cond_0

    .line 245
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    .line 249
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->a(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 260
    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 262
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->m()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->l:Z

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->b:Landroid/support/v4/app/HCSparseArray;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-nez v0, :cond_3

    .line 389
    :cond_2
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 391
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    if-eqz v0, :cond_3

    .line 392
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 402
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 403
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_4

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Z

    .line 405
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f()V

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->c:Landroid/support/v4/app/HCSparseArray;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/HCSparseArray;->b(I)V

    .line 409
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->n:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->f()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Z

    if-eqz v0, :cond_2

    .line 456
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 461
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    .line 269
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 272
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    .line 278
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->k:Z

    if-eq v0, v1, :cond_0

    .line 279
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->e()V

    .line 288
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Z

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 297
    :cond_1
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    if-eqz v0, :cond_0

    .line 301
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->d:Z

    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->c:Z

    .line 313
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->j:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-eqz v0, :cond_0

    .line 316
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->o()V

    .line 321
    :cond_0
    return-void
.end method

.method final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->l:Z

    .line 326
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Z

    .line 327
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->b:Z

    .line 328
    iput-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->f:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 344
    iput-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->i:Ljava/lang/Object;

    .line 345
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->h:Z

    .line 346
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    .line 347
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    if-eqz v0, :cond_0

    .line 348
    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->m:Z

    .line 349
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->p()V

    .line 353
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->g:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
