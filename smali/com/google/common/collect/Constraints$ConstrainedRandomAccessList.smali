.class Lcom/google/common/collect/Constraints$ConstrainedRandomAccessList;
.super Lcom/google/common/collect/Constraints$ConstrainedList;
.source "Constraints.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Constraints$ConstrainedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Constraints$ConstrainedList;-><init>(Ljava/util/List;Lcom/google/common/collect/Constraint;)V

    .line 265
    return-void
.end method
