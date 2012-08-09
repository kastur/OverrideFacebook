.class public Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;
.super Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.source "AsArrayTypeSerializer.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1, p3}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 109
    return-void
.end method

.method public b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 34
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 36
    return-void
.end method

.method public b(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 91
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 92
    return-void
.end method

.method public final c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 55
    return-void
.end method

.method public final c(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 100
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 101
    return-void
.end method
