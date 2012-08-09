.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public final a(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 133
    iput p1, p0, Landroid/support/v4/content/Loader;->b:I

    .line 134
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/support/v4/content/Loader;->c:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->a(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public final i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    return v0
.end method

.method public final m()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 195
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 196
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 197
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->f()V

    .line 198
    return-void
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->a()V

    .line 218
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->g()V

    .line 244
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->h()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->f:Z

    .line 292
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->d:Z

    .line 293
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->e:Z

    .line 294
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->a:Z

    .line 295
    return-void
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->a:Z

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->a:Z

    .line 314
    return v0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->d:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->n()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->a:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Landroid/support/v4/content/Loader;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
