.class public final Lcom/facebook/katana/util/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 39
    const-class v1, Lcom/facebook/katana/util/PlatformUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->a:Z

    if-eqz v0, :cond_0

    .line 40
    sget-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :goto_0
    monitor-exit v1

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->a:Z

    .line 50
    sget-boolean v0, Lcom/facebook/katana/util/PlatformUtils;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 77
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "market://search?q=foo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    const/4 v0, 0x1

    goto :goto_0
.end method
