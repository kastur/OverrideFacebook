.class public abstract Lorg/codehaus/jackson/map/DeserializationContext;
.super Ljava/lang/Object;
.source "DeserializationContext.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/map/DeserializationConfig;

.field private b:I


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/DeserializationConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/codehaus/jackson/map/DeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    .line 34
    iget v0, p1, Lorg/codehaus/jackson/map/DeserializationConfig;->a:I

    iput v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->b:I

    .line 35
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public final a()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract a(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
.end method

.method public final a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V
.end method

.method public abstract a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public final a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->b:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationContext;->d()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/Base64Variant;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-static {}, Lorg/codehaus/jackson/map/DeserializationConfig;->e()Lorg/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract d()Lorg/codehaus/jackson/JsonParser;
.end method

.method public final e()Lorg/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/codehaus/jackson/map/DeserializationContext;->a:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->f()Lorg/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Lorg/codehaus/jackson/map/util/ObjectBuffer;
.end method

.method public abstract g()Lorg/codehaus/jackson/map/util/ArrayBuilders;
.end method
