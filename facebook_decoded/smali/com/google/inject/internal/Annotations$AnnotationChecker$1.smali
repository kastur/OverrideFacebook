.class Lcom/google/inject/internal/Annotations$AnnotationChecker$1;
.super Ljava/lang/Object;
.source "Annotations.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Class",
        "<+",
        "Ljava/lang/annotation/Annotation;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/inject/internal/Annotations$AnnotationChecker;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Annotations$AnnotationChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->a:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 68
    iget-object v5, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->a:Lcom/google/inject/internal/Annotations$AnnotationChecker;

    invoke-static {v5}, Lcom/google/inject/internal/Annotations$AnnotationChecker;->a(Lcom/google/inject/internal/Annotations$AnnotationChecker;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;->a(Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
