.class public Lcom/facebook/katana/service/method/FacebookPushUnregistration;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "FacebookPushUnregistration.java"


# static fields
.field private static g:Lcom/facebook/orca/analytics/AnalyticsLogger;


# instance fields
.field private a:Z

.field private final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v3, "POST"

    const-string v4, "user.unregisterPushCallback"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 59
    iput-object p1, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->f:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->e:Ljava/util/Map;

    const-string v1, "token"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->a:Z

    .line 66
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    sput-object v0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 46
    :cond_0
    sget-object v0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->g:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 76
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->a:Z

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->f:Landroid/content/Context;

    const-string v1, "key=\"C2DMKey\""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->f:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "success"

    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/logging/reliability/PushServerUnregistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/service/method/FacebookPushUnregistration;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 91
    return-void

    .line 85
    :cond_1
    const-string v0, "failed"

    goto :goto_0
.end method
