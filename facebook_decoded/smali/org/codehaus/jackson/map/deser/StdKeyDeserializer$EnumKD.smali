.class final Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;
.super Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# instance fields
.field private b:Lorg/codehaus/jackson/map/deser/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/map/deser/EnumResolver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/deser/EnumResolver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 195
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;->b:Lorg/codehaus/jackson/map/deser/EnumResolver;

    .line 196
    return-void
.end method

.method private c(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;->b:Lorg/codehaus/jackson/map/deser/EnumResolver;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/deser/EnumResolver;->a(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;->a:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 205
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer$EnumKD;->c(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
