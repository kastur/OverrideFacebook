.class Lcom/facebook/katana/features/UriMapClient$1;
.super Ljava/lang/Object;
.source "UriMapClient.java"

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

.field private synthetic b:Lcom/facebook/katana/features/UriMapClient;


# direct methods
.method constructor <init>(Lcom/facebook/katana/features/UriMapClient;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/katana/features/UriMapClient$1;->b:Lcom/facebook/katana/features/UriMapClient;

    iput-object p2, p0, Lcom/facebook/katana/features/UriMapClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

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
    .line 98
    const/4 v5, 0x0

    .line 99
    if-eqz p2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/features/UriMapClient$1;->b:Lcom/facebook/katana/features/UriMapClient;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/features/UriMapClient;->b(Ljava/lang/String;)Lcom/facebook/katana/util/UriTemplateMap;

    move-result-object v5

    .line 101
    const-string v0, "urimap"

    iget-object v1, p0, Lcom/facebook/katana/features/UriMapClient$1;->b:Lcom/facebook/katana/features/UriMapClient;

    invoke-virtual {v1}, Lcom/facebook/katana/features/UriMapClient;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android_faceweb"

    iget-object v1, p0, Lcom/facebook/katana/features/UriMapClient$1;->b:Lcom/facebook/katana/features/UriMapClient;

    invoke-virtual {v1}, Lcom/facebook/katana/features/UriMapClient;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    sget-object v1, Lcom/facebook/katana/binding/AppSession$PreloadStep;->FETCH_FACEWEB_URI_MAP:Lcom/facebook/katana/binding/AppSession$PreloadStep;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSession$PreloadStep;)V

    .line 111
    :cond_0
    invoke-static {}, Lcom/facebook/katana/IntentUriHandler;->f()V

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/features/UriMapClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-interface {v0}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v0

    const-string v1, "clear IntentUriHandler.sCanHandleUriCache"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/features/UriMapClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-interface {v0}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v0

    const-string v1, "passing callback up from shim layer"

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/TraceLogger;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/facebook/katana/features/UriMapClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
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
    .line 94
    check-cast p3, Ljava/lang/String;

    check-cast p5, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/facebook/katana/features/UriMapClient$1;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/facebook/katana/util/TraceLogger;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/katana/features/UriMapClient$1;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    invoke-interface {v0}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v0

    return-object v0
.end method
