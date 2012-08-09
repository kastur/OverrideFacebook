.class public Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "SendPushTraceInfoConfirmation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v3, "POST"

    const-string v4, "user.tracePush"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 41
    iput-object v2, p0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    .line 42
    iget-object v0, p0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;->e:Ljava/util/Map;

    const-string v1, "event_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;->e:Ljava/util/Map;

    const-string v1, "event_info"

    const-string v2, "device_received"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/facebook/katana/service/method/SendPushTraceInfoConfirmation;->e:Ljava/util/Map;

    const-string v1, "trace_info"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a:Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    :cond_0
    return-void
.end method
