.class final Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$1;
.super Ljava/lang/Object;
.source "JMCachingDictDestination.java"

# interfaces
.implements Lcom/facebook/katana/util/ReflectionUtils$Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/ReflectionUtils$Filter",
        "<",
        "Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/reflect/AccessibleObject;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;
    .locals 5
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 61
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 63
    instance-of v4, v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    if-eqz v4, :cond_0

    .line 64
    check-cast v0, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    .line 68
    :goto_1
    return-object v0

    .line 61
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$1;->b(Ljava/lang/reflect/AccessibleObject;)Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination$SerializableJsonObject;

    move-result-object v0

    return-object v0
.end method
