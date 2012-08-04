.class Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$1;
.super Ljava/lang/Object;
.source "QuickActionPopMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$1;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$1;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
