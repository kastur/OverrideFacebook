.class public Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;
.super Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;
.source "ThreadNameView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView",
        "<",
        "Lcom/facebook/orca/threads/ThreadSummary;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->b()V

    .line 36
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 40
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    .line 41
    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutComputer",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->a:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    return-object v0
.end method
