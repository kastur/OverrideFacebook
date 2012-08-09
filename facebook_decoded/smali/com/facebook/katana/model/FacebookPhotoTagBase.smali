.class public abstract Lcom/facebook/katana/model/FacebookPhotoTagBase;
.super Ljava/lang/Object;
.source "FacebookPhotoTagBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/facebook/katana/model/FacebookPhotoTagBase;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhotoTagBase;

    .line 31
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;->f()Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract f()Lorg/json/JSONObject;
.end method
