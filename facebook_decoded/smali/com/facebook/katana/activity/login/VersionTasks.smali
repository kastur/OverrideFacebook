.class Lcom/facebook/katana/activity/login/VersionTasks;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"


# static fields
.field private static a:Lcom/facebook/katana/activity/login/VersionTasks;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/facebook/katana/FB4AVersion;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput-object p1, p0, Lcom/facebook/katana/activity/login/VersionTasks;->b:Landroid/content/Context;

    .line 1199
    invoke-static {p1}, Lcom/facebook/katana/FB4AVersion;->a(Landroid/content/Context;)Lcom/facebook/katana/FB4AVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks;->c:Lcom/facebook/katana/FB4AVersion;

    .line 1200
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/login/VersionTasks;)Lcom/facebook/katana/FB4AVersion;
    .locals 1
    .parameter

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks;->c:Lcom/facebook/katana/FB4AVersion;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/katana/activity/login/VersionTasks;
    .locals 2
    .parameter

    .prologue
    .line 1207
    const-class v1, Lcom/facebook/katana/activity/login/VersionTasks;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/activity/login/VersionTasks;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    if-nez v0, :cond_0

    .line 1208
    new-instance v0, Lcom/facebook/katana/activity/login/VersionTasks;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/VersionTasks;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/katana/activity/login/VersionTasks;->a:Lcom/facebook/katana/activity/login/VersionTasks;

    .line 1210
    :cond_0
    sget-object v0, Lcom/facebook/katana/activity/login/VersionTasks;->a:Lcom/facebook/katana/activity/login/VersionTasks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/login/VersionTasks;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/facebook/katana/activity/login/VersionTasks;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lcom/facebook/katana/activity/login/VersionTasks$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/login/VersionTasks$1;-><init>(Lcom/facebook/katana/activity/login/VersionTasks;)V

    invoke-virtual {v0}, Lcom/facebook/katana/activity/login/VersionTasks$1;->start()V

    .line 1238
    return-void
.end method
