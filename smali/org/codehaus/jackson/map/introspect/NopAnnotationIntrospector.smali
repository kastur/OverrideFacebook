.class public Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;
.source "NopAnnotationIntrospector.java"


# static fields
.field public static final a:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->a:Lorg/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/BeanProperty;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f(Lorg/codehaus/jackson/map/introspect/Annotated;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g(Lorg/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Lorg/codehaus/jackson/map/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
