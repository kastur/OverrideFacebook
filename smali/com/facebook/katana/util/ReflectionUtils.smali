.class public Lcom/facebook/katana/util/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/katana/util/ReflectionUtils$Filter",
            "<TT;>;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;",
            ">;)",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/reflect/AccessibleObject;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/katana/util/ReflectionUtils;->a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V

    .line 32
    return-object v0
.end method

.method private static a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/facebook/katana/util/ReflectionUtils$Filter",
            "<TT;>;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/AccessibleObject;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    sget-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_SUPERCLASSES:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/katana/util/ReflectionUtils;->a(Ljava/lang/Class;Lcom/facebook/katana/util/ReflectionUtils$Filter;Ljava/util/EnumSet;Ljava/util/Map;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_CONSTRUCTORS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    move v0, v1

    .line 49
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 50
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/katana/util/ReflectionUtils$Filter;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    aget-object v4, v2, v0

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_METHODS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move v0, v1

    .line 60
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 61
    aget-object v3, v2, v0

    invoke-interface {p1, v3}, Lcom/facebook/katana/util/ReflectionUtils$Filter;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    aget-object v4, v2, v0

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_4
    sget-object v0, Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;->INCLUDE_FIELDS:Lcom/facebook/katana/util/ReflectionUtils$IncludeFlags;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 71
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 72
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Lcom/facebook/katana/util/ReflectionUtils$Filter;->a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_5

    .line 74
    aget-object v3, v0, v1

    invoke-interface {p3, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    :cond_6
    return-void
.end method
