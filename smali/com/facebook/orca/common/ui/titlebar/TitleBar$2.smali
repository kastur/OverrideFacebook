.class Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-static {v0}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;

    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-static {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->c(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/common/ui/titlebar/TitleBar$2;->a:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-static {v2}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->b(Lcom/facebook/orca/common/ui/titlebar/TitleBar;)Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;-><init>(Landroid/view/View;Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V

    .line 149
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a(I)V

    .line 150
    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;->a()V

    .line 152
    :cond_0
    return-void
.end method
