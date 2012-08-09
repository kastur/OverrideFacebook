.class public Lcom/facebook/katana/util/logging/MobileEvent;
.super Ljava/lang/Object;
.source "MobileEvent.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/node/ObjectNode;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->d:Z

    .line 22
    iput-object p1, p0, Lcom/facebook/katana/util/logging/MobileEvent;->b:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/facebook/katana/util/logging/MobileEvent;->c:J

    .line 24
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    .line 25
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "log_type"

    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEvent;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/facebook/katana/util/logging/MobileEvent;->c:J

    invoke-static {v2, v3}, Lcom/facebook/katana/util/logging/MobileEvent;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Lorg/codehaus/jackson/node/ObjectNode;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->a:Lorg/codehaus/jackson/node/ObjectNode;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/MobileEvent;->d()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->d:Z

    .line 59
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/facebook/katana/util/logging/MobileEvent;->d:Z

    return v0
.end method
