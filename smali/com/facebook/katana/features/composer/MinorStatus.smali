.class public Lcom/facebook/katana/features/composer/MinorStatus;
.super Ljava/lang/Object;
.source "MinorStatus.java"


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v1, Lcom/facebook/katana/features/composer/MinorStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/katana/features/composer/MinorStatus;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v2, Lcom/facebook/katana/features/composer/MinorStatusClient;

    invoke-direct {v2}, Lcom/facebook/katana/features/composer/MinorStatusClient;-><init>()V

    invoke-direct {v0, v2}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/features/composer/MinorStatus;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 34
    :cond_0
    sget-object v0, Lcom/facebook/katana/features/composer/MinorStatus;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-static {}, Lcom/facebook/katana/features/composer/MinorStatus;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method
