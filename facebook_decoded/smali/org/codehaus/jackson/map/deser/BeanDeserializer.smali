.class public Lorg/codehaus/jackson/map/deser/BeanDeserializer;
.super Lorg/codehaus/jackson/map/deser/StdDeserializer;
.source "BeanDeserializer.java"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JsonCachable;
.end annotation


# instance fields
.field protected final a:Lorg/codehaus/jackson/type/JavaType;

.field protected final b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

.field protected final c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

.field protected final d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

.field protected final e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

.field protected final f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

.field private j:Lorg/codehaus/jackson/map/BeanProperty;

.field private k:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

.field private m:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/codehaus/jackson/map/type/ClassKey;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 213
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 214
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 215
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->j:Lorg/codehaus/jackson/map/BeanProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->j:Lorg/codehaus/jackson/map/BeanProperty;

    .line 216
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 217
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->n:Ljava/util/Map;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->n:Ljava/util/Map;

    .line 218
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    .line 219
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->m:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->m:Z

    .line 220
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 223
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    .line 224
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    .line 225
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    .line 226
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    .line 227
    iget-object v0, p1, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 228
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/deser/CreatorContainer;Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLorg/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            "Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lorg/codehaus/jackson/map/deser/SettableAnyProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/map/deser/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 172
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 173
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 174
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->j:Lorg/codehaus/jackson/map/BeanProperty;

    .line 175
    iput-object p5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 176
    iput-object p6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->n:Ljava/util/Map;

    .line 177
    iput-object p7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    .line 178
    iput-boolean p8, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->m:Z

    .line 179
    iput-object p9, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 182
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b()Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    .line 183
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->c()Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    .line 190
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d()Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    .line 191
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->e()Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_1

    .line 732
    if-eqz p4, :cond_3

    .line 734
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    .line 735
    invoke-virtual {p4}, Lorg/codehaus/jackson/util/TokenBuffer;->g()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 737
    invoke-virtual {v1, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 740
    :goto_0
    if-eqz p1, :cond_0

    .line 741
    invoke-virtual {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/JsonDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    :cond_0
    :goto_1
    return-object v0

    .line 746
    :cond_1
    if-eqz p4, :cond_2

    .line 747
    invoke-direct {p0, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 750
    :goto_2
    if-eqz p1, :cond_0

    .line 751
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p3

    goto :goto_2

    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 701
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->d()V

    .line 704
    invoke-virtual {p3}, Lorg/codehaus/jackson/util/TokenBuffer;->g()Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 705
    :goto_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 706
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 709
    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_0
    return-object p2
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 766
    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->o:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 768
    :goto_0
    monitor-exit p0

    .line 769
    if-eqz v0, :cond_2

    .line 790
    :cond_0
    :goto_1
    return-object v0

    .line 767
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->o:Ljava/util/HashMap;

    new-instance v1, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/JsonDeserializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 773
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->b()Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    .line 774
    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 779
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationContext;->a()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->j:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v1, v2, v0, v3}, Lorg/codehaus/jackson/map/DeserializerProvider;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_0

    .line 782
    monitor-enter p0

    .line 783
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->o:Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 784
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->o:Ljava/util/HashMap;

    .line 786
    :cond_3
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->o:Ljava/util/HashMap;

    new-instance v2, Lorg/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->n:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    goto :goto_0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    move-object v0, p0

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 842
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 844
    :cond_1
    if-eqz p3, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 846
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 847
    if-eqz v1, :cond_3

    instance-of v1, v0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-nez v1, :cond_6

    .line 848
    :cond_3
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 844
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 850
    :cond_5
    if-nez v1, :cond_6

    .line 851
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 852
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 856
    :cond_6
    invoke-static {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method private a(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 887
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 892
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 894
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 895
    :goto_1
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_4

    .line 897
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 894
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 898
    :cond_4
    if-nez v1, :cond_5

    .line 899
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_5

    .line 900
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 903
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method private b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 804
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 807
    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Throwable;)V

    .line 807
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b:Lorg/codehaus/jackson/map/deser/Creator$StringBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/Creator$StringBased;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->m()I

    move-result v0

    if-nez v0, :cond_2

    .line 532
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :cond_2
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON String"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method private r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->b:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->q()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 549
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 544
    :pswitch_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->l:Lorg/codehaus/jackson/map/deser/Creator$NumberBased;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/deser/Creator$NumberBased;->a(J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_1
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "no suitable creator method found to deserialize from JSON Number"

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->a(Ljava/lang/Class;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private s(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 565
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 348
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 350
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 353
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/BeanDeserializer$1;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 370
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 355
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 358
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->r(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->s(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 384
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 385
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 387
    :cond_0
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 388
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 390
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 392
    if-eqz v1, :cond_1

    .line 394
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    invoke-static {v1, p3, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 403
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 407
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_3

    .line 408
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_4
    return-object p3
.end method

.method public final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    .line 690
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/deser/StdDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->c()Ljava/util/Iterator;

    move-result-object v6

    .line 264
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 265
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 267
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, p2, v0, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 271
    :cond_1
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->d()Ljava/lang/String;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_0

    .line 273
    iget-object v0, v2, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a:Lorg/codehaus/jackson/map/JsonDeserializer;

    .line 274
    const/4 v5, 0x0

    .line 276
    instance-of v3, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v3, :cond_2

    .line 277
    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 294
    :goto_1
    if-nez v3, :cond_6

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not handle managed/back reference \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': no back reference property found from type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    instance-of v3, v0, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;

    if-eqz v3, :cond_4

    .line 279
    check-cast v0, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/ContainerDeserializer;->b()Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 280
    instance-of v3, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-nez v3, :cond_3

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not handle managed/back reference \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': value deserializer is of type ContainerDeserializer, but content type is not handled by a BeanDeserializer  (instead it\'s of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_3
    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    .line 286
    const/4 v5, 0x1

    .line 287
    goto :goto_1

    :cond_4
    instance-of v3, v0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    if-eqz v3, :cond_5

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can not handle managed/back reference for abstract types (property "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not handle managed/back reference \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializer, but "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_6
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 300
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 302
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Can not handle managed/back reference \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': back reference type ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") not compatible with managed type ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_7
    iget-object v7, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Lorg/codehaus/jackson/map/util/Annotations;Z)V

    invoke-virtual {v7, v0}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 312
    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 313
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a()Lorg/codehaus/jackson/map/BeanProperty;

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 317
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_a

    .line 319
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->i:Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->e()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v4}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->b()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 321
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 325
    :cond_a
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_c

    .line 326
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 327
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->e()Z

    move-result v2

    if-nez v2, :cond_b

    .line 328
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-static {p1, p2, v2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_2

    .line 332
    :cond_c
    return-void
.end method

.method public b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->k:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_4

    .line 471
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    if-eqz v0, :cond_1

    .line 472
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 517
    :cond_0
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->c:Lorg/codehaus/jackson/map/deser/Creator$Delegating;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$Delegating;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not instantiate abstract type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 483
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No suitable constructor found for type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 486
    :cond_4
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d()Ljava/lang/Object;

    move-result-object v0

    .line 487
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 488
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 491
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 492
    if-eqz v1, :cond_5

    .line 494
    :try_start_0
    invoke-virtual {v1, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    goto :goto_1

    .line 495
    :catch_0
    move-exception v1

    .line 496
    invoke-static {v1, v0, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 503
    :cond_5
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 504
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 505
    :cond_6
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_7

    .line 507
    :try_start_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 508
    :catch_1
    move-exception v1

    .line 509
    invoke-static {v1, v0, v2, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 514
    :cond_7
    invoke-virtual {p0, p1, p2, v0, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final c(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 581
    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->d:Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;

    .line 582
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;

    move-result-object v4

    .line 587
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    .line 588
    :goto_0
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v5, :cond_7

    .line 589
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 592
    invoke-virtual {v3, v1}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 593
    if-eqz v5, :cond_2

    .line 595
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 596
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->f()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 597
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 600
    :try_start_0
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 607
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    .line 659
    :goto_1
    return-object v2

    .line 601
    :catch_0
    move-exception v5

    .line 602
    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6, v1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)V

    .line 588
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 609
    :cond_1
    if-eqz v0, :cond_a

    .line 610
    invoke-direct {p0, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 618
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->e:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap;->a(Ljava/lang/String;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 619
    if-eqz v5, :cond_3

    .line 620
    invoke-virtual {v5, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 626
    :cond_3
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->g:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 627
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 631
    :cond_4
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_5

    .line 632
    iget-object v5, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v6, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->f:Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;->a(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 636
    :cond_5
    if-nez v0, :cond_6

    .line 637
    new-instance v0, Lorg/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->b()Lorg/codehaus/jackson/ObjectCodec;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/codehaus/jackson/util/TokenBuffer;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 639
    :cond_6
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/TokenBuffer;->a(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_2

    .line 646
    :cond_7
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/codehaus/jackson/map/deser/Creator$PropertyBased;->a(Lorg/codehaus/jackson/map/deser/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 651
    if-eqz v0, :cond_9

    .line 653
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v4}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 654
    invoke-direct {p0, v2, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 647
    :catch_1
    move-exception v0

    .line 648
    invoke-direct {p0, v0, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 657
    :cond_8
    invoke-direct {p0, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializer;->a(Lorg/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lorg/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v2, v1

    .line 659
    goto :goto_1

    :cond_a
    move-object v0, v1

    goto :goto_3
.end method
