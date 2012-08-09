.class public Lcom/facebook/katana/model/FacebookPhotoWithTag;
.super Lcom/facebook/katana/model/FacebookPhotoTagBase;
.source "FacebookPhotoWithTag.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookPhotoTagBase;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookPhotoWithTag;->a:J

    .line 21
    return-void
.end method


# virtual methods
.method public final f()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tag_uid"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookPhotoWithTag;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, ""

    const-string v2, "inconceivable JSON exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method
