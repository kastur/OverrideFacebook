.class public abstract Lcom/facebook/katana/activity/nux/BasicNuxController;
.super Ljava/lang/Object;
.source "BasicNuxController.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/orca/common/util/TriState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->b:Lcom/facebook/orca/common/util/TriState;

    .line 25
    iput-object p1, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "NUX"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const-string v0, "next_activity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    const-string v0, "com.facebook.katana.BasicNuxController"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-direct {p0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    :goto_0
    iput-object v0, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->b:Lcom/facebook/orca/common/util/TriState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/nux/BasicNuxController;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    const-string v1, "next_activity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    return-void
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->b:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/nux/BasicNuxController;->d(Landroid/content/Context;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->b:Lcom/facebook/orca/common/util/TriState;

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/katana/activity/nux/BasicNuxController;->b:Lcom/facebook/orca/common/util/TriState;

    .line 56
    const-string v0, "com.facebook.katana.BasicNuxController"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    invoke-direct {p0}, Lcom/facebook/katana/activity/nux/BasicNuxController;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method
