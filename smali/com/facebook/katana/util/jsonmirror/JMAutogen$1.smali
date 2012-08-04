.class final Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;
.super Ljava/lang/Object;
.source "JMAutogen.java"

# interfaces
.implements Lcom/facebook/katana/util/ReflectionUtils$Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/katana/util/ReflectionUtils$Filter",
        "<",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/annotation/Annotation;
    .locals 6
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 213
    const/4 v1, 0x0

    .line 215
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v1, v3, v2

    .line 217
    instance-of v5, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$DynamicKeyDictType;

    if-nez v5, :cond_0

    instance-of v5, v1, Lcom/facebook/katana/util/jsonmirror/JMAutogen$EscapedObjectType;

    if-eqz v5, :cond_2

    .line 222
    :cond_0
    if-eqz v0, :cond_1

    .line 223
    new-instance v0, Lcom/facebook/katana/util/jsonmirror/JMFatalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has more than one JM annotation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/jsonmirror/JMFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    .line 215
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 231
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/katana/util/jsonmirror/JMAutogen$1;->b(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
