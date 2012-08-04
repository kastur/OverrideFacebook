.class public Lcom/facebook/katana/activity/FbFragmentChromeActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "FbFragmentChromeActivity.java"

# interfaces
.implements Lcom/facebook/katana/TabProgressSource;
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;
.implements Lcom/facebook/orca/analytics/AnalyticsActivity;
.implements Lcom/facebook/orca/analytics/AnalyticsActivityContentUri;


# instance fields
.field private final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e:Ljava/util/Stack;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->g:Z

    return-void
.end method

.method private static a(Landroid/content/Intent;)Lcom/facebook/katana/fragment/BaseFacebookFragment;
    .locals 2
    .parameter

    .prologue
    .line 231
    const-string v0, "target_fragment"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 233
    packed-switch v0, :pswitch_data_0

    .line 239
    new-instance v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-direct {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;-><init>()V

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    new-instance v0, Lcom/facebook/katana/feed/NewsFeedFragment;

    invoke-direct {v0}, Lcom/facebook/katana/feed/NewsFeedFragment;-><init>()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private k()Lcom/facebook/katana/fragment/BaseFacebookFragment;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "content:fragment:tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 127
    check-cast v0, Lcom/facebook/katana/fragment/BaseFacebookFragment;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    if-eqz p1, :cond_1

    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->g()Lcom/facebook/katana/binding/AppSession$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v0, v1, :cond_0

    .line 206
    invoke-static {p0, p1}, Lcom/facebook/katana/service/method/PlacesTellServerLastLocation;->a(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0, p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    goto :goto_0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->f:Z

    .line 87
    iput-boolean v1, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->g:Z

    .line 88
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/TabProgressListener;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 150
    instance-of v1, v0, Lcom/facebook/katana/TabProgressSource;

    if-eqz v1, :cond_0

    .line 151
    check-cast v0, Lcom/facebook/katana/TabProgressSource;

    invoke-interface {v0, p1}, Lcom/facebook/katana/TabProgressSource;->a(Lcom/facebook/katana/TabProgressListener;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(Lcom/facebook/katana/ui/CustomMenuItem;)V

    .line 171
    :cond_0
    return-void
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 177
    return-void
.end method

.method public final f_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    if-eqz v0, :cond_1

    .line 254
    invoke-static {p0}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->u:Ljava/lang/String;

    .line 265
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->g()V

    .line 186
    :cond_0
    return-void
.end method

.method public final h()Lcom/facebook/katana/webview/FacewebWebView;
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 139
    instance-of v1, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->c()Lcom/facebook/katana/webview/FacewebWebView;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-static {p0}, Lcom/facebook/katana/util/Utils;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->setIntent(Landroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->d()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->c()V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->y()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a()Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;->b(Landroid/app/Activity;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/katana/fragment/BaseFacebookFragment;->a(IILandroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onAttachedToWindow()V

    .line 194
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 195
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->j()V

    .line 134
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->l()V

    .line 62
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->f(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "from_navbar"

    aput-object v3, v1, v2

    const-string v2, "extra_launch_uri"

    aput-object v2, v1, v4

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/util/IntentUtils;->a(Landroid/content/Intent;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->k()Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/facebook/katana/fragment/FacebookFragment;->a()V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e:Ljava/util/Stack;

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->setIntent(Landroid/content/Intent;)V

    .line 78
    iput-boolean v4, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->g:Z

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 97
    invoke-static {p0}, Lcom/facebook/katana/util/FBLocationManager;->a(Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->g:Z

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->g:Z

    .line 107
    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->e()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08011b

    invoke-virtual {p0}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->a(Landroid/content/Intent;)Lcom/facebook/katana/fragment/BaseFacebookFragment;

    move-result-object v2

    const-string v3, "content:fragment:tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 115
    iget-boolean v1, p0, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->f:Z

    if-nez v1, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->a(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 121
    :cond_1
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 122
    return-void
.end method
