.class public final Lorg/codehaus/jackson/node/NullNode;
.super Lorg/codehaus/jackson/node/ValueNode;
.source "NullNode.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/node/NullNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/codehaus/jackson/node/NullNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/NullNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/NullNode;->a:Lorg/codehaus/jackson/node/NullNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ValueNode;-><init>()V

    return-void
.end method

.method public static B()Lorg/codehaus/jackson/node/NullNode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/codehaus/jackson/node/NullNode;->a:Lorg/codehaus/jackson/node/NullNode;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 51
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "null"

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
