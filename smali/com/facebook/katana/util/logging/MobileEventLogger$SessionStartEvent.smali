.class Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;
.super Lcom/facebook/katana/util/logging/UserInteractionEvent;
.source "MobileEventLogger.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/MobileEventLogger;Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    const-string v0, "APP_FG"

    const-string v1, "SESSION"

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a(Lcom/facebook/katana/util/logging/MobileEventLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-object p3, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->b:Ljava/lang/String;

    .line 274
    iput-wide p4, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->c:J

    .line 276
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 277
    const-string v1, "conn"

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Lcom/facebook/katana/util/logging/MobileEventLogger;)Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/util/logging/MobileEventLogger$ConnectionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 280
    const-string v2, "activity_launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    const-string v2, "activity_launcher"

    invoke-virtual {v0, v2, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->a(Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionStartEvent;->c:J

    return-wide v0
.end method
