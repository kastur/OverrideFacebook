.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
.super Ljava/lang/Object;
.source "BeanDeserializerBuilder.java"


# instance fields
.field private a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/codehaus/jackson/map/deser/CreatorContainer;

.field private f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field private g:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v5, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V

    .line 166
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a()V

    .line 168
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->e:Lorg/codehaus/jackson/map/deser/CreatorContainer;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->c:Ljava/util/HashMap;

    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->d:Ljava/util/HashSet;

    iget-boolean v8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->g:Z

    iget-object v9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/CreatorContainer;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->d:Ljava/util/HashSet;

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->c:Ljava/util/HashMap;

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->e:Lorg/codehaus/jackson/map/deser/CreatorContainer;

    .line 83
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "_anySetter already set to non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 151
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 101
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a:Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-boolean p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->g:Z

    .line 155
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
