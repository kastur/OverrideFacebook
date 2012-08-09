.class Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;
.super Ljava/lang/Object;
.source "VariableTextLayoutView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;->a:Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView$1;->a:Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;->a(Lcom/facebook/orca/common/ui/widgets/text/VariableTextLayoutView;)Z

    move-result v0

    return v0
.end method
