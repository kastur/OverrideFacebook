.class public Lcom/facebook/android/suport/FragmentActivityGroup;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentActivityGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private e:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/android/suport/FragmentActivityGroup;-><init>(Z)V

    .line 48
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    new-instance v0, Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    .line 52
    return-void
.end method


# virtual methods
.method public final d_()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroid/app/LocalActivityManager;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported! Don\'t use onActivityResult in TabActivity!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    const-string v0, "android:states"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/android/suport/FragmentActivityGroup;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/facebook/android/suport/FragmentActivityGroup;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 66
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "android:states"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 86
    iget-object v0, p0, Lcom/facebook/android/suport/FragmentActivityGroup;->e:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 87
    return-void
.end method
