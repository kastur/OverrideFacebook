.class final Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;
.super Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 40
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->a:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 41
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->b:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->a:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->b:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/SerializerProvider;->a()Ljava/lang/Class;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->b:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->a:Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->a(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 57
    :cond_1
    return-void
.end method
