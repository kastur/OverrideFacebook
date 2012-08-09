.class Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;
.super Ljava/lang/Object;
.source "MapConstraints.java"

# interfaces
.implements Lcom/google/common/collect/Constraint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Constraint",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;->b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkElement(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;->b:Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    iget-object v0, v0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;->a:Lcom/google/common/collect/MapConstraint;

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap$2;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    return-object p1
.end method
