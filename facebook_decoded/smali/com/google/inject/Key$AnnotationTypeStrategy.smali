.class Lcom/google/inject/Key$AnnotationTypeStrategy;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lcom/google/inject/Key$AnnotationStrategy;


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const-string v0, "annotation type"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    .line 451
    iput-object p2, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->b:Ljava/lang/annotation/Annotation;

    .line 452
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 471
    instance-of v0, p1, Lcom/google/inject/Key$AnnotationTypeStrategy;

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    .line 475
    :cond_0
    check-cast p1, Lcom/google/inject/Key$AnnotationTypeStrategy;

    .line 476
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->b:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/inject/Key$AnnotationTypeStrategy;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
