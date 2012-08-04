.class public Lcom/facebook/katana/activity/ShortcutDialogInjector;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "ShortcutDialogInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 70
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/katana/dialog/AddShortcutActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/facebook/katana/dialog/AddShortcutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "rollout"

    invoke-virtual {p1}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    :cond_0
    return-void
.end method

.method private static h(Landroid/app/Activity;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.orca"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 109
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-static {p1, v0}, Lcom/facebook/katana/rollout/Rollout;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 34
    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Lcom/facebook/katana/activity/ShortcutDialogInjector$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    instance-of v1, p1, Lcom/facebook/katana/activity/media/PhotoGalleryActivity;

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p1, v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V

    goto :goto_0

    .line 47
    :pswitch_1
    instance-of v1, p1, Lcom/facebook/orca/threadlist/ThreadListActivity;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->h(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {p1, v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V

    goto :goto_0

    .line 56
    :pswitch_2
    instance-of v1, p1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->h(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :cond_2
    :pswitch_3
    instance-of v1, p1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 62
    check-cast v1, Lcom/facebook/katana/activity/FbFragmentChromeActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/FbFragmentChromeActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p1, v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V

    goto :goto_0

    .line 67
    :cond_3
    instance-of v1, p1, Lcom/facebook/katana/activity/stream/StreamActivity;

    if-eqz v1, :cond_0

    .line 68
    invoke-static {p1, v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-class v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    invoke-static {p1, v0}, Lcom/facebook/katana/rollout/Rollout;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;

    .line 89
    if-eqz v0, :cond_0

    .line 93
    sget-object v1, Lcom/facebook/katana/activity/ShortcutDialogInjector$1;->a:[I

    invoke-virtual {v0}, Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    instance-of v1, p1, Lcom/facebook/katana/ComposerActivity;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 96
    check-cast v1, Lcom/facebook/katana/ComposerActivity;

    .line 97
    invoke-virtual {v1}, Lcom/facebook/katana/ComposerActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {p1, v0}, Lcom/facebook/katana/activity/ShortcutDialogInjector;->a(Landroid/app/Activity;Lcom/facebook/katana/dialog/AddShortcutActivity$AndroidShortcutRollout2;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
