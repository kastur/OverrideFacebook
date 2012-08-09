.class public abstract Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static a()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;->a:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;
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
.end method

.method public final a(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p2, p1, p3}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 40
    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p2, p1, p3}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 48
    new-instance v1, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object v1
.end method

.method protected abstract a(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation
.end method
