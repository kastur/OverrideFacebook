.class Lcom/facebook/katana/service/method/FqlGetProfileGeneric;
.super Lcom/facebook/katana/service/method/FqlGeneratedQuery;
.source "FqlGetProfile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/katana/model/FacebookProfile;",
        ">",
        "Lcom/facebook/katana/service/method/FqlGeneratedQuery;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/Class;)V
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
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    const-string v5, "profile"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/method/FqlGeneratedQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;->a:Ljava/util/Map;

    .line 205
    iput-object p6, p0, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;->f:Ljava/lang/Class;

    .line 206
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;->f:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 219
    iget-object v2, p0, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;->a:Ljava/util/Map;

    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method protected h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/katana/service/method/FqlGetProfileGeneric;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
