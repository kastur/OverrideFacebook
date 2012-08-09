.class public Lcom/facebook/katana/service/method/PlacesFlag;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PlacesFlag.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/List;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)V
    .locals 7
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
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;",
            "Lcom/facebook/katana/service/method/PlacesFlag$FlagType;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v3, "GET"

    const-string v4, "places.setFlag"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 66
    iput-object p5, p0, Lcom/facebook/katana/service/method/PlacesFlag;->a:Ljava/util/List;

    .line 67
    iput-object p6, p0, Lcom/facebook/katana/service/method/PlacesFlag;->f:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPlace;

    .line 74
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookPlace;->mPageId:J

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->e:Ljava/util/Map;

    const-string v2, "page_ids"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->e:Ljava/util/Map;

    const-string v1, "flag"

    iget-object v2, p0, Lcom/facebook/katana/service/method/PlacesFlag;->f:Lcom/facebook/katana/service/method/PlacesFlag$FlagType;

    iget-object v2, v2, Lcom/facebook/katana/service/method/PlacesFlag$FlagType;->mArgVal:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/service/method/PlacesFlag;->e:Ljava/util/Map;

    const-string v1, "value"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/katana/model/FacebookPlace;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/facebook/katana/service/method/PlacesFlag;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPlace;",
            ">;",
            "Lcom/facebook/katana/service/method/PlacesFlag$FlagType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/facebook/katana/service/method/PlacesFlag;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    move-object v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/PlacesFlag;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/util/List;Lcom/facebook/katana/service/method/PlacesFlag$FlagType;)V

    .line 104
    const/16 v6, 0x3e9

    const/16 v7, 0x1f9

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v0, "extended_type"

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 136
    :cond_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 130
    invoke-virtual {v0, p5}, Lcom/facebook/katana/binding/AppSessionListener;->i(I)V

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1f9
        :pswitch_0
    .end packed-switch
.end method
