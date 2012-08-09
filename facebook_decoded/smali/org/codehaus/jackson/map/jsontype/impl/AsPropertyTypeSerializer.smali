.class public Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;
.super Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;
.source "AsPropertyTypeSerializer.java"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/jsontype/impl/AsArrayTypeSerializer;-><init>(Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 30
    iput-object p3, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    .line 44
    iget-object v0, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/map/jsontype/impl/AsPropertyTypeSerializer;->a:Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;

    invoke-interface {v1, p1}, Lorg/codehaus/jackson/map/jsontype/TypeIdResolver;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final b(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    .line 65
    return-void
.end method
