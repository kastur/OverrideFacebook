.class public Lcom/facebook/katana/features/LoggingConfigSettings;
.super Ljava/lang/Object;
.source "LoggingConfigSettings.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/features/LoggingConfigSettings;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static a(Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)Lcom/facebook/katana/binding/SimpleManagedDataStore;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;",
            ")",
            "Lcom/facebook/katana/binding/SimpleManagedDataStore",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p0}, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;->b()Ljava/lang/String;

    move-result-object v1

    .line 59
    sget-object v0, Lcom/facebook/katana/features/LoggingConfigSettings;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/facebook/katana/features/LoggingConfigSettings;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    .line 67
    :goto_0
    return-object v0

    .line 62
    :cond_0
    new-instance v2, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;

    invoke-direct {v2, p0}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;-><init>(Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)V

    .line 63
    new-instance v0, Lcom/facebook/katana/binding/SimpleManagedDataStore;

    sget-object v3, Lcom/facebook/katana/binding/ManagedDataStore$Mode;->SINGLE_REQUEST:Lcom/facebook/katana/binding/ManagedDataStore$Mode;

    invoke-direct {v0, v2, v3}, Lcom/facebook/katana/binding/SimpleManagedDataStore;-><init>(Lcom/facebook/katana/binding/SimpleManagedDataStore$Client;Lcom/facebook/katana/binding/ManagedDataStore$Mode;)V

    .line 66
    sget-object v2, Lcom/facebook/katana/features/LoggingConfigSettings;->a:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Lcom/facebook/katana/features/LoggingConfigSettings;->a(Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;)Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    .line 50
    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/facebook/katana/features/LoggingConfigSettings$ConfigFactory;->a()Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    move-result-object v0

    .line 53
    :cond_0
    return-object v0
.end method
