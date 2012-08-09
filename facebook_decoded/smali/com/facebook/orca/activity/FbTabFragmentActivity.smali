.class public Lcom/facebook/orca/activity/FbTabFragmentActivity;
.super Lcom/facebook/android/suport/TabFragmentActivity;
.source "FbTabFragmentActivity.java"

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
    .line 25
    invoke-direct {p0}, Lcom/facebook/android/suport/TabFragmentActivity;-><init>()V

    return-void
.end method

.method private i()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 266
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 150
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->z()Z

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->finish()V

    .line 210
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 211
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public final i_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final n()Ljava/util/Set;
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
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/android/suport/TabFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 170
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 249
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->y()Z

    goto :goto_0

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onBackPressed()V

    .line 255
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/facebook/android/suport/TabFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 261
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->o()V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onContentChanged()V

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 219
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->v()V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbTabFragmentActivity;->i()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 34
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/facebook/orca/activity/FbTabFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/FbTabFragmentActivity$1;-><init>(Lcom/facebook/orca/activity/FbTabFragmentActivity;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    .line 37
    invoke-super {p0, p1}, Lcom/facebook/android/suport/TabFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 41
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;)V

    .line 42
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbTabFragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :cond_1
    return-void

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbTabFragmentActivity;->a(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 49
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 226
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/facebook/android/suport/TabFragmentActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 126
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 130
    iget-object v1, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 131
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onDestroy()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 131
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 188
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/android/suport/TabFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 199
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->b(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/android/suport/TabFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/facebook/android/suport/TabFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 105
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/facebook/android/suport/TabFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 63
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->k()V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 238
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/app/Dialog;)Z

    move-result v0

    .line 239
    if-eqz v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/facebook/android/suport/TabFragmentActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 76
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onRestart()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/facebook/orca/activity/FbActivityUtils;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->g:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 115
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 117
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 177
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->x()Ljava/lang/Boolean;

    goto :goto_0

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 82
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onStart()V

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 84
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->f(Landroid/app/Activity;)V

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 93
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->g(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 97
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onStop()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->e:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 97
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onStop()V

    .line 98
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->onUserInteraction()V

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/activity/FbTabFragmentActivity;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 139
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->w()V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method
