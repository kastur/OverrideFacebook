.class public Lcom/facebook/orca/activity/FbListActivity;
.super Landroid/app/ListActivity;
.source "FbListActivity.java"

# interfaces
.implements Lcom/facebook/orca/activity/FbActivityish;


# instance fields
.field private a:Lcom/facebook/orca/inject/ContextScope;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/activity/FbActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private a()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 148
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->z()Z

    goto :goto_0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 208
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 209
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 247
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->y()Z

    goto :goto_0

    .line 252
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 253
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 259
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->o()V

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 216
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 217
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->v()V

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbListActivity;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 32
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/facebook/orca/activity/FbListActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/FbListActivity$1;-><init>(Lcom/facebook/orca/activity/FbListActivity;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 39
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->a(Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :cond_1
    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 47
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 224
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/FbActivityListener;->b(I)Landroid/app/Dialog;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 124
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 129
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 129
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 186
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 197
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->b(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 103
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->d(Landroid/app/Activity;)V

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 61
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->k()V

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 236
    invoke-interface {v0, p1, p2}, Lcom/facebook/orca/activity/FbActivityListener;->a(ILandroid/app/Dialog;)Z

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 74
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/facebook/orca/activity/FbActivityUtils;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->c:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 113
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 115
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 175
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->x()Ljava/lang/Boolean;

    goto :goto_0

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 82
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->f(Landroid/app/Activity;)V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 91
    invoke-interface {v0, p0}, Lcom/facebook/orca/activity/FbActivityListener;->g(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 95
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 95
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 96
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/ListActivity;->onUserInteraction()V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/activity/FbListActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 137
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->w()V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method
