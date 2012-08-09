.class final Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;
.super Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 123
    const-class v0, Ljava/lang/Character;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;->a:Ljava/lang/Class;

    const-string v1, "can only convert 1-character Strings"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$CharKD;->c(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
