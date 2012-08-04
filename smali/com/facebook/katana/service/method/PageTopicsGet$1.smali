.class final Lcom/facebook/katana/service/method/PageTopicsGet$1;
.super Ljava/lang/Object;
.source "PageTopicsGet.java"

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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    if-eqz p1, :cond_1

    .line 136
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/katana/service/method/PageTopicsGet;->a(J)J

    .line 137
    const-string v0, "page_topic_version"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    invoke-static {}, Lcom/facebook/katana/service/method/PageTopicsGet;->h()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/service/method/PageTopicsGet;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 145
    :cond_1
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
    .line 131
    invoke-static {p1, p4}, Lcom/facebook/katana/service/method/PageTopicsGet$1;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Lcom/facebook/katana/util/TraceLogger;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/facebook/katana/service/method/PageTopicsGet;->i()Lcom/facebook/katana/binding/SimpleManagedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/SimpleManagedDataStore;->c()Lcom/facebook/katana/util/TraceLogger;

    move-result-object v0

    return-object v0
.end method
