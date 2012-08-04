.class public abstract Lcom/facebook/orca/activity/FbMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "FbMapActivity.java"

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
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public final a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 159
    invoke-interface {v0}, Lcom/facebook/orca/activity/FbActivityListener;->z()Z

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final b(I)Landroid/view/View;
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
    .line 268
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->finish()V

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onBackPressed()V

    .line 254
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onContentChanged()V

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    .line 31
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbMapActivity;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 32
    const-class v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/inject/ContextScope;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/facebook/orca/activity/FbMapActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/activity/FbMapActivity$1;-><init>(Lcom/facebook/orca/activity/FbMapActivity;)V

    invoke-static {v0}, Lcom/google/inject/Key;->a(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/facebook/orca/activity/FbMapActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :cond_1
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/orca/activity/FbMapActivity;->a(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    .line 224
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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

    iget-object v1, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 129
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-static {}, Lcom/facebook/orca/inject/ContextScope;->b()V

    .line 129
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    .line 236
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/MapActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 74
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onRestart()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/facebook/orca/activity/FbActivityUtils;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->c:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 113
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    .line 175
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->a(Landroid/content/Context;)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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

    iget-object v1, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v1, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 95
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->a:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0, p0}, Lcom/facebook/orca/inject/ContextScope;->b(Landroid/content/Context;)V

    .line 95
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 96
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onUserInteraction()V

    .line 136
    iget-object v0, p0, Lcom/facebook/orca/activity/FbMapActivity;->b:Ljava/util/Set;

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
