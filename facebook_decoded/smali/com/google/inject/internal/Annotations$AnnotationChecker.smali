.class Lcom/google/inject/internal/Annotations$AnnotationChecker;
.super Ljava/lang/Object;
.source "Annotations.java"


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Annotations$AnnotationChecker$1;-><init>(Lcom/google/inject/internal/Annotations$AnnotationChecker;)V

    iput-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->b:Lcom/google/common/base/Function;

    .line 76
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->e()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->b:Lcom/google/common/base/Function;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->c:Ljava/util/Map;

    .line 83
    iput-object p1, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->a:Ljava/util/Collection;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/google/inject/internal/Annotations$AnnotationChecker;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->a:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/inject/internal/Annotations$AnnotationChecker;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
