.class Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;
.super Ljava/lang/Object;
.source "MuteWarningView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

.field private synthetic b:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->b:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    iput-object p2, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->b:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->b(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->a:Lcom/facebook/orca/common/ui/animation/CanvasCaptureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->b:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->a(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;Z)Z

    .line 213
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/MuteWarningView$3;->b:Lcom/facebook/orca/common/ui/widgets/MuteWarningView;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/widgets/MuteWarningView;->c(Lcom/facebook/orca/common/ui/widgets/MuteWarningView;)V

    .line 214
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    return-void
.end method
