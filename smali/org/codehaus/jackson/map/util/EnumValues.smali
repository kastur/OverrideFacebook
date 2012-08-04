.class public final Lorg/codehaus/jackson/map/util/EnumValues;
.super Ljava/lang/Object;
.source "EnumValues.java"


# instance fields
.field private final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<*",
            "Lorg/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Enum",
            "<*>;",
            "Lorg/codehaus/jackson/io/SerializedString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/EnumValues;->a:Ljava/util/EnumMap;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lorg/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->g(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 53
    if-eqz v0, :cond_1

    .line 55
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 57
    new-instance v5, Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not determine enum constants for Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lorg/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0, p1}, Lorg/codehaus/jackson/map/util/EnumValues;->b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lorg/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->g(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 41
    invoke-virtual {p1, v4}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    .line 42
    new-instance v6, Lorg/codehaus/jackson/io/SerializedString;

    invoke-direct {v6, v5}, Lorg/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-direct {v0, v2}, Lorg/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not determine enum constants for Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lorg/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/EnumValues;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/io/SerializedString;

    return-object v0
.end method
