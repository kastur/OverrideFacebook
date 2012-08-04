.class public Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"


# instance fields
.field private final a:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    .line 67
    iput-object p2, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 2
    .parameter

    .prologue
    .line 70
    new-instance v0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;-><init>(Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 2
    .parameter

    .prologue
    .line 71
    new-instance v0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    sget-object v1, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    invoke-direct {v0, v1, p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;-><init>(Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->MANAGED_REFERENCE:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->a:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    sget-object v1, Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;->BACK_REFERENCE:Lorg/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
