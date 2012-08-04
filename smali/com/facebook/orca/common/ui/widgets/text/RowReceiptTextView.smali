.class public Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;
.super Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;
.source "RowReceiptTextView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->b()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->b()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->b()V

    .line 61
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Landroid/content/Context;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    .line 65
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    .line 66
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
            "Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextView;->a:Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    return-object v0
.end method
