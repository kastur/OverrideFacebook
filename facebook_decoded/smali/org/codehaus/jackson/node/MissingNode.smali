.class public final Lorg/codehaus/jackson/node/MissingNode;
.super Lorg/codehaus/jackson/node/BaseJsonNode;
.source "MissingNode.java"


# static fields
.field private static final a:Lorg/codehaus/jackson/node/MissingNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/codehaus/jackson/node/MissingNode;

    invoke-direct {v0}, Lorg/codehaus/jackson/node/MissingNode;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/node/MissingNode;->a:Lorg/codehaus/jackson/node/MissingNode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/codehaus/jackson/node/BaseJsonNode;-><init>()V

    return-void
.end method

.method public static B()Lorg/codehaus/jackson/node/MissingNode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lorg/codehaus/jackson/node/MissingNode;->a:Lorg/codehaus/jackson/node/MissingNode;

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 66
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->e()V

    .line 74
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 0
    .parameter

    .prologue
    .line 52
    return-object p0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->NOT_AVAILABLE:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    return-object v0
.end method
