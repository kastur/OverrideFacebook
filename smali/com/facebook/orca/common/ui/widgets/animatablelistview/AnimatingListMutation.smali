.class public Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;
.super Ljava/lang/Object;
.source "AnimatingListMutation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->b:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->c:I

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->b:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 49
    iput p3, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->c:I

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->a:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation;->c:I

    return v0
.end method
