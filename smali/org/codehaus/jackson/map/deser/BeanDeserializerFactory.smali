.class public Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;
.super Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"


# static fields
.field public static final b:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

.field private static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->c:[Ljava/lang/Class;

    .line 187
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    sput-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b:Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/BasicDeserializerFactory;-><init>()V

    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance p1, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    invoke-direct {p1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>()V

    .line 209
    :cond_0
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    .line 210
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    invoke-static {p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 625
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 627
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 634
    const-string v1, "initCause"

    sget-object v2, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->c:[Ljava/lang/Class;

    invoke-virtual {p2, v1, v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Ljava/lang/String;[Ljava/lang/Class;)Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    .line 635
    if-eqz v1, :cond_0

    .line 636
    const-string v2, "cause"

    invoke-direct {p0, p1, p2, v2, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 643
    :cond_0
    const-string v1, "localizedMessage"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    .line 647
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 652
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->a(Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {v0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 660
    instance-of v1, v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v1, :cond_2

    .line 661
    new-instance v1, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;

    check-cast v0, Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    move-object v0, v1

    .line 665
    :cond_2
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 666
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 667
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_1

    .line 670
    :cond_3
    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    new-instance v0, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;

    invoke-direct {v0, p2}, Lorg/codehaus/jackson/map/deser/AbstractDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 614
    :cond_0
    return-object v0

    .line 593
    :cond_1
    invoke-static {p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 594
    invoke-direct {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 596
    invoke-direct {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 598
    invoke-direct {p0, p1, p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 601
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 603
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->a(Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object v0

    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 611
    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 391
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 1
    .parameter

    .prologue
    .line 688
    new-instance v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1051
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->h()V

    .line 1055
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1056
    new-instance v1, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p3}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1057
    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1064
    invoke-virtual {p0, p1, p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v3

    .line 1065
    if-eqz v3, :cond_1

    .line 1066
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v0, v1, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;)V

    .line 1067
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1074
    :goto_0
    return-object v0

    .line 1073
    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/BeanProperty$Std;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v2, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1074
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {v0, v1, p3, v2}, Lorg/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;Lorg/codehaus/jackson/type/JavaType;)V

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1130
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->h()V

    .line 1133
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 1134
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2, p4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1135
    invoke-virtual {p0, p1, v1, p4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1137
    if-eq v2, v1, :cond_1

    .line 1138
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/BeanProperty$Std;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v0

    .line 1143
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1144
    invoke-static {p1, p4, v2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1145
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1146
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)V

    .line 1148
    if-eqz v6, :cond_2

    .line 1149
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1152
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v1

    .line 1153
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1154
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/String;)V

    .line 1156
    :cond_3
    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1093
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->h()V

    .line 1098
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 1099
    new-instance v0, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v0, p3, v1, v2, p4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1100
    invoke-virtual {p0, p1, v1, p4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1102
    if-eq v2, v1, :cond_1

    .line 1103
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/map/BeanProperty$Std;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v0

    .line 1109
    :cond_1
    invoke-virtual {p0, p1, p4, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1110
    invoke-static {p1, p4, v2, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1111
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1112
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1114
    if-eqz v6, :cond_2

    .line 1115
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1118
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v1

    .line 1119
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1120
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Ljava/lang/String;)V

    .line 1122
    :cond_3
    return-object v0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 536
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->g()Lorg/codehaus/jackson/map/AbstractTypeResolver;

    move-result-object v0

    .line 539
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    :cond_0
    return-object v4

    .line 543
    :cond_1
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 545
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    .line 546
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/MapperConfig;Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 550
    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->a()Lorg/codehaus/jackson/type/JavaType;

    .line 552
    :cond_2
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 561
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->a()Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->i()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 888
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->c(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 891
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 892
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->e(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 895
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v2

    .line 897
    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 899
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->l()Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v4

    .line 902
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 905
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    .line 906
    if-eqz v1, :cond_2

    .line 907
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 908
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Z)V

    .line 912
    :cond_2
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v5

    .line 919
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_3
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    .line 924
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->k()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 925
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_4

    .line 927
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_5
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedClass;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 931
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 935
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 938
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 939
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 940
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 941
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 943
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(I)Ljava/lang/Class;

    move-result-object v8

    .line 944
    invoke-static {p1, v8, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 946
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 949
    :cond_8
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 950
    if-eqz v0, :cond_7

    .line 951
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 955
    :cond_9
    if-eqz v4, :cond_a

    .line 956
    invoke-direct {p0, p1, p2, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/SettableAnyProperty;)V

    .line 959
    :cond_a
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 964
    invoke-virtual {p2, v2, v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->c(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 966
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 967
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 968
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    .line 970
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedField;->c()Ljava/lang/Class;

    move-result-object v7

    .line 971
    invoke-static {p1, v7, v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 973
    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 976
    :cond_c
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    .line 977
    if-eqz v0, :cond_b

    .line 978
    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 979
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 990
    :cond_d
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 996
    invoke-virtual {p2, v2, v4}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 998
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 999
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 1001
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->c()Ljava/lang/Class;

    move-result-object v3

    .line 1002
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_f

    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1003
    :cond_f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1006
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1007
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 1008
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1013
    :cond_10
    return-void
.end method

.method private a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual/range {p2 .. p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 736
    invoke-virtual {v7}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->e()I

    move-result v11

    .line 737
    if-lez v11, :cond_0

    .line 740
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v12

    .line 741
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v1

    .line 743
    const/4 v2, 0x1

    if-ne v11, v2, :cond_b

    .line 747
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 748
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    .line 749
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 750
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->b(I)Ljava/lang/Class;

    move-result-object v2

    .line 751
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_3

    .line 752
    if-nez v12, :cond_2

    if-eqz v1, :cond_0

    .line 753
    :cond_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 757
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_6

    .line 758
    :cond_4
    if-nez v12, :cond_5

    if-eqz v1, :cond_0

    .line 759
    :cond_5
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 763
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_7

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_9

    .line 764
    :cond_7
    if-nez v12, :cond_8

    if-eqz v1, :cond_0

    .line 765
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 770
    :cond_9
    if-eqz v12, :cond_0

    .line 771
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    goto :goto_0

    .line 777
    :cond_a
    const/4 v1, 0x1

    new-array v8, v1, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 778
    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v8, v9

    .line 779
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 781
    :cond_b
    if-nez v12, :cond_c

    if-eqz v1, :cond_0

    .line 782
    :cond_c
    const/4 v2, 0x0

    .line 788
    const/4 v1, 0x0

    .line 789
    new-array v13, v11, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 790
    const/4 v5, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v5, v11, :cond_13

    .line 791
    invoke-virtual {v7, v5}, Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    .line 792
    if-nez v6, :cond_f

    const/4 v4, 0x0

    .line 795
    :goto_2
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    const/4 v1, 0x1

    :goto_3
    or-int v8, v2, v1

    .line 796
    if-nez v8, :cond_11

    const/4 v1, 0x1

    :goto_4
    or-int v9, v3, v1

    .line 797
    if-eqz v8, :cond_12

    if-nez v9, :cond_e

    if-eqz v12, :cond_12

    .line 798
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Argument #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :cond_f
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 795
    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    .line 796
    :cond_11
    const/4 v1, 0x0

    goto :goto_4

    :cond_12
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    .line 800
    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    aput-object v1, v13, v5

    .line 790
    add-int/lit8 v5, v5, 0x1

    move v2, v8

    move v3, v9

    goto :goto_1

    .line 802
    :cond_13
    if-eqz v3, :cond_0

    .line 803
    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v13}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 806
    :cond_14
    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1208
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    if-eqz v0, :cond_0

    .line 1210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not deserialize Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") as a Bean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1212
    :cond_0
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not deserialize Proxy class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as a Bean"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_1
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1217
    if-eqz v0, :cond_2

    .line 1218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not deserialize Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") as a Bean"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1220
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Lorg/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1230
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1231
    if-nez v0, :cond_0

    .line 1232
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 1233
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->e(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1235
    if-nez v0, :cond_0

    .line 1236
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic a()[Lorg/codehaus/jackson/map/Deserializers;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a:[Lorg/codehaus/jackson/map/Deserializers;

    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/deser/CreatorContainer;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 701
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    .line 702
    new-instance v5, Lorg/codehaus/jackson/map/deser/CreatorContainer;

    invoke-direct {v5, p2, v0}, Lorg/codehaus/jackson/map/deser/CreatorContainer;-><init>(Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 703
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v4

    .line 707
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->a()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->h()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_1

    .line 710
    if-eqz v0, :cond_0

    .line 711
    invoke-static {v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Member;)V

    .line 714
    :cond_0
    invoke-virtual {v5, v1}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Ljava/lang/reflect/Constructor;)V

    .line 719
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->i()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 720
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 721
    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->d(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 723
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 725
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 726
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V

    .line 727
    return-object v5
.end method

.method private b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1171
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {p4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->h()V

    .line 1175
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->e()Lorg/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1179
    new-instance v1, Lorg/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v1, p3, v0, v2, p4}, Lorg/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1181
    invoke-virtual {p0, p1, p4, v1}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v6

    .line 1182
    invoke-static {p1, p4, v0, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 1183
    invoke-virtual {v2}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codehaus/jackson/map/TypeDeserializer;

    .line 1184
    new-instance v0, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->d()Lorg/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v1, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    .line 1186
    if-eqz v6, :cond_1

    .line 1187
    invoke-virtual {v0, v6}, Lorg/codehaus/jackson/map/deser/SettableBeanProperty;->a(Lorg/codehaus/jackson/map/JsonDeserializer;)V

    .line 1189
    :cond_1
    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    .line 510
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/AbstractTypeResolver;

    .line 512
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 527
    :cond_1
    :goto_0
    return-object v0

    .line 520
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->g()Lorg/codehaus/jackson/map/AbstractTypeResolver;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/AbstractTypeResolver;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 527
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1026
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->n()Ljava/util/Map;

    move-result-object v0

    .line 1027
    if-eqz v0, :cond_1

    .line 1028
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1029
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1030
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1031
    instance-of v3, v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v3, :cond_0

    .line 1032
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-direct {p0, p1, p2, v3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lorg/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-direct {p0, p1, p2, v3, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerBuilder;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1040
    :cond_1
    return-void
.end method

.method private b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/introspect/VisibilityChecker;Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/deser/CreatorContainer;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/introspect/VisibilityChecker",
            "<*>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            "Lorg/codehaus/jackson/map/deser/CreatorContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 814
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 815
    invoke-virtual {v6}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->e()I

    move-result v8

    .line 816
    if-lez v8, :cond_0

    .line 819
    invoke-virtual {p4, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    .line 821
    const/4 v1, 0x1

    if-ne v8, v1, :cond_a

    .line 825
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 827
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->b(I)Ljava/lang/Class;

    move-result-object v1

    .line 828
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_3

    .line 829
    if-nez v0, :cond_2

    invoke-interface {p3, v6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    :cond_2
    invoke-virtual {p5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 834
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_6

    .line 835
    :cond_4
    if-nez v0, :cond_5

    invoke-interface {p3, v6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    :cond_5
    invoke-virtual {p5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 840
    :cond_6
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_9

    .line 841
    :cond_7
    if-nez v0, :cond_8

    invoke-interface {p3, v6}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    :cond_8
    invoke-virtual {p5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 846
    :cond_9
    invoke-virtual {p4, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p5, v6}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    goto :goto_0

    .line 855
    :cond_a
    invoke-virtual {p4, v6}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->k(Lorg/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    :cond_b
    new-array v9, v8, [Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 861
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_e

    .line 862
    invoke-virtual {v6, v4}, Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;->a(I)Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v5

    .line 863
    invoke-virtual {p4, v5}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v3

    .line 865
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 866
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Argument #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of factory method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 868
    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v9, v4

    .line 861
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 870
    :cond_e
    invoke-virtual {p5, v6, v9}, Lorg/codehaus/jackson/map/deser/CreatorContainer;->a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;[Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 872
    :cond_f
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 376
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Class;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 326
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0, p1, p3}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 421
    :cond_0
    invoke-virtual {p1, p3}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 422
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 467
    :cond_1
    :goto_0
    return-object v0

    .line 427
    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;->f()Lorg/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p3, v2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 430
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object v4, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 433
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 434
    if-nez v0, :cond_1

    .line 441
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    invoke-direct {p0, p1, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_3
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    invoke-direct {p0, p1, v4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 450
    if-eqz v2, :cond_4

    .line 454
    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/map/DeserializationConfig;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 455
    invoke-direct {p0, p1, v2, v0, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_4
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->c(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 461
    if-nez v0, :cond_1

    .line 466
    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Ljava/lang/Class;)Z

    .line 467
    invoke-direct {p0, p1, v1, v4, p4}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v4, v0

    move-object v1, p3

    goto :goto_1
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/ArrayType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/type/ArrayType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 277
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/map/type/ArrayType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    .line 283
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/CollectionLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
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
            "Lorg/codehaus/jackson/map/type/CollectionLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 311
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/map/type/CollectionLikeType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/CollectionType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
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
            "Lorg/codehaus/jackson/map/type/CollectionType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 294
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/map/type/CollectionType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/MapLikeType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
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
            "Lorg/codehaus/jackson/map/type/MapLikeType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 361
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/map/type/MapLikeType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 367
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/map/type/MapType;Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/map/DeserializerProvider;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;Lorg/codehaus/jackson/map/BeanProperty;Lorg/codehaus/jackson/map/KeyDeserializer;Lorg/codehaus/jackson/map/TypeDeserializer;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/JsonDeserializer;
    .locals 2
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
            "Lorg/codehaus/jackson/map/type/MapType;",
            "Lorg/codehaus/jackson/map/DeserializationConfig;",
            "Lorg/codehaus/jackson/map/DeserializerProvider;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lorg/codehaus/jackson/map/BeanProperty;",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            "Lorg/codehaus/jackson/map/TypeDeserializer;",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;)",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->a()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/Deserializers;

    .line 343
    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/Deserializers;->a(Lorg/codehaus/jackson/map/type/MapType;)Lorg/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 485
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    return-object p2

    .line 493
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v1

    .line 494
    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    .line 495
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 496
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid abstract type resolution from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": latter is not a subtype of former"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object p2, v0

    .line 499
    goto :goto_0
.end method

.method public final b(Lorg/codehaus/jackson/map/DeserializationConfig;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/KeyDeserializer;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationConfig;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/map/BeanDescription;

    .line 259
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/BeanDeserializerFactory;->d:Lorg/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/DeserializerFactory$Config;->b()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/map/KeyDeserializers;

    .line 260
    invoke-interface {v0, p2}, Lorg/codehaus/jackson/map/KeyDeserializers;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/KeyDeserializer;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 266
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
