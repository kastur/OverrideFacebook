.class Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "OrcaHttpModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/apache/http/params/HttpParams;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;-><init>(Lcom/facebook/orca/common/http/OrcaHttpModule;)V

    return-void
.end method

.method private b()Lcom/facebook/apache/http/params/HttpParams;
    .locals 3

    .prologue
    const v0, 0xea60

    const/4 v2, 0x0

    .line 133
    new-instance v1, Lcom/facebook/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lcom/facebook/apache/http/params/BasicHttpParams;-><init>()V

    .line 137
    invoke-static {v1, v2}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;Z)V

    .line 139
    invoke-static {v1, v0}, Lcom/facebook/apache/http/params/HttpConnectionParams;->c(Lcom/facebook/apache/http/params/HttpParams;I)V

    .line 140
    invoke-static {v1, v0}, Lcom/facebook/apache/http/params/HttpConnectionParams;->a(Lcom/facebook/apache/http/params/HttpParams;I)V

    .line 141
    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lcom/facebook/apache/http/params/HttpConnectionParams;->b(Lcom/facebook/apache/http/params/HttpParams;I)V

    .line 145
    invoke-static {v1, v2}, Lcom/facebook/apache/http/client/params/HttpClientParams;->a(Lcom/facebook/apache/http/params/HttpParams;Z)V

    .line 148
    const-class v0, Ljava/lang/String;

    const-class v2, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-static {v1, v0}, Lcom/facebook/apache/http/params/HttpProtocolParams;->b(Lcom/facebook/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 150
    return-object v1
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpModule$HttpParamsProvider;->b()Lcom/facebook/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
