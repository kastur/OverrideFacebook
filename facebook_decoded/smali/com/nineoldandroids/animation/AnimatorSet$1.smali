.class Lcom/nineoldandroids/animation/AnimatorSet$1;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# instance fields
.field private a:Z

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    iput-object p2, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->a:Z

    return-void
.end method


# virtual methods
.method public final b(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->a:Z

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 516
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 517
    iget-object v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;

    .line 518
    iget-object v3, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/Animator;->a()V

    .line 519
    iget-object v3, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->c:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-static {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->a(Lcom/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v0, Lcom/nineoldandroids/animation/AnimatorSet$Node;->a:Lcom/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 522
    :cond_0
    return-void
.end method

.method public final c(Lcom/nineoldandroids/animation/Animator;)V
    .locals 1
    .parameter

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/AnimatorSet$1;->a:Z

    .line 512
    return-void
.end method
