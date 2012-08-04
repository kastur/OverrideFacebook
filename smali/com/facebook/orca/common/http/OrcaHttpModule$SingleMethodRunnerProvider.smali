.class Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/protocol/base/SingleMethodRunner;
    .locals 9

    .prologue
    .line 181
    new-instance v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    const-class v1, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->a(Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    const-class v3, Lcom/facebook/orca/annotations/ProductionPlatformAppHttpConfig;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    const-class v3, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    const-class v4, Ljava/lang/String;

    const-class v5, Lcom/facebook/orca/annotations/MeUserId;

    invoke-virtual {p0, v4, v5}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-class v6, Lcom/facebook/orca/annotations/AuthTokenString;

    invoke-virtual {p0, v5, v6}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    const-class v7, Lcom/facebook/orca/annotations/IsPhpProfilingEnabled;

    invoke-virtual {p0, v6, v7}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v6

    const-class v7, Ljava/lang/Boolean;

    const-class v8, Lcom/facebook/orca/annotations/IsWirehogProfilingEnabled;

    invoke-virtual {p0, v7, v8}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljavax/inject/Provider;

    move-result-object v7

    const-class v8, Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-virtual {p0, v8}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;-><init>(Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppConfig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$SingleMethodRunnerProvider;->b()Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    move-result-object v0

    return-object v0
.end method
