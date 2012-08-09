.class public Lcom/facebook/katana/features/UserSeenNux;
.super Ljava/lang/Object;
.source "UserSeenNux.java"


# static fields
.field private static a:Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/features/UserSeenNux$Project;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/facebook/katana/features/UserSeenNux;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static a()Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Lcom/facebook/katana/features/UserSeenNux$Project;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/katana/features/UserSeenNux;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    new-instance v1, Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;

    invoke-direct {v1}, Lcom/facebook/katana/features/UserSeenNuxManagedStoreClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;)V

    sput-object v0, Lcom/facebook/katana/features/UserSeenNux;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 47
    :cond_0
    sget-object v0, Lcom/facebook/katana/features/UserSeenNux;->a:Lcom/facebook/katana/binding/SimpleManagedDataStore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)Ljava/lang/Boolean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {}, Lcom/facebook/katana/features/UserSeenNux;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/facebook/katana/features/UserSeenNux$Project;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/facebook/katana/features/UserSeenNux;->a()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->b(Landroid/content/Context;Ljava/lang/Object;)V

    .line 61
    return-void
.end method
