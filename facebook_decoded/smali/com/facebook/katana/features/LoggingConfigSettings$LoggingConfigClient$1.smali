.class Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;
.super Ljava/lang/Object;
.source "LoggingConfigSettings.java"

# interfaces
.implements Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

.field private synthetic b:Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;


# direct methods
.method constructor <init>(Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->b:Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;

    iput-object p2, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const/4 v5, 0x0

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->b:Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient;->a(Ljava/lang/String;)Lcom/facebook/katana/features/LoggingConfigSettings$ConfigValues;

    move-result-object v5

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    check-cast p3, Ljava/lang/String;

    check-cast p5, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/facebook/katana/util/TraceLogger;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/katana/features/LoggingConfigSettings$LoggingConfigClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-interface {v0}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v0

    return-object v0
.end method
