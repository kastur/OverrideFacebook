.class public final Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
.super Ljava/lang/Object;
.source "ReadOnlyClassToSerializerMap.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

.field private b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    .line 32
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    .line 33
    return-void
.end method

.method public static a(Ljava/util/HashMap;)Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    invoke-direct {v1, p0}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Ljava/lang/Class;)V

    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->a(Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->a(Lorg/codehaus/jackson/type/JavaType;)V

    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->a(Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;-><init>(Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b(Ljava/lang/Class;)V

    .line 65
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->a(Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;->b(Lorg/codehaus/jackson/type/JavaType;)V

    .line 71
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->a:Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->b:Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ser/impl/JsonSerializerMap;->a(Lorg/codehaus/jackson/map/ser/SerializerCache$TypeKey;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0
.end method
