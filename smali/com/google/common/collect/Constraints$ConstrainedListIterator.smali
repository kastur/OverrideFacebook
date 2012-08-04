.class Lcom/google/common/collect/Constraints$ConstrainedListIterator;
.super Lcom/google/common/collect/ForwardingListIterator;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/Constraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ListIterator;Lcom/google/common/collect/Constraint;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lcom/google/common/collect/Constraint",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingListIterator;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a:Ljava/util/ListIterator;

    .line 290
    iput-object p2, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->b:Lcom/google/common/collect/Constraint;

    .line 291
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a:Ljava/util/ListIterator;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->b:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method protected final synthetic b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->b:Lcom/google/common/collect/Constraint;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Constraint;->checkElement(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/Constraints$ConstrainedListIterator;->a:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 303
    return-void
.end method
