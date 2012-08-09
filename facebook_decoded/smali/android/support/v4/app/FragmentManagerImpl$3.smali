.class Landroid/support/v4/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Landroid/support/v4/app/FragmentManagerImpl;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->c:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->c:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->e:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->a:Ljava/lang/String;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl$3;->b:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/String;II)Z

    .line 455
    return-void
.end method
