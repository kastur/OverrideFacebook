.class public Lcom/facebook/orca/activity/FbFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FbFragmentActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/FbActivityish;


# instance fields
.field private e:Lcom/facebook/orca/inject/ContextScope;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 281
    invoke-virtual {v0, p2, p1}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 283
    return-void
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 149
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->z()Z

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 210
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method protected final h(I)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 248
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->y()Z

    goto :goto_0

    .line 253
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 254
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 260
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->o()V

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 218
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->v()V

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 37
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    .line 38
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/facebook/orca/activity/FbFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/FbFragmentActivity$1;-><init>(Lcom/facebook/orca/activity/FbFragmentActivity;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->d(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 44
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbFragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :cond_1
    return-void

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 52
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 225
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 129
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 187
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->b(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 108
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 66
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->k()V

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 237
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/app/Dialog;)Z

    move-result v0

    .line 238
    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/facebook/orca/activity/FbActivityUtils;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->g:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 120
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 176
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->x()Ljava/lang/Boolean;

    goto :goto_0

    .line 181
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 85
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 87
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->f(Landroid/app/Activity;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 96
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->g(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 100
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 100
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 101
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserInteraction()V

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 142
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->w()V

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public final y()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 265
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/orca/activity/FbFragmentActivity;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
