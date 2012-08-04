.class Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/apache/http/conn/ClientConnectionManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/http/OrcaHttpModule;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method

.method private b()Lcom/facebook/apache/http/conn/ClientConnectionManager;
    .locals 6

    .prologue
    .line 121
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v1, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 123
    new-instance v2, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-static {}, Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;->b()Lcom/facebook/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILcom/facebook/apache/http/conn/scheme/SchemeSocketFactory;)V

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 124
    new-instance v2, Lcom/facebook/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    iget-object v4, p0, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;->a:Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-static {v4}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Lcom/facebook/orca/common/http/OrcaHttpModule;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/facebook/orca/common/http/OrcaHttpModule;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/apache/http/conn/scheme/SocketFactory;

    move-result-object v0

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lcom/facebook/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lcom/facebook/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;->a(Lcom/facebook/apache/http/conn/scheme/Scheme;)Lcom/facebook/apache/http/conn/scheme/Scheme;

    .line 125
    new-instance v0, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1}, Lcom/facebook/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lcom/facebook/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$ClientConnectionManagerProvider;->b()Lcom/facebook/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method
