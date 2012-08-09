.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lorg/codehaus/jackson/map/introspect/MethodFilter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method
