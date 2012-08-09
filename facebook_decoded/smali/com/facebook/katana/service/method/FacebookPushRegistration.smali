.class public Lcom/facebook/katana/service/method/FacebookPushRegistration;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "FacebookPushRegistration.java"


# instance fields
.field private a:Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v3, "POST"

    const-string v4, "user.registerPushCallback"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->e:Ljava/util/Map;

    const-string v1, "protocol_params"

    invoke-static {p4, p5}, Lcom/facebook/katana/service/method/FacebookPushRegistration;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->e:Ljava/util/Map;

    const-string v1, "return_structure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string v1, "device_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 87
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Please report this error to android team."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;

    iput-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->a:Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;

    .line 108
    return-void
.end method

.method public final h()Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushRegistration;->a:Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;

    return-object v0
.end method
