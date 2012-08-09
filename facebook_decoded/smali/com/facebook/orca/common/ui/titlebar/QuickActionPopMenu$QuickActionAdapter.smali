.class Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QuickActionPopMenu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    sget v0, Lcom/facebook/orca/R$layout;->orca_quick_action_menu_item:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 78
    iput-object p2, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;->a:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;->b:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    sget v1, Lcom/facebook/orca/R$layout;->orca_quick_action_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 86
    sget v0, Lcom/facebook/orca/R$id;->menu_item_caption:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$QuickActionAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;

    .line 88
    invoke-virtual {v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    return-object v2
.end method
