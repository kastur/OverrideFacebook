.class public final Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
.super Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.source "BasicClassIntrospector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;->a(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 91
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 95
    goto :goto_0
.end method
