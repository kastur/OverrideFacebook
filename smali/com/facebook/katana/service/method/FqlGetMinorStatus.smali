.class public Lcom/facebook/katana/service/method/FqlGetMinorStatus;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetMinorStatus.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v5, "user"

    const-string v0, "uid=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/model/MinorStatusModel;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    iput-object p5, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 28
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGetMinorStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;J)V

    .line 31
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    const/16 v1, 0xc8

    if-ne p5, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->g:Ljava/lang/Boolean;

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 61
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 67
    const-class v2, Lcom/facebook/katana/model/MinorStatusModel;

    invoke-static {v1, v2}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected number of results"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->f:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/MinorStatusModel;

    iget-boolean v0, v0, Lcom/facebook/katana/model/MinorStatusModel;->isMinor:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetMinorStatus;->g:Ljava/lang/Boolean;

    .line 75
    return-void
.end method
