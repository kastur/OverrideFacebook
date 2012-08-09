.class public Lorg/codehaus/jackson/map/util/JSONWrappedObject;
.super Ljava/lang/Object;
.source "JSONWrappedObject.java"

# interfaces
.implements Lorg/codehaus/jackson/map/JsonSerializableWithType;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private d:Lorg/codehaus/jackson/type/JavaType;


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->c:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p2, p1}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->d:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->d:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0, v1, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Lorg/codehaus/jackson/type/JavaType;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 98
    invoke-virtual {p2, v0, v1, v2}, Lorg/codehaus/jackson/map/SerializerProvider;->a(Ljava/lang/Class;ZLorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/map/JsonSerializer;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/util/JSONWrappedObject;->a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 85
    return-void
.end method
