.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private J:I

.field private K:I

.field private L:Z

.field private M:Z

.field private N:I

.field private O:Landroid/app/Dialog;

.field private P:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    .line 73
    iput v0, p0, Landroid/support/v4/app/DialogFragment;->K:I

    .line 74
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->L:Z

    .line 75
    iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    .line 83
    return-void
.end method

.method private E()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->K:I

    return v0
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    .line 185
    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->P:Z

    .line 186
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    if-ltz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->a(II)V

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->m()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 193
    if-eqz p1, :cond_2

    .line 194
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->P:Z

    .line 164
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    .line 167
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    return v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/DialogFragment;->b(Z)V

    .line 178
    return-void
.end method

.method public final a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    .line 101
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->K:I

    .line 104
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 262
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->u:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    .line 266
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->K:I

    .line 267
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->L:Z

    .line 268
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    .line 269
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    .line 272
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 262
    goto :goto_0
.end method

.method public final a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 124
    return-void
.end method

.method public final b()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .parameter

    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    if-nez v0, :cond_0

    .line 278
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    .line 282
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 285
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 291
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;->E()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 338
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 340
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->t()Landroid/view/View;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DialogFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 351
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 352
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->L:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 353
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 354
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 355
    if-eqz p1, :cond_0

    .line 356
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 366
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->P:Z

    .line 368
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 370
    :cond_0
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 374
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 375
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    :cond_0
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->J:I

    if-eqz v0, :cond_1

    .line 382
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->J:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    :cond_1
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->K:I

    if-eqz v0, :cond_2

    .line 385
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->K:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->L:Z

    if-nez v0, :cond_3

    .line 388
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    if-nez v0, :cond_4

    .line 391
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    :cond_4
    iget v0, p0, Landroid/support/v4/app/DialogFragment;->N:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 394
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/DialogFragment;->N:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 396
    :cond_5
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 401
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 404
    :cond_0
    return-void
.end method

.method public final g_()V
    .locals 1

    .prologue
    .line 411
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->g_()V

    .line 412
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->P:Z

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/DialogFragment;->O:Landroid/app/Dialog;

    .line 421
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->P:Z

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/DialogFragment;->b(Z)V

    .line 334
    :cond_0
    return-void
.end method
