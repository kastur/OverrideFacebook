.class Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;
.super Ljava/lang/Object;
.source "QuickActionPopMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    .line 185
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b()V

    .line 186
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$2;->a:Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->b(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;->a(Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V

    .line 190
    :cond_0
    return-void
.end method
