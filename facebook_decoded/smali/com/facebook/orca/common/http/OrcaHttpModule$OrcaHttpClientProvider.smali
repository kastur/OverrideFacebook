.class Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/common/http/OrcaHttpClient;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 4

    .prologue
    .line 89
    new-instance v3, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;

    const-class v0, Lcom/facebook/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/conn/ClientConnectionManager;

    const-class v1, Lcom/facebook/apache/http/params/HttpParams;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/params/HttpParams;

    const-class v2, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-virtual {p0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpClientImpl;-><init>(Lcom/facebook/apache/http/conn/ClientConnectionManager;Lcom/facebook/apache/http/params/HttpParams;Lcom/facebook/orca/common/http/OrcaCookieStore;)V

    return-object v3
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$OrcaHttpClientProvider;->b()Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    return-object v0
.end method
