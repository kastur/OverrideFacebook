.class public abstract Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;
.super Lorg/codehaus/jackson/map/KeyDeserializer;
.source "StdKeyDeserializer.java"


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/codehaus/jackson/map/KeyDeserializer;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->a:Ljava/lang/Class;

    return-void
.end method

.method protected static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static c(Ljava/lang/String;)D
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-static {p0}, Lorg/codehaus/jackson/io/NumberInput;->c(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    if-nez p1, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 31
    :cond_0
    return-object v0

    .line 29
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->a:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, p1, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/StdKeyDeserializer;->a:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not a valid representation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method protected abstract b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
.end method
