.class public Lorg/codehaus/jackson/map/ser/AnyGetterWriter;
.super Ljava/lang/Object;
.source "AnyGetterWriter.java"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Lorg/codehaus/jackson/map/ser/MapSerializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/map/ser/MapSerializer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a:Ljava/lang/reflect/Method;

    .line 26
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->b:Lorg/codehaus/jackson/map/ser/MapSerializer;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 37
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Value returned by \'any-getter\' ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()) not java.util.Map but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->b:Lorg/codehaus/jackson/map/ser/MapSerializer;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Ljava/util/Map;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/AnyGetterWriter;->b:Lorg/codehaus/jackson/map/ser/MapSerializer;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ser/MapSerializer;->a(Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 46
    return-void
.end method
