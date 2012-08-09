.class Lcom/facebook/katana/activity/login/VersionTasks$1;
.super Ljava/lang/Thread;
.source "RealLoginActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/VersionTasks;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/VersionTasks;)V
    .locals 0
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/VersionTasks;->a(Lcom/facebook/katana/activity/login/VersionTasks;)Lcom/facebook/katana/FB4AVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/FB4AVersion;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/VersionTasks;->a(Lcom/facebook/katana/activity/login/VersionTasks;)Lcom/facebook/katana/FB4AVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/FB4AVersion;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/VersionTasks;->b(Lcom/facebook/katana/activity/login/VersionTasks;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/PlatformUtils;->b(Landroid/content/Context;)V

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/VersionTasks;->a(Lcom/facebook/katana/activity/login/VersionTasks;)Lcom/facebook/katana/FB4AVersion;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/login/VersionTasks$1;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-static {v1}, Lcom/facebook/katana/activity/login/VersionTasks;->b(Lcom/facebook/katana/activity/login/VersionTasks;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FB4AVersion;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
