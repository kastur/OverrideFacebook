.class public Lcom/facebook/katana/service/method/FqlGetPhotoSet;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetPhotoSet.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private final a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V
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
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    const-string v5, "photoset_photo"

    invoke-static {p5}, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    iput-object p5, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->h:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    .line 47
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/SimpleNetworkRequestCallback",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookPhotoSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v8

    .line 62
    if-nez v8, :cond_0

    .line 68
    :goto_0
    return-object v2

    .line 65
    :cond_0
    new-instance v0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;

    invoke-virtual {v8}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/FqlGetPhotoSet;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;)V

    .line 68
    const/16 v6, 0x3e9

    const/16 v7, 0x55

    move-object v3, v8

    move-object v4, p0

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photoset_token = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 104
    :goto_0
    if-eqz v2, :cond_2

    new-instance v5, Lcom/facebook/katana/model/FacebookPhotoSet;

    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->g:Ljava/util/List;

    invoke-direct {v5, v0, v1}, Lcom/facebook/katana/model/FacebookPhotoSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a:Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;

    iget-object v3, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->f:Ljava/lang/String;

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/facebook/katana/binding/SimpleNetworkRequestCallback;->a(Landroid/content/Context;ZLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 110
    iget-object v4, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->h:Ljava/lang/String;

    move v1, p5

    move-object v2, p6

    move-object v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSessionListener;->a(ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/model/FacebookPhotoSet;)V

    goto :goto_2

    .line 103
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 112
    :cond_3
    return-void
.end method

.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->f:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 80
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;

    .line 93
    iget-wide v3, v0, Lcom/facebook/katana/service/method/FqlGetPhotoSet$PhotoSetEntry;->mPhotoFBID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_1
    iput-object v1, p0, Lcom/facebook/katana/service/method/FqlGetPhotoSet;->g:Ljava/util/List;

    goto :goto_0
.end method
