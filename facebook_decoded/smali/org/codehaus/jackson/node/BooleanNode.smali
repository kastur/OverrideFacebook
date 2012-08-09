.class public final Lorg/codehaus/jackson/node/BooleanNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "BooleanNode.java"


# static fields
.field private static a:Lorg/codehaus/jackson/node/BooleanNode;

.field private static b:Lorg/codehaus/jackson/node/BooleanNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    .line 19
    new-instance v0, Lorg/codehaus/jackson/node/BooleanNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/BooleanNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/BooleanNode;->b:Lorg/codehaus/jackson/node/BooleanNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static B()Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method

.method public static C()Lorg/codehaus/jackson/node/BooleanNode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->b:Lorg/codehaus/jackson/node/BooleanNode;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Z)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lorg/codehaus/jackson/node/BooleanNode;->a:Lorg/codehaus/jackson/node/BooleanNode;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
