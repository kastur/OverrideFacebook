.class Lcom/facebook/katana/util/logging/MobileEventLogger$SessionEndEvent;
.super Lcom/facebook/katana/util/logging/UserInteractionEvent;
.source "MobileEventLogger.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/util/logging/MobileEventLogger;)V
    .locals 4
    .parameter

    .prologue
    .line 299
    const-string v0, "APP_BG"

    const-string v1, "SESSION"

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->c(Lcom/facebook/katana/util/logging/MobileEventLogger;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d(Lcom/facebook/katana/util/logging/MobileEventLogger;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 302
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v3, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 303
    const-string v3, "duration"

    invoke-virtual {v2, v3, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 304
    invoke-virtual {v2}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger$SessionEndEvent;->a(Ljava/lang/String;)V

    .line 305
    return-void
.end method
