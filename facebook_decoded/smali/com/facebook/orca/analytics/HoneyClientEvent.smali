.class public Lcom/facebook/orca/analytics/HoneyClientEvent;
.super Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;
.source "HoneyClientEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lorg/codehaus/jackson/node/ObjectNode;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const-string v0, "AUTO_SET"

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const-string v0, "client_event"

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->a:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 62
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->b:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public final e()Lorg/codehaus/jackson/JsonNode;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 94
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "log_type"

    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "module"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "obj_type"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 109
    const-string v1, "obj_id"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 113
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    if-eqz v1, :cond_4

    .line 117
    const-string v1, "extra"

    iget-object v2, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->f:Lorg/codehaus/jackson/node/ObjectNode;

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 120
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    const-string v1, "bg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 128
    :cond_5
    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->e:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/orca/analytics/HoneyClientEvent;->a:Ljava/lang/String;

    return-object v0
.end method
