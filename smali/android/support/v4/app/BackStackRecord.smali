.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/support/v4/app/BackStackRecord$Op;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:Ljava/lang/CharSequence;

.field private l:Landroid/support/v4/app/FragmentManagerImpl;

.field private m:Landroid/support/v4/app/BackStackRecord$Op;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->n:Z

    .line 287
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    .line 288
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->r:Landroid/support/v4/app/FragmentManagerImpl;

    .line 349
    if-eqz p3, :cond_1

    .line 350
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->v:Ljava/lang/String;

    .line 358
    :cond_1
    if-eqz p1, :cond_3

    .line 359
    iget v0, p2, Landroid/support/v4/app/Fragment;->t:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->t:I

    if-eq v0, p1, :cond_2

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->t:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->u:I

    .line 367
    :cond_3
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 368
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 369
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 370
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 371
    return-void
.end method

.method private b(Z)I
    .locals 2
    .parameter

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    .line 536
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    .line 541
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 542
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    return v0

    .line 539
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/BackStackRecord;->b(Z)I

    move-result v0

    return v0
.end method

.method public final a(I)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .parameter

    .prologue
    .line 445
    const/16 v0, 0x1001

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    .line 446
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 338
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 343
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 387
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 388
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 389
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 392
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 333
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 455
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->n:Z

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->f:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method final a(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 318
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->m:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    .line 324
    :goto_0
    iput v1, p1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    .line 325
    iput v1, p1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    .line 326
    iput v1, p1, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    .line 327
    iput v1, p1, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    .line 328
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->b:I

    .line 329
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->m:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 321
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->m:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    .line 322
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->m:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 234
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 240
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v0, :cond_b

    .line 247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    .line 250
    :goto_0
    if-eqz v2, :cond_b

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cmd="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 255
    const-string v0, " fragment="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    if-nez v0, :cond_5

    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    if-eqz v0, :cond_6

    .line 257
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_6
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    if-nez v0, :cond_7

    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    if-eqz v0, :cond_8

    .line 263
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_8
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    move v0, v1

    .line 269
    :goto_1
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 270
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 272
    const-string v4, "Removed: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    :goto_2
    iget-object v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 274
    :cond_9
    const-string v4, "Removed:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 276
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :cond_a
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    goto/16 :goto_0

    .line 284
    :cond_b
    return-void
.end method

.method public final a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 631
    invoke-virtual {p0, v6}, Landroid/support/v4/app/BackStackRecord;->b(I)V

    .line 635
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->m:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    .line 636
    :goto_0
    if-eqz v3, :cond_1

    .line 637
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_0

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 640
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 641
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 693
    :cond_0
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    goto :goto_0

    .line 646
    :pswitch_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 647
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 648
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 651
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    .line 652
    :goto_2
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 653
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 654
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 655
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 652
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 660
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 661
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 665
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 666
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 667
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 671
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 672
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 673
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 677
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 678
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 679
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 683
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 684
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 685
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 696
    :cond_1
    if-eqz p1, :cond_2

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 701
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-ltz v0, :cond_3

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(I)V

    .line 703
    iput v6, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    .line 705
    :cond_3
    return-void

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/BackStackRecord;->b(Z)I

    move-result v0

    return v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    const v0, 0x7f08011b

    const/4 v1, 0x2

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 383
    return-object p0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 396
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 397
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 398
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 401
    return-object p0
.end method

.method final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-nez v0, :cond_1

    .line 522
    :cond_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    .line 508
    :goto_0
    if-eqz v2, :cond_0

    .line 509
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->q:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->q:I

    .line 510
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 513
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 514
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 515
    iget v3, v0, Landroid/support/v4/app/Fragment;->q:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->q:I

    .line 516
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 520
    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v2, v0

    goto :goto_0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 405
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 406
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 407
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 408
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 410
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 414
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 415
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 416
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 419
    return-object p0
.end method

.method public final e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2
    .parameter

    .prologue
    .line 423
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 424
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 425
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 426
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 428
    return-object p0
.end method

.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 546
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-eqz v0, :cond_0

    .line 549
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-gez v0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->b(I)V

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    .line 557
    :goto_0
    if-eqz v3, :cond_5

    .line 558
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_0
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 561
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 562
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 619
    :goto_1
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v0

    goto :goto_0

    .line 565
    :pswitch_1
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v1, v2

    .line 567
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 568
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 569
    iget v5, v0, Landroid/support/v4/app/Fragment;->u:I

    iget v6, v4, Landroid/support/v4/app/Fragment;->u:I

    if-ne v5, v6, :cond_3

    .line 572
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    .line 575
    :cond_1
    iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 577
    iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-eqz v5, :cond_2

    .line 578
    iget v5, v0, Landroid/support/v4/app/Fragment;->q:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->q:I

    .line 579
    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 567
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 586
    :cond_4
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v0, v4, Landroid/support/v4/app/Fragment;->C:I

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 590
    :pswitch_2
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 591
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 592
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 595
    :pswitch_3
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 596
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 597
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 600
    :pswitch_4
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 601
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 602
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 605
    :pswitch_5
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 606
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 607
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 610
    :pswitch_6
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 611
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->C:I

    .line 612
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 622
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->d:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->c:I

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 625
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-eqz v0, :cond_6

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/BackStackRecord;)V

    .line 628
    :cond_6
    return-void

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
