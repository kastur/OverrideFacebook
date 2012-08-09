.class public final Lorg/codehaus/jackson/map/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"


# static fields
.field private static a:Lorg/codehaus/jackson/map/type/TypeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final b:[Lorg/codehaus/jackson/type/JavaType;


# instance fields
.field private c:[Lorg/codehaus/jackson/map/type/TypeModifier;

.field private d:Lorg/codehaus/jackson/map/type/TypeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/type/TypeFactory;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    sput-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->b:[Lorg/codehaus/jackson/type/JavaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/TypeParser;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->d:Lorg/codehaus/jackson/map/type/TypeParser;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->c:[Lorg/codehaus/jackson/map/type/TypeModifier;

    .line 73
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 977
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 978
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->d()Ljava/lang/Class;

    move-result-object v1

    .line 979
    if-ne v1, p1, :cond_0

    .line 992
    :goto_0
    return-object v0

    .line 983
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 984
    if-eqz v1, :cond_1

    .line 985
    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 986
    if-eqz v1, :cond_1

    .line 987
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->b(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 988
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->a(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lorg/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
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
    const/4 v1, 0x0

    .line 644
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p0, v1, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 622
    array-length v0, v1

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter type mismatch for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters, was given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_0
    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 627
    const/4 v0, 0x0

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 628
    aget-object v4, v1, v0

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p0, v2, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    .line 631
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 199
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 844
    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 802
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 803
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 804
    if-nez v5, :cond_1

    move v4, v3

    .line 808
    :goto_0
    if-nez v4, :cond_2

    .line 809
    sget-object v1, Lorg/codehaus/jackson/map/type/TypeFactory;->b:[Lorg/codehaus/jackson/type/JavaType;

    .line 818
    :cond_0
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 819
    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 820
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 821
    array-length v2, v1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    .line 822
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find 2 type parameters for Map class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 804
    :cond_1
    array-length v1, v5

    move v4, v1

    goto :goto_0

    .line 811
    :cond_2
    new-array v1, v4, [Lorg/codehaus/jackson/type/JavaType;

    move v2, v3

    .line 812
    :goto_1
    if-ge v2, v4, :cond_0

    .line 813
    aget-object v6, v5, v2

    invoke-virtual {p0, v6, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v6

    aput-object v6, v1, v2

    .line 812
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 824
    :cond_3
    aget-object v2, v1, v3

    aget-object v1, v1, v7

    invoke-static {v0, v2, v1}, Lorg/codehaus/jackson/map/type/MapType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .line 837
    :goto_2
    return-object v0

    .line 826
    :cond_4
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 827
    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 828
    const-class v2, Ljava/util/Collection;

    invoke-virtual {p0, v1, v2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 829
    array-length v2, v1

    if-eq v2, v7, :cond_5

    .line 830
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find 1 type parameter for Collection class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_5
    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/type/CollectionType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_2

    .line 834
    :cond_6
    if-nez v4, :cond_7

    .line 835
    new-instance v1, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_2

    .line 837
    :cond_7
    invoke-static {v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 853
    if-nez p2, :cond_1

    .line 854
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 858
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 860
    if-nez v0, :cond_0

    .line 869
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 884
    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/type/TypeBindings;->b(Ljava/lang/String;)V

    .line 885
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 898
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->c(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 387
    if-nez v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object p3, v0

    move-object v0, v1

    .line 392
    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->a()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 393
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->a()Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->d()Ljava/lang/Class;

    move-result-object v2

    .line 395
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 396
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->c()Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    .line 398
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 399
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 400
    array-length v5, v3

    .line 401
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 402
    aget-object v6, v4, v2

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    .line 403
    sget-object v7, Lorg/codehaus/jackson/map/type/TypeFactory;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    aget-object v8, v3, v2

    invoke-virtual {v7, v8, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v7

    .line 404
    invoke-virtual {v0, v6, v7}, Lorg/codehaus/jackson/map/type/TypeBindings;->a(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    :cond_2
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {p3}, Lorg/codehaus/jackson/map/type/TypeBindings;->b()[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 997
    new-instance v0, Lorg/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 998
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->d()Ljava/lang/Class;

    move-result-object v2

    .line 999
    if-ne v2, p1, :cond_0

    .line 1026
    :goto_0
    return-object v0

    .line 1003
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1006
    if-eqz v3, :cond_2

    .line 1007
    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 1008
    invoke-static {v5, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v5

    .line 1009
    if-eqz v5, :cond_1

    .line 1010
    invoke-virtual {v5, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->b(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1011
    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/map/type/HierarchicType;->a(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1007
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1017
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1018
    if-eqz v1, :cond_3

    .line 1019
    invoke-static {v1, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v1

    .line 1020
    if-eqz v1, :cond_3

    .line 1021
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/HierarchicType;->b(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    .line 1022
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/type/HierarchicType;->a(Lorg/codehaus/jackson/map/type/HierarchicType;)V

    goto :goto_0

    .line 1026
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->a()Lorg/codehaus/jackson/map/type/TypeFactory;

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeFactory;->d:Lorg/codehaus/jackson/map/type/TypeParser;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeParser;->a(Ljava/lang/String;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 972
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()Lorg/codehaus/jackson/type/JavaType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method private c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
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
    .line 903
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 905
    if-nez v0, :cond_0

    .line 906
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    .line 912
    :goto_0
    return-object v0

    .line 909
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 910
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Strange Map type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p1, v1, v0}, Lorg/codehaus/jackson/map/type/MapType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
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
    .line 917
    const-class v0, Ljava/util/Collection;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/Class;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 919
    if-nez v0, :cond_0

    .line 920
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    .line 926
    :goto_0
    return-object v0

    .line 923
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 924
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Strange Collection type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p3}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/Class;Ljava/util/List;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/type/JavaType;",
            ">;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 757
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 784
    :goto_0
    return-object v0

    .line 760
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 763
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 766
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 767
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    .line 768
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/jackson/type/JavaType;

    .line 770
    :goto_1
    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/map/type/MapType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_2
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->c()Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    goto :goto_1

    .line 772
    :cond_3
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_4
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 775
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 776
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/type/JavaType;

    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/CollectionType;->a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_5
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 781
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 783
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/codehaus/jackson/type/JavaType;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/type/JavaType;

    .line 784
    invoke-static {p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;[Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 293
    instance-of v0, p1, Lorg/codehaus/jackson/map/type/SimpleType;

    if-eqz v0, :cond_4

    .line 295
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    sget-object v0, Lorg/codehaus/jackson/map/type/TypeFactory;->a:Lorg/codehaus/jackson/map/type/TypeFactory;

    new-instance v1, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->t()Ljava/lang/Object;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->e(Ljava/lang/Object;)V

    .line 309
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->u()Ljava/lang/Object;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_3

    .line 311
    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 317
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Lorg/codehaus/jackson/type/JavaType;->f(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
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
    .line 729
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/map/type/ArrayType;->a(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    .line 748
    :goto_0
    return-object v0

    .line 735
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 742
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 748
    :cond_3
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/reflect/Type;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 453
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 454
    check-cast p1, Ljava/lang/Class;

    .line 458
    if-nez p2, :cond_0

    .line 459
    new-instance v0, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 461
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    .line 464
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 465
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/ParameterizedType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 468
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/GenericArrayType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 471
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/TypeVariable;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    .line 474
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/reflect/WildcardType;Lorg/codehaus/jackson/map/type/TypeBindings;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 477
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->n()Ljava/lang/Class;

    move-result-object v0

    .line 359
    if-ne v0, p2, :cond_2

    .line 361
    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->h()I

    move-result v2

    .line 362
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 375
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    new-array v0, v2, [Lorg/codehaus/jackson/type/JavaType;

    .line 364
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 365
    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/type/JavaType;->b(I)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    aput-object v3, v0, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    :cond_2
    new-instance v1, Lorg/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v1, p0, p1}, Lorg/codehaus/jackson/map/type/TypeBindings;-><init>(Lorg/codehaus/jackson/map/type/TypeFactory;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-direct {p0, v0, p2, v1}, Lorg/codehaus/jackson/map/type/TypeFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lorg/codehaus/jackson/map/type/TypeBindings;)[Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method
